package Backend;

import MIR.IRBlock;
import MIR.IRFunction;
import MIR.IRInst.Inst;
import MIR.IROperand.Param;
import MIR.IRType.IRpointerType;
import MIR.Root;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Queue;

public class IRPrinter {
    private int symbolcounter, blockcounter;
    private ArrayList<IRBlock> visited = new ArrayList<>();
    private PrintStream out;

    public IRPrinter(PrintStream out){
        this.out = out;
    }

    public void printblock(IRBlock block){
        out.println(block.name + ":");
        out.print(";precursors: ");
        block.pre_block.forEach(pre -> out.print(pre.name + " "));
        out.print("\n");
        out.print(";successors: ");
        block.suc_block.forEach(suc -> out.print(suc.name + " "));
        out.print("\n");
        block.Phis.forEach((reg, phi) -> out.println("\t" + phi.toString()));
        for(Inst inst = block.head_inst == null ? block.terminate : block.head_inst; inst != null; inst = block.getnxt(inst))
            out.println("\t" + inst.toString());
    }

    public void colletwithrename(IRFunction func){
        Queue<IRBlock> blocks = new LinkedList<>();
        blocks.add(func.entryblock);
        visited.add(func.entryblock);
        while(!blocks.isEmpty()){
            IRBlock check = blocks.poll();
            check.suc_block.forEach(block -> {
                if(block != null && !visited.contains(block)){
                    blocks.add(block);
                    visited.add(block);
                }
            });
        }
    }

    public String fnhead(IRFunction func, boolean isbuiltin){
        StringBuilder ret = new StringBuilder(isbuiltin ? "declare " : "define ");
        ret.append(func.returnType).append(" @").append(func.name).append("(");
        int sz = func.params.size();
        for(int i = 0; i < sz; i++){
            Param param = func.params.get(i);
            ret.append(param.type.toString()).append(" ");
            ret.append(param.toString()).append(i == sz - 1 ? ")" : ", ");
        }
        if(sz == 0) ret.append(")");
        if(!isbuiltin) ret.append("{");
        return ret.toString();
    }

    public void printfunc(String name, IRFunction func){
        symbolcounter = blockcounter = 0;
        out.println(fnhead(func, false));
        visited.clear();
        colletwithrename(func);
        visited.forEach(this::printblock);
        out.println("}");
    }

    public void run(Root IRroot){
        IRroot.builtinfunc.forEach((name, fn) -> {
            symbolcounter = 0;
            out.println(fnhead(fn, true));
        });
        IRroot.classtypes.forEach((name, type) -> {
            out.print("%struct." + name + " = " + "type {");
            int sz = type.types.size();
            for(int i = 0; i < sz; i++)
                out.print(type.types.get(i).toString() + (i == sz - 1 ? "}\n" : ", "));
        });
        IRroot.globalVars.forEach(gvar -> {
            out.println("@" + gvar.name + " = global " + ((IRpointerType)gvar.type).pointeeType.toString()
                        + " zeroinitializer, align " + gvar.type.size() / 8);
        });
        IRroot.conststrings.forEach((name, conststring) -> {
            out.println("@" + name + " = private unnamed_addr constant "
            + "[" + conststring.value.length() + " x i8] c" + "\"" + conststring.IRvalue() + "\", align 1");
        });
        IRroot.functions.forEach(this :: printfunc);
    }


}
