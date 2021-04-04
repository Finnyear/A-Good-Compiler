package Backend;

import Asm.LFn;
import Asm.LBlock;
import Asm.LOperand.Reg;
import Asm.RiscInst.RiscInst;

import java.util.HashMap;
import java.util.HashSet;

public class LivenessAnalysis {
    private LFn func;
    private HashMap<LBlock, HashSet<Reg>> blockuses = new HashMap<>(), blockdefs = new HashMap<>();
    private HashSet<LBlock> visited = new HashSet<>();

    public LivenessAnalysis(LFn func) {
        this.func = func;
    }

    public void runForBlock(LBlock block) {
        HashSet<Reg> uses = new HashSet<>();
        HashSet<Reg> defs = new HashSet<>();
        for (RiscInst inst = block.head; inst != null; inst = inst.nxt) {
            HashSet<Reg> cur = inst.uses();
            cur.removeAll(defs);
            uses.addAll(cur);
            defs.addAll(inst.defs());
        }
        blockuses.put(block, uses);
        blockdefs.put(block, defs);
        block.liveIn.clear();
        block.liveout.clear();
    }
    public void LiveIO(LBlock block) {
        visited.add(block);
        HashSet<Reg> liveOut = new HashSet<>();
        block.sucs.forEach(suc -> liveOut.addAll(suc.liveIn));
        HashSet<Reg> liveIn = new HashSet<>(liveOut);
        liveIn.removeAll(blockdefs.get(block));
        liveIn.addAll(blockuses.get(block));
        block.liveout.addAll(liveOut);
        liveIn.removeAll(block.liveIn);
        if (!liveIn.isEmpty()) {
            block.liveIn.addAll(liveIn);
            visited.removeAll(block.pres);
        }
        block.pres.forEach(pre -> {
            if (!visited.contains(pre)) LiveIO(pre);
        });
    }

    public void runForFn() {
        func.blocks.forEach(this::runForBlock);
        LiveIO(func.exitblock);
    }

}
