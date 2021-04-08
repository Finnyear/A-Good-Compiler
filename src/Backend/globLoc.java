package Backend;

import MIR.IRFunction;
import MIR.IRInst.Inst;
import MIR.IROperand.GlobalVar;
import MIR.IROperand.entity;
import MIR.Root;
import Util.IRFnGraph;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Queue;

public class globLoc {
    /*private Root IRroot;
    private HashMap<IRFunction, HashSet<GlobalVar>> uses = new HashMap<>(), defs = new HashMap<>();
    private HashMap<IRFunction, HashSet<IRFunction>> calls = new HashMap<>();
    private IRFnGraph callrelation;

    public globLoc(Root IRroot){
        this.IRroot = IRroot;
        callrelation = new IRFnGraph(IRroot);
        callrelation.build();
    }

    private void collect(){
        Queue<IRFunction> queue = new LinkedList<>();
        HashSet<IRFunction> inqueue = new HashSet<>();
        IRroot.functions.forEach((name, func) -> {
            HashSet<GlobalVar> alluse = new HashSet<>();
            HashSet<GlobalVar> alldef = new HashSet<>();
            HashSet<IRFunction> allcall = new HashSet<>();
            func.blocks.forEach(block -> {
                for(Inst inst = block.head_inst == null ?block.terminate :block.head_inst; inst != null; inst = block.getnxt(inst)){
                    for(entity use : inst)
                }
            });
        });
    }

    public boolean run(){
        collect();
        IRroot.functions.forEach((name, func) -> runforfunc(func));
        return false;
    }
     */
}
