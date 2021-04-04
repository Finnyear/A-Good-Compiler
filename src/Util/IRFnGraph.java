package Util;

import MIR.IRFunction;
import MIR.IRInst.Call;
import MIR.IRInst.Inst;
import MIR.Root;

import java.util.HashMap;
import java.util.HashSet;

public class IRFnGraph {
    private Root IRroot;
    private HashMap<IRFunction, HashSet<IRFunction>> caller = new HashMap<>();
    private boolean callercollect = true;

    public IRFnGraph(Root IRroot){this.IRroot = IRroot;}

    public void build(){
        if(callercollect)
            IRroot.functions.forEach((name, func) -> caller.put(func, new HashSet<>()));
        IRroot.functions.forEach((name, func) -> {
            func.callfunctions.clear();
            func.blocks.forEach(block -> {
                for(Inst inst = block.head_inst == null ? block.terminate : block.head_inst; inst != null; inst = block.getnxt(inst)){
                    if(inst instanceof Call && !(IRroot.isbuiltin(((Call)inst).callee.name))){
                        func.addcalleefunction(((Call)inst).callee);
                        if(callercollect) caller.get(((Call)inst).callee).add(func);
                    }
                }
            });
        });
    }

    public HashSet<IRFunction> getcaller(IRFunction fun){
        return caller.get(fun);
    }

}