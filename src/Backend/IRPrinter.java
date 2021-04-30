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
    private boolean rename;

    public IRPrinter(PrintStream out, boolean rename){
        this.out = out; this.rename = rename;
    }

    private void renameblock(IRBlock block){
        block.Phis.forEach((register, phi) -> register.name = "" + symbolcounter++);
        for(Inst inst = block.gethead(); inst != null; inst = block.getnxt(inst)){
            if(inst.dest != null) {
                inst.dest.name = "" + symbolcounter++;
//                System.out.println(inst);
            }
        }
    }

    public void printblock(IRBlock block){
//        if(block.pre_block.size() == 3) System.out.println(block.name);
        out.println(block.name + ":");
        out.print(";precursors: ");
        block.pre_block.forEach(pre -> out.print(pre.name + " "));
        out.print("\n");
        out.print(";successors: ");
        block.suc_block.forEach(suc -> out.print(suc.name + " "));
        out.print("\n");
        out.print(";head_inst: ");
        out.println(block.head_inst);
        out.print(";tail_inst: ");
        out.println(block.tail_inst);
        out.print(";terminate: ");
        out.println(block.terminate);
        block.Phis.forEach((reg, phi) -> out.println("\t" + phi.toString()));
        for(Inst inst = block.gethead(); inst != null; inst = block.getnxt(inst)) {
            out.println("\t" + inst.toString());
        }
    }

    public void colletwithrename(IRFunction func){
        Queue<IRBlock> blocks = new LinkedList<>();
        blocks.add(func.entryblock);
        visited.add(func.entryblock);
        while(!blocks.isEmpty()){
            IRBlock check = blocks.poll();
            if(rename) check.name = "b." + blockcounter++;
            check.suc_block.forEach(block -> {
//                if(!func.blocks.contains(block)){check.suc_block.remove(block);}
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
            if (rename) param.name = "" + symbolcounter++;
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
        if (rename) visited.forEach(this::renameblock);
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
            if(sz == 0) out.println("}");
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
