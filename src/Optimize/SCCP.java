package Optimize;

import MIR.IRBlock;
import MIR.IRFunction;
import MIR.IROperand.*;
import MIR.Root;

import java.util.HashMap;
import java.util.HashSet;

public class SCCP {
    private Root IRroot;
    private HashMap<entity, entity> constmap = new HashMap<>();
    private HashSet<IRBlock> visited = new HashSet<>();
    private boolean change, changefn;
    private IRFunction current_func;

    public SCCP(Root IRroot){
        this.IRroot = IRroot;
    }

    private entity consttrans(entity src){
        if(src instanceof intConst || src instanceof boolConst || src instanceof stringConst)
            return src;
        if(src instanceof Null) return new intConst(0, 32);
        else return constmap.getOrDefault(src, null);
    }
}
