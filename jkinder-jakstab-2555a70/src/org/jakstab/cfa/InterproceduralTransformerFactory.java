/*
 * PessimisticStateTransformerFactory.java - This file is part of the Jakstab project.
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
package org.jakstab.cfa;

import java.util.Iterator;
import java.util.Set;

import org.jakstab.Options;
import org.jakstab.Program;
import org.jakstab.analysis.AbstractState;
import org.jakstab.asm.AbsoluteAddress;
import org.jakstab.rtl.Context;
import org.jakstab.cfa.RTLLabel;
import org.jakstab.rtl.expressions.ExpressionFactory;
import org.jakstab.rtl.expressions.RTLExpression;
import org.jakstab.rtl.expressions.RTLNumber;
import org.jakstab.rtl.statements.*;
import org.jakstab.util.FastSet;
import org.jakstab.util.Logger;
import org.jakstab.util.Tuple;

/**
 * Provides state transformers which treat call/returns in an interprocedural fashion.
 * 
 * @author Johannes Kinder
 */
public class InterproceduralTransformerFactory extends ResolvingTransformerFactory {

	private static final Logger logger = Logger.getLogger(InterproceduralTransformerFactory.class);

	@Override
	public Set<CFAEdge> resolveGoto(final AbstractState a, final RTLGoto stmt) {

		assert stmt.getCondition() != null;

		Set<CFAEdge> results = new FastSet<CFAEdge>();
		
		// Add CallReturn edge for interprocedural analyses 
		if (stmt.getType() == RTLGoto.Type.CALL) {
			RTLLabel nextLabel = stmt.getNextLabel();

			if (Program.getProgram().getHarness().contains(stmt.getAddress())) {
				nextLabel = new RTLLabel(Program.getProgram().getHarness().getFallthroughAddress(stmt.getAddress()));
			}

			if (nextLabel != null) {
				RTLCallReturn callReturn = new RTLCallReturn();
				callReturn.setLabel(stmt.getLabel());
				callReturn.setNextLabel(nextLabel);
				results.add(new CFAEdge(stmt.getLabel(), nextLabel, callReturn));
			} else {
				logger.warn(stmt.getLabel() + ": CALL instruction has no fall-through address, generating no callReturn edge!");
			}
		} 


		Set<Tuple<RTLNumber>> valuePairs = a.projectionFromConcretization(
				stmt.getCondition(), stmt.getTargetExpression());
		for (Tuple<RTLNumber> pair : valuePairs) {
			RTLNumber conditionValue = pair.get(0);
			RTLNumber targetValue = pair.get(1);
			RTLLabel nextLabel;
			// assume correct condition case 
			assert conditionValue != null;
			RTLExpression assumption = 
					ExpressionFactory.createEqual(stmt.getCondition(), conditionValue);
			if (conditionValue.equals(ExpressionFactory.FALSE)) {
				// assume (condition = false), and set next statement to fallthrough
				nextLabel = stmt.getNextLabel();
			} else {
				if (targetValue == null) {

					if (!Options.allEdges.getValue()) {
						// if target could not be resolved, just leave the edge out for now
						logger.info(stmt.getLabel() + ": Cannot resolve target expression " + 
								stmt.getTargetExpression() + ". Continuing with unsound underapproximation.");
						logger.debug("State is: " + a);
						sound = false;
						unresolvedBranches.add(stmt.getLabel());
						if (Options.debug.getValue())
							throw new ControlFlowException(a, "Unresolvable control flow from " + stmt.getLabel());
						continue;
					} else {
						// Over-approximate target and add edges to all possible program locations (!) 
						logger.warn(stmt.getLabel() + ": Cannot resolve target expression " + 
								stmt.getTargetExpression() + ". Adding over-approximate edges to all program locations!");


						for (Iterator<AbsoluteAddress> it = Program.getProgram().codeAddressIterator(); it.hasNext();) {
							targetValue = it.next().toNumericConstant();
							assumption = ExpressionFactory.createEqual(stmt.getTargetExpression(), targetValue);
							// set next label to jump target
							nextLabel = new RTLLabel(new AbsoluteAddress(targetValue));
							RTLAssume assume = new RTLAssume(assumption, stmt);
							assume.setLabel(stmt.getLabel());
							assume.setNextLabel(nextLabel);
							results.add(new CFAEdge(assume.getLabel(), assume.getNextLabel(), assume));
						}

						continue;
					}
				} else {
					// assume (condition = true AND targetExpression = targetValue)
					assumption = ExpressionFactory.createAnd(
							assumption,
							ExpressionFactory.createEqual(
									stmt.getTargetExpression(),
									targetValue)
							);
					// set next label to jump target
					nextLabel = new RTLLabel(new AbsoluteAddress(targetValue));
				}
			}
			assumption = assumption.evaluate(new Context());
			RTLAssume assume = new RTLAssume(assumption, stmt);
			assume.setLabel(stmt.getLabel());
			assume.setNextLabel(nextLabel);
			// Target address sanity check
			if (nextLabel.getAddress().getValue() < 10L) {
				logger.warn("Control flow from " + a.getLocation() + " reaches address " + nextLabel.getAddress() + "!");
			}

			results.add(new CFAEdge(assume.getLabel(), assume.getNextLabel(), assume));
		}
		return results;
	}
}
