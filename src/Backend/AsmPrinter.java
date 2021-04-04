package Backend;

import Asm.LBlock;
import Asm.LFn;
import Asm.LOperand.GReg;
import Asm.LRoot;
import Asm.RiscInst.RiscInst;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Queue;

public class AsmPrinter {
    public LRoot root;
    PrintStream out;
    private boolean rename;
    public AsmPrinter(LRoot root, PrintStream out, boolean rename){
        this.root = root;
        this.out = out;
        this.rename = rename;
    }

    private ArrayList<LBlock> visitlist = new ArrayList<>();
    private void collectwithrename(LFn func) {
        int cnt = 0;
        Queue<LBlock> blocks = new LinkedList<>();
        blocks.add(func.entryblock);
        visitlist.add(func.entryblock);
        while (!blocks.isEmpty()) {
            LBlock check = blocks.poll();
            if (rename) check.name ="." + func.name + "_b." + cnt++;
            check.sucs.forEach(block -> {
                if (block != null && !visitlist.contains(block)) {
                    blocks.add(block);
                    visitlist.add(block);
                }
            });
        }
    }


    private HashSet<LBlock> visited = new HashSet<>();
    private void runforblock(LBlock block) {
        visited.add(block);
        out.println(block.name + ": ");
        for (RiscInst inst = block.head; inst != null; inst = inst.nxt)
            out.println("\t" + inst.toString());
        if (block.nxt != null) runforblock(block.nxt);
    }


    private void runforfn(LFn func) {
        out.println("\t.globl\t" + func.name);
        out.println("\t.p2align\t1");
        out.println("\t.type\t" + func.name +",@function");
        out.println(func.name + ":");
        visitlist.clear();
        collectwithrename(func);

        runforblock(func.entryblock);
        visitlist.forEach(block -> {
            if (!visited.contains(block) && !block.hasPrior) runforblock(block);
        });
        out.println("\t.size\t" + func.name + ", " + ".-" + func.name + "\n");
    }

    private void runforglb(GReg reg) {
        out.println("\t.type\t" + reg.name + ",@object");
        out.println("\t.section\t.bss");
        out.println("\t.globl\t" + reg.name);
        out.println("\t.p2align\t2");
        out.println(reg.name + ":");
        out.println(".L" + reg.name + "$local:");
        out.println("\t.word\t0");
        out.println("\t.size\t" + reg.name + ", 4\n");
    }

    private void runforstring(GReg reg, String value) {
        out.println("\t.type\t" + reg.name + ",@object");
        out.println("\t.section\t.rodata");
        out.println(reg.name + ":");
        String str = value.replace("\\", "\\\\");
        str = str.replace("\n", "\\n");
        str = str.replace("\0", "");
        str = str.replace("\t", "\\t");
        str = str.replace("\"", "\\\"");
        out.println("\t.asciz\t\"" + str + "\"");
        out.println("\t.size\t" + reg.name + ", " + value.length() + "\n");
    }

    public void run() {
        out.println("\t.text");
        root.functions.forEach(this::runforfn);
        root.globalregs.forEach(this::runforglb);
        root.strings.forEach(this::runforstring);
    }


}
