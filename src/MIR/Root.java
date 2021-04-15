package MIR;

import MIR.IRInst.Jump;
import MIR.IRInst.Move;
import MIR.IROperand.*;
import MIR.IRType.*;
import Util.type.Type;
import Util.type.arrayType;

import java.util.*;

public class Root {
    public HashMap<String, IRFunction> functions = new HashMap<>();
    public HashMap<String, IRFunction> builtinfunc = new HashMap<>();
    public HashMap<String, IRclassType> classtypes = new HashMap<>();
    public HashMap<String, stringConst> conststrings = new HashMap<>(), stringvalmap = new HashMap<>();
    public ArrayList<GlobalVar> globalVars = new ArrayList<>();
    public static IRType intIR = new IRintType(32), boolIR = new IRboolType(),
                          charIR = new IRintType(8), stringIR = new IRpointerType(charIR, false),
                          voidIR = new IRvoidType();

    public Root(){
        IRFunction func = new IRFunction("g_print");
        func.returnType = voidIR;
        func.params.add(new Param(stringIR, "s"));
        builtinfunc.put("g_print", func);
        func = new IRFunction("g_println");
        func.returnType = voidIR;
        func.params.add(new Param(stringIR, "s"));
        builtinfunc.put("g_println", func);
        func = new IRFunction("g_printInt");
        func.returnType = voidIR;
        func.params.add(new Param(intIR, "v"));
        builtinfunc.put("g_printInt", func);
        func = new IRFunction("g_printlnInt");
        func.returnType = voidIR;
        func.params.add(new Param(intIR, "v"));
        builtinfunc.put("g_printlnInt", func);

        func = new IRFunction("g_getString");
        func.returnType = stringIR;
        builtinfunc.put("g_getString", func);
        func = new IRFunction("g_getInt");
        func.returnType = intIR;
        builtinfunc.put("g_getInt", func);

        func = new IRFunction("g_toString");
        func.returnType = stringIR;
        func.params.add(new Param(intIR, "i"));
        builtinfunc.put("g_toString", func);

        func = new IRFunction("g_stringadd");
        func.returnType = stringIR;
        func.params.add(new Param(stringIR, "a"));
        func.params.add(new Param(stringIR, "b"));
        builtinfunc.put("g_stringadd", func);

        func = new IRFunction("g_stringlt");
        func.returnType = boolIR;
        func.params.add(new Param(stringIR, "a"));
        func.params.add(new Param(stringIR, "b"));
        builtinfunc.put("g_stringlt", func);

        func = new IRFunction("g_stringle");
        func.returnType = boolIR;
        func.params.add(new Param(stringIR, "a"));
        func.params.add(new Param(stringIR, "b"));
        builtinfunc.put("g_stringle", func);

        func = new IRFunction("g_stringgt");
        func.returnType = boolIR;
        func.params.add(new Param(stringIR, "a"));
        func.params.add(new Param(stringIR, "b"));
        builtinfunc.put("g_stringgt", func);

        func = new IRFunction("g_stringge");
        func.returnType = boolIR;
        func.params.add(new Param(stringIR, "a"));
        func.params.add(new Param(stringIR, "b"));
        builtinfunc.put("g_stringge", func);

        func = new IRFunction("g_stringeq");
        func.returnType = boolIR;
        func.params.add(new Param(stringIR, "a"));
        func.params.add(new Param(stringIR, "b"));
        builtinfunc.put("g_stringeq", func);

        func = new IRFunction("g_stringne");
        func.returnType = boolIR;
        func.params.add(new Param(stringIR, "a"));
        func.params.add(new Param(stringIR, "b"));
        builtinfunc.put("g_stringne", func);

        func = new IRFunction("malloc");
        func.returnType = stringIR;
        func.params.add(new Param(intIR, "a"));
        builtinfunc.put("malloc", func);


//        func = new IRFunction("size");
//        func.returnType = intIR;
//        func.params.add(new Param(new IRpointerType(intIR), "a"));
//        builtinfunc.put("size", func);

        IRFunction init = new IRFunction("__init");
        init.setrettype(new IRvoidType());
        functions.put("__init", init);
    }

    public IRFunction Init(){
        return functions.get("__init");
    }

    public void addfun(String name, IRFunction IRFunc){ // maybe there is this pair...?
        functions.put(name, IRFunc);
    }
    public IRFunction getfun(String name){
        if(functions.containsKey(name)) return functions.get(name);
        return builtinfunc.get(name);
    }
    public boolean isbuiltin(String name){return builtinfunc.containsKey(name);}

    public IRType getIRtype(Type type, boolean ismemset){
        if(type instanceof arrayType){
            IRType IRtype = getIRtype(((arrayType) type).basictype, ismemset);
            for(int i = 0; i < ((arrayType) type).dimision; i++)
                IRtype = new IRpointerType(IRtype, false);
            return IRtype;
        }
        if(type.tp == Type.type.Bool) {
            if(ismemset) return charIR;
            else return boolIR;
        }
        if(type.tp == Type.type.Int) return intIR;
        if(type.tp == Type.type.Class){
            if(type.class_name.equals("string")) return stringIR;
            return new IRpointerType(classtypes.get(type.class_name), false);
        }
        return new IRvoidType();
    }

    public void addstringconst(String name, String str){
        stringConst strconst = new stringConst(name, str);
        conststrings.put(name, strconst);
        stringvalmap.put(str, strconst);
    }

    public stringConst getstringval(String str){
        if(stringvalmap.containsKey(str)) return stringvalmap.get(str);
        else return null;
    }
    public stringConst getstringconst(String str){
        if(conststrings.containsKey(str)) return conststrings.get(str);
        else return null;
    }




    //addphi
    private static class blockpair{
        public IRBlock pre, suc;
        public blockpair(IRBlock pre, IRBlock suc){this.pre = pre; this.suc = suc;}
    }

    private static class paracopy{
        public ArrayList<Move> copies = new ArrayList<>();
        public HashMap<entity, Integer> usemap = new HashMap<>();

        public paracopy(){}
        public void addmove(Move move){
            copies.add(move);
            entity src = move.src;
            if(src instanceof Register){
                if(usemap.containsKey(src)) usemap.put(src, usemap.get(src) + 1);
                else usemap.put(src, 1);
            }
        }
    }

    public void addphi(){
        this.functions.forEach((name, function) -> {
            addphi_fun(function);
            function.blocks.forEach(block -> {
                block.pre_block.removeIf(tmp -> !function.blocks.contains(tmp));
                block.suc_block.removeIf(tmp -> !function.blocks.contains(tmp));
            });
        });

    }

    private void addphi_fun(IRFunction function){
        HashSet<blockpair> critical = new HashSet<>();
        function.blocks.forEach(block -> {
            if(block.suc_block.size() > 1){
                block.suc_block.forEach(suc -> {
                    if(suc.pre_block.size() > 1) {
//                        System.out.println(block.name);
//                        System.out.println(suc.name);
                        critical.add(new blockpair(block, suc));
                    }
                });
            }
        });
        critical.forEach(blockpair -> {
            IRBlock pre = blockpair.pre, suc = blockpair.suc;
            IRBlock mid = new IRBlock("addphi_mid");
            function.blocks.add(mid);
            mid.addterminate(new Jump(suc, mid));
            suc.Phis.forEach((register, phi) -> {
                int sz = phi.blocks.size();
                for (int i = 0; i < sz; i++)
                    if (phi.blocks.get(i) == pre) phi.blocks.set(i, mid);
            });
            pre.replacesuc(suc, mid);
        });
        HashMap<IRBlock, paracopy> copymap = new HashMap<>();
        function.blocks.forEach(block -> copymap.put(block, new paracopy()));
        function.blocks.forEach(block -> block.Phis.forEach(((register, phi) -> {
            int sz = phi.blocks.size();
            for(int i = 0; i < sz; i++){
                IRBlock pre = phi.blocks.get(i);
                entity val = phi.entities.get(i);
                copymap.get(pre).addmove(new Move(val, register, false, pre));// split the phi to register
            }
        })));
        copymap.forEach(((irBlock, parcpy) -> addphi_block(irBlock, parcpy)));

//        System.out.println("name = " + function.entryblock.name);


        HashSet<IRBlock> canMix = new HashSet<>();
        function.blocks.forEach(block -> {
            if (block.head_inst instanceof Jump || (block.head_inst == null && block.terminate instanceof Jump)) {
//                System.out.println("...... = " + block.name);
                if(block != function.entryblock)
                    canMix.add(block);
            }
        });
        canMix.forEach(block -> {
            IRBlock suc = block;
            do {
                suc = ((Jump) suc.terminate).destblock;
            } while(canMix.contains(suc));
            HashSet<IRBlock> precursors = new HashSet<>(block.pre_block);
            for (IRBlock pre : precursors) {
                pre.replacesuc(block, suc);
            }
            if (block == function.entryblock) function.entryblock = suc;
        });
        function.blocks.removeAll(canMix);
    }

    private void addphi_block(IRBlock block, paracopy parcpy){
        boolean bo = true;
        while (bo) {
            boolean hasmore = false;
            for (Iterator<Move> it = parcpy.copies.iterator(); it.hasNext(); ) {// remove every move inst
                Move inst = it.next();
                if (!parcpy.usemap.containsKey(inst.dest)) { // topology
                    it.remove();
                    if (inst.src instanceof Register) {
                        int num = parcpy.usemap.get(inst.src) - 1;
                        if (num > 0) parcpy.usemap.put(inst.src, num);
                        else parcpy.usemap.remove(inst.src);
                    }
                    block.addinst(new Move(inst.src, inst.dest, true, block));
                    hasmore = true;
                }
            }
            int sz = parcpy.copies.size();
            if(!hasmore){
                for(int i = 0; i < sz; i++){
                    Move inst = parcpy.copies.get(i);
                    if(inst.src != inst.dest){
                        Register mirror = new Register(inst.src.type, "mirror_" + inst.src);
                        block.addinst(new Move(inst.src, mirror, true, block));
                        parcpy.usemap.remove(inst.src);
                        parcpy.copies.forEach(copy -> copy.replaceentity(inst.src, mirror));
                        break;
                    }
                }
            }
            bo = false;
            for(int i = 0; i < sz; i++){
                Move inst = parcpy.copies.get(i);
                if(inst.src != inst.dest){bo = true; break;}
            }
        }
    }

    

}
