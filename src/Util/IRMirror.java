package Util;

import MIR.IRBlock;
import MIR.IROperand.GlobalVar;
import MIR.IROperand.entity;
import MIR.IROperand.stringConst;

import java.util.HashMap;

public class IRMirror{

    public HashMap<entity, entity> opMirror = new HashMap<>();
    public HashMap<IRBlock, IRBlock> blockMirror = new HashMap<>();

    public IRMirror(){}

    public entity opMir(entity origin) {
        if (origin instanceof GlobalVar || origin instanceof stringConst) return origin;
        if (!opMirror.containsKey(origin)) opMirror.put(origin, origin.copy());
        return opMirror.get(origin);
    }

    public IRBlock blockMir(IRBlock origin) {
        return blockMirror.get(origin);
    }
}
