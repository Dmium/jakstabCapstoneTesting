package org.jakstab.disasm.x86;

import capstone.X86;
import org.jakstab.asm.AbsoluteAddress;
import org.jakstab.asm.DataType;
import org.jakstab.asm.Immediate;
import org.jakstab.asm.Operand;
import org.jakstab.asm.x86.X86FloatRegister;
import org.jakstab.asm.x86.X86Register;
import org.jakstab.asm.x86.X86Opcodes;
import capstone.Capstone;
import capstone.X86_const;
import capstone.X86;

public class CapstoneConverter {
    /*	public static DataType getDataType() {

        }*/
    public static int getRegisterNo(int capstoneReg) {
        switch (capstoneReg) {
            case X86_const.X86_REG_AH:
                return X86Opcodes.AH;
            case X86_const.X86_REG_AL:
                return X86Opcodes.AL;
            case X86_const.X86_REG_AX:
                return X86Opcodes.AX;
            case X86_const.X86_REG_BH:
                return X86Opcodes.BH;
            case X86_const.X86_REG_BL:
                return X86Opcodes.BL;
            case X86_const.X86_REG_BP:
                return X86Opcodes.BP;
            //case X86_const.X86_REG_BPL:  //TODO Fix for 64 bit
            //	return X86Opcodes.
            case X86_const.X86_REG_BX:
                return X86Opcodes.BX;
            case X86_const.X86_REG_CH:
                return X86Opcodes.CH;
            case X86_const.X86_REG_CL:
                return X86Opcodes.CL;
    /*	case X86_const.X86_REG_CR0:
			return X86Opcodes.*/
            case X86_const.X86_REG_DH:
                return X86Opcodes.DH;
            case X86_const.X86_REG_DI:
                return X86Opcodes.DI;
/*		case X86_const.X86_REG_DIL:
			return X86Opcodes.DIL;*/
            case X86_const.X86_REG_DL:
                return X86Opcodes.DL;
/*		case X86_const.X86_REG_DR0:
			return X86Opcodes.DR;*/
            case X86_const.X86_REG_DS:
                return X86Opcodes.DS;
            case X86_const.X86_REG_DX:
                return X86Opcodes.DX;
            case X86_const.X86_REG_EAX:
                return X86Opcodes.EAX;
            case X86_const.X86_REG_EBP:
                return X86Opcodes.EBP;
            case X86_const.X86_REG_EBX:
                return X86Opcodes.EBX;
            case X86_const.X86_REG_ECX:
                return X86Opcodes.ECX;
            case X86_const.X86_REG_EDI:
                return X86Opcodes.EDI;
            case X86_const.X86_REG_EDX:
                return X86Opcodes.EDX;
/*		case X86_const.X86_REG_EFLAGS:
			return X86Opcodes.EFLAGS;*/
/*		case X86_const.X86_REG_EIP:
			return X86Opcodes.EIP;*/
/*		case X86_const.X86_REG_EIZ:
			return X86Opcodes.EIZ;*/
/*            case X86_const.X86_REG_ENDING:
                return X86Opcodes.ENDING;*/
            case X86_const.X86_REG_ES:
                return X86Opcodes.ES;
            case X86_const.X86_REG_ESI:
                return X86Opcodes.ESI;
            case X86_const.X86_REG_ESP:
                return X86Opcodes.ESP;
/*            case X86_const.X86_REG_FP0:
                return X86Opcodes.X86_REG_FP0;*/
/*            case X86_const.X86_REG_FPSW:
                return X86Opcodes.FPSW;*/
            case X86_const.X86_REG_FS:
                return X86Opcodes.FS;
            case X86_const.X86_REG_GS:
                return X86Opcodes.GS;
            case X86_const.X86_REG_INVALID:
                return X86Opcodes.INDIR_REG;
            /*case X86_const.X86_REG_IP:
                return X86Opcodes.IP;
            case X86_const.X86_REG_K0:
                return X86Opcodes.KO;
            case X86_const.X86_REG_K0:
                return X86Opcodes.KO;
            case X86_const.X86_REG_MM0:
                return X86Opcodes.MMO;
            case X86_const.X86_REG_R8:
                return X86Opcodes.R8;
            case X86_const.X86_REG_RAX:
                return X86Opcodes.RAX;
            case X86_const.X86_REG_RBP:
                return X86Opcodes.RBP;
            case X86_const.X86_REG_RBX:
                return X86Opcodes.RBX;
            case X86_const.X86_REG_RCX:
                return X86Opcodes.RCX;
            case X86_const.X86_REG_RDI:
                return X86Opcodes.RDI;
            case X86_const.X86_REG_RDX:
                return  X86Opcodes.RDX;
            case X86_const.X86_REG_RIP:
                return X86Opcodes.RIP;
            case X86_const.X86_REG_RIZ:
                return X86Opcodes.RIZ;
            case X86_const.X86_REG_RSI:
                return X86Opcodes.RSI;
            case X86_const.X86_REG_RSP:
                return X86Opcodes.RSP;*/
            case X86_const.X86_REG_SI:
                return X86Opcodes.SI;
/*            case X86_const.X86_REG_SIL:
                return X86Opcodes.SIL;*/
            case X86_const.X86_REG_SP:
                return X86Opcodes.SP;
/*            case X86_const.X86_REG_SPL:
                return X86Opcodes.SPL;*/
            case X86_const.X86_REG_SS:
                return X86Opcodes.SS;
/*            case X86_const.X86_REG_ST0:
                return X86Opcodes.ST0;
            case X86_const.X86_REG_XMM0:
                return X86Opcodes.XMMO;
            case X86_const.X86_REG_YMM0:
                return X86Opcodes.YMMO;
            case X86_const.X86_REG_ZMM0:
                return X86Opcodes.ZMMO;*/
            default:
                return capstoneReg;

        }
    }

    public static Operand getOperand(X86.OpInfo COperands, int opNo){
        Operand op;//TODO-Dom I don't even know how I'm going to fix this
        switch (COperands.op[opNo].type){
            case X86_const.X86_OP_FP:
                op = new X86FloatRegister(COperands.op[opNo].value.fp);
            case X86_const.X86_OP_IMM:
                op = new Immediate();
            case X86_const.X86_OP_INVALID:
                op = null;
            case X86_const.X86_OP_MEM:
                op = new AbsoluteAddress();
            case X86_const.X86_OP_REG:
                op = new X86Register();
        }
    }
}
