/*
 * VpcCFGMain.java - This file is part of the Jakstab project.
 * Copyright 2007-2015 Johannes Kinder <jk@jakstab.org>
 *
 * This code is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License version 2 only, as
 * published by the Free Software Foundation.
 *
 * This code is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
 * version 2 for more details (a copy is included in the LICENSE file that
 * accompanied this code).
 *
 * You should have received a copy of the GNU General Public License version
 * 2 along with this work; if not, see <http://www.gnu.org/licenses/>.
 */

package org.jakstab;

import java.io.*;

import org.jakstab.transformation.DeadCodeElimination;
import org.jakstab.transformation.VpcCfgReconstruction;
import org.jakstab.util.*;
import org.jakstab.analysis.*;
import org.jakstab.analysis.explicit.BoundedAddressTracking;
import org.jakstab.cfa.ControlFlowGraph;
import org.jakstab.cfa.IntraproceduralCFG;
import org.jakstab.loader.*;
import org.jakstab.ssl.Architecture;

import antlr.ANTLRException;

public class VpcCfgMain {

	private static Logger logger = Logger.getLogger(VpcCfgMain.class);;

	private static volatile Algorithm activeAlgorithm;
	private static volatile Thread mainThread;
	
	public static void main(String[] args) {

		mainThread = Thread.currentThread();
		StatsTracker stats = StatsTracker.getInstance();

		// Parse command line
		Options.parseOptions(args);

		Main.logBanner();

		/////////////////////////
		// Parse SSL file

		Architecture arch;
		try {
			arch = new Architecture(Options.sslFilename.getValue());
		} catch (IOException e) {
			logger.fatal("Unable to open SSL file!", e);
			return;
		} catch (ANTLRException e)  {
			logger.fatal("Error parsing SSL file!", e);
			return;
		}

		long overallStartTime = System.currentTimeMillis();

		/////////////////////////
		// Parse executable

		Program program = Program.createProgram(arch);

		File mainFile = new File(Options.mainFilename).getAbsoluteFile();

		String baseFileName = null; 

		try {
			// Load additional modules
			for (String moduleName : Options.moduleFilenames) {
				logger.warn("Parsing " + moduleName + "...");
				File moduleFile = new File(moduleName).getAbsoluteFile();
				program.loadModule(moduleFile);
			}
			// Load main module last
			logger.warn("Parsing " + Options.mainFilename + "...");
			program.loadMainModule(mainFile);

			// Use main module as base name if we have none yet
			if (baseFileName == null)
				baseFileName = getBaseFileName(mainFile);

		} catch (FileNotFoundException e) {
			logger.fatal("File not found: " + e.getMessage());
			return;
		} catch (IOException e) {
			logger.fatal("IOException while parsing executable!", e);
			//e.printStackTrace();
			return;
		} catch (BinaryParseException e) {
			logger.fatal("Error during parsing!", e);
			//e.printStackTrace();
			return;
		}
		logger.info("Finished parsing executable.");

		// Add surrounding "%DF := 1; call entrypoint; halt;" 
		program.installHarness(new DefaultHarness());

		int slashIdx = baseFileName.lastIndexOf('\\');
		if (slashIdx < 0) slashIdx = baseFileName.lastIndexOf('/');
		if (slashIdx < 0) slashIdx = -1;
		slashIdx++;
		stats.record(baseFileName.substring(slashIdx));
		stats.record(Main.version);

		// Catches control-c and System.exit
		Thread shutdownThread = new Thread() {
			@Override
			public void run() {
				if (mainThread.isAlive() && activeAlgorithm != null) {
					//stop = true; // Used for CFI checks
					activeAlgorithm.stop();
					try {
						mainThread.join();
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				}
			}
		};
		Runtime.getRuntime().addShutdownHook(shutdownThread);

		// Add shutdown on return pressed for eclipse
		if (!Options.background.getValue() && System.console() == null) {
			logger.info("No console detected (eclipse?). Press return to terminate analysis and print statistics.");
			Thread eclipseShutdownThread = new Thread() { 
				public void run() { 
					try { 
						System.in.read(); 
					} catch (IOException e) { 
						e.printStackTrace(); 
					} 
					System.exit(1);
				} 
			};
			eclipseShutdownThread.start();
		}

		// Necessary to stop shutdown thread on exceptions being thrown
		try {

			//VpcTrackingAnalysis.useAsVpc = new MemoryReference(MemoryRegion.STACK, -1092, 32);


			// Always do VPC sensitive BAT here
			Options.cpas.setValue("v");

			// No need to be sound

			logger.error(Characters.DOUBLE_LINE_FULL_WIDTH);

			ControlFlowReconstruction cfr = new ControlFlowReconstruction(program);
			try {
				runAlgorithm(cfr);
			} catch (RuntimeException r) {
				logger.error("!! Runtime exception during Control Flow Reconstruction! Trying to shut down gracefully.");
				r.printStackTrace();
			}

			if (!cfr.isCompleted()) {
				logger.error("WARNING: Analysis interrupted, CFG might be incomplete!");
			}

			ProgramGraphWriter graphWriter = new ProgramGraphWriter(program);
			graphWriter.writeDisassembly(baseFileName + "_jak.asm");

			String procName = Options.procedureGraph.getValue();			
			
			ControlFlowGraph procCFG = null;
			if (!procName.equals("")) {
				procCFG = new IntraproceduralCFG(program.getCFG(), procName);
				if (procCFG.getBasicBlocks().size() == 0)
					procCFG = null;
				else
					graphWriter.writeAssemblyBasicBlockGraph(procCFG, baseFileName + "_" + procName + "_asmcfg");
			}
			
			logger.error("Reconstructing VPC CFG");
			
			VpcCfgReconstruction vcfgRec = new VpcCfgReconstruction(cfr.getART());
			vcfgRec.run();
			
			if (procCFG != null) {
				procCFG = new IntraproceduralCFG(vcfgRec.getTransformedCfg(), procName);

				if (Options.simplifyVCFG.getValue() > 0) {
					DeadCodeElimination dce = new DeadCodeElimination(procCFG.getEdges(), true);
					dce.run();
					procCFG = new ControlFlowGraph(dce.getCFA());
				}
			}

			//vcfgRec.simplifyCFG();
			
			graphWriter.writeAssemblyBasicBlockGraph(vcfgRec.getTransformedCfg(), baseFileName + "_asmvcfg");
			//graphWriter.writeAssemblyVCFG(baseFileName + "_asmvcfg2", vcfgRec);
			if (procCFG != null) {
				graphWriter.writeAssemblyBasicBlockGraph(procCFG, baseFileName + "_" + procName + "_asmvcfg");
				graphWriter.writeTopologyGraph(procCFG, baseFileName + "_" + procName + "_vtopo");
			}
			//graphWriter.writeVpcBasicBlockGraph(baseFileName + "_vcfg", vcfgRec);

			long overallEndTime = System.currentTimeMillis();			

			logger.error("Total runtime for reconstruction: " + String.format("%8dms", (overallEndTime - overallStartTime)));			

			stats.record(Options.basicBlocks.getValue() ? "y" : "n");
			stats.record(Options.summarizeRep.getValue() ? "y" : "n" );
			stats.record(BoundedAddressTracking.varThreshold.getValue());
			stats.record(BoundedAddressTracking.heapThreshold.getValue());
			stats.record(Math.round((overallEndTime - overallStartTime)/1000.0));
			stats.print();

			// Kills the keypress-monitor-thread.
			try {
				Runtime.getRuntime().removeShutdownHook(shutdownThread);
				System.exit(0);
			} catch (IllegalStateException e) {
				// Happens when shutdown has already been initiated by Ctrl-C or Return
			}
		} catch (Throwable e) {
			System.out.flush();
			e.printStackTrace();
			Runtime.getRuntime().removeShutdownHook(shutdownThread);
			// Kills eclipse shutdown thread
			System.exit(1);
		}

	}


	private static void runAlgorithm(Algorithm a) {
		activeAlgorithm = a;
		a.run();
		activeAlgorithm = null;
	}

	@SuppressWarnings("unused")
	private static final void appendToFile(String filename, String text) {
		try {
			FileWriter statsFile = new FileWriter(filename, true);
			statsFile.append(text);
			statsFile.close();
		} catch (Exception e) {
			logger.error("Cannot write to outputfile!", e);
		}
	}
	
	private static String getBaseFileName(File file) {
		String baseFileName = file.getAbsolutePath();
		// Get name of the analyzed file without file extension if it has one
		if (file.getName().contains(".")) { 
			int dotIndex = file.getPath().lastIndexOf('.');
			if (dotIndex > 0) {
				baseFileName = file.getPath().substring(0, dotIndex);
			}
		}
		return baseFileName;
	}

}
