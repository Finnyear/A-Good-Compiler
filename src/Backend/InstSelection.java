package Backend;

import Asm.LBlock;
import Asm.LFn;
import Asm.LOperand.*;
import Asm.LRoot;
import Asm.RiscInst.*;
import MIR.IRBlock;
import MIR.IRFunction;
import MIR.IRInst.*;
import MIR.IROperand.*;
import MIR.IRType.IRType;
import MIR.IRType.IRclassType;
import MIR.IRType.IRpointerType;
import MIR.Root;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

public class InstSelection {
    private final Root IRroot;
    private final LRoot lRoot = new LRoot();
    private final HashMap<IRFunction, LFn> fnmap = new HashMap<>();
    private final HashMap<IRBlock, LBlock> blockmap = new HashMap<>();
    private final HashMap<entity, Reg> regmap = new HashMap<>();
    private int cnt;

    private LFn currentLFn;
    private LBlock currentBlock;
    private final HashMap<Integer, Reg> liReg = new HashMap<>();

    public InstSelection(Root IRroot){this.IRroot = IRroot;}

    public Reg regtran(entity src){
        LBlock lBlock = currentBlock;
        if(src instanceof Register || src instanceof Param){
            if(!regmap.containsKey(src))
                regmap.put(src, new VirReg(src.type.size() / 8, cnt++));
            return regmap.get(src);
        } else if(src instanceof GlobalVar || src instanceof stringConst){
            if(!regmap.containsKey(src)){
                int sz = src.type.isresolvable() ?
                        ((IRpointerType)src.type).pointeeType.size() : src.type.size();
                String name;
                if(src instanceof GlobalVar) name = ((GlobalVar)src).name;
                else name = "." + ((stringConst)src).name;
                GReg reg = new GReg(sz / 8, name);
                regmap.put(src, reg);
                if(src instanceof stringConst) lRoot.addString(reg, ((stringConst)src).value);
                else lRoot.addglobalreg(reg);
                return reg;
            } else return regmap.get(src);
        }else if(src instanceof intConst){
            int val = ((intConst)src).value();
            if(val == 0) return lRoot.getphyreg(0);
            if(liReg.containsKey(val)) return liReg.get(val);
            VirReg reg = new VirReg(4, cnt++);
            lBlock.addInst(new Li(new Imm(val), reg, lBlock));
            liReg.put(val, reg);
            return reg;
        }
        else if(src instanceof boolConst){
            int val = ((boolConst)src).value() ? 1 : 0;
            if(val == 0) return lRoot.getphyreg(0);
            if(liReg.containsKey(val)) return liReg.get(val);
            VirReg reg = new VirReg(1, cnt++);
            lBlock.addInst(new Li(new Imm(val), reg, lBlock));
            liReg.put(val, reg);
            return reg;
        }else {return lRoot.getphyreg(0);}
    }

    private boolean inbounds(int val){return (val < (1 << 11)) && (val > (-1 * (1 << 11)));}
    private boolean isbranchreg(Register reg, IRBlock block){
        HashSet<Inst> uses = reg.uses;
        if(uses.size() == 1) for(Inst use : uses) if(use == block.terminate) return true;
        return false;
    }
    private boolean canbeImm(entity src){return src instanceof intConst && inbounds(((intConst) src).value());}
    private int reduction(int n){
        int ans = 0;
        while(n > 1){
            if(n % 2 == 0){n >>= 1; ans++;}
            else return -1;
        }
        return ans;
    }
    public void gensltLIR(entity op1, entity op2, Reg dest){
        if(op2 instanceof intConst && inbounds(((intConst)op2).value())){
            currentBlock.addInst(new IType(regtran(op1), new Imm(((intConst)op2).value()), RiscInst.Calcategory.slt, dest, currentBlock));
            return ;
        }
        currentBlock.addInst(new RType(regtran(op1), regtran(op2), RiscInst.Calcategory.slt, dest, currentBlock));
    }
    private void genBinaryLIR(entity op1, entity op2, Reg dest, Binary.Opcode op, boolean commutable){
        LBlock lBlock = currentBlock;
        RiscInst.Calcategory opcode = null;
        boolean noIType = false;
        switch (op){
            case mul -> {opcode = RiscInst.Calcategory.mul; noIType = true;}
            case sdiv -> {opcode = RiscInst.Calcategory.div; noIType = true;}
            case srem -> {opcode = RiscInst.Calcategory.rem; noIType = true;}
            case shl -> opcode = RiscInst.Calcategory.sll;
            case ashr -> opcode = RiscInst.Calcategory.sra;
            case and -> opcode = RiscInst.Calcategory.and;
            case or -> opcode = RiscInst.Calcategory.or;
            case xor -> opcode = RiscInst.Calcategory.xor;
            case add -> opcode = RiscInst.Calcategory.add;
            case sub -> opcode = RiscInst.Calcategory.sub;
        }
        if(noIType){
            if(opcode == RiscInst.Calcategory.mul){
                if(canbeImm(op1)){
                    int ret = reduction(((intConst)op1).value());
                    if(ret != -1){
                        lBlock.addInst(new IType(regtran(op2), new Imm(ret), RiscInst.Calcategory.sll, dest, lBlock));
                        return ;
                    }
                } else if(canbeImm(op2)){
                    int ret = reduction(((intConst)op2).value());
                    if(ret != -1){
                        lBlock.addInst(new IType(regtran(op1), new Imm(ret), RiscInst.Calcategory.sll, dest, lBlock));
                        return ;
                    }
                }
            }
        } else {
            if(commutable && canbeImm(op1)){
                lBlock.addInst(new IType(regtran(op2), new Imm(((intConst)op1).value()), opcode, dest, lBlock));
                return ;
            }
            else if(canbeImm(op2)){
                if(opcode == RiscInst.Calcategory.sub)
                    lBlock.addInst(new IType(regtran(op1), new Imm(-1 * ((intConst) op2).value()), RiscInst.Calcategory.add, dest, lBlock));
                else
                    lBlock.addInst(new IType(regtran(op1), new Imm(((intConst)op2).value()), opcode, dest, lBlock));
                return;
            }
        }
        lBlock.addInst(new RType(regtran(op1), regtran(op2), opcode, dest, currentBlock));
    }

    public void genBranchLIR(Branch br){
        LBlock lBlock = currentBlock;
        if(br.cond instanceof Register && isbranchreg((Register)br.cond, br.block)){
            if(((Register)br.cond).def instanceof Cmp){
                Cmp cm = (Cmp) (((Register) br.cond).def);
                Cmp.Condcode condcode = cm.condcode;
                switch (condcode){
                    case slt ->
                        lBlock.addInst(new Br(regtran(cm.op1), regtran(cm.op2),
                                Br.Brcategory.lt, blockmap.get(br.true_br_block), lBlock));
                    case sgt ->
                        lBlock.addInst(new Br(regtran(cm.op2), regtran(cm.op1),
                                Br.Brcategory.lt, blockmap.get(br.true_br_block), lBlock));
                    case sle ->
                        lBlock.addInst(new Br(regtran(cm.op2), regtran(cm.op1),
                                Br.Brcategory.ge, blockmap.get(br.true_br_block), lBlock));
                    case sge ->
                        lBlock.addInst(new Br(regtran(cm.op1), regtran(cm.op2),
                                Br.Brcategory.ge, blockmap.get(br.true_br_block), lBlock));
                    case eq ->
                        lBlock.addInst(new Br(regtran(cm.op1), regtran(cm.op2),
                                Br.Brcategory.eq, blockmap.get(br.true_br_block), lBlock));
                    case ne ->
                        lBlock.addInst(new Br(regtran(cm.op1), regtran(cm.op2),
                                Br.Brcategory.ne, blockmap.get(br.true_br_block), lBlock));
                }
                lBlock.addInst(new Jp(blockmap.get(br.false_br_block), lBlock));
                return ;
            }
        }
        lBlock.addInst(new Bz(regtran(br.cond), RiscInst.Ezcategory.eq, blockmap.get(br.false_br_block), lBlock));
        lBlock.addInst(new Jp(blockmap.get(br.true_br_block), lBlock));
    }

    void genCallLIR(Call ca){
        LBlock lBlock = currentBlock;
        for(int i = 0; i < Integer.min(8, ca.parameters.size()); i++){
            Reg reg = regtran(ca.parameters.get(i));
            if(reg instanceof GReg) lBlock.addInst(new La((GReg) reg, lRoot.getphyreg(i + 10), lBlock));
            else lBlock.addInst(new Mv(reg, lRoot.getphyreg(i + 10), lBlock));
        }
        int paramoff = 0;
        for(int i = 8; i < ca.parameters.size(); i++){
            entity param = ca.parameters.get(i);
            lBlock.addInst(new St(lRoot.getphyreg(2), regtran(param), new Imm(paramoff), param.type.size() / 8, lBlock));
            paramoff += 4;
        }
        if(paramoff > currentLFn.paramoffset) currentLFn.paramoffset = paramoff;
        lBlock.addInst(new Cal(fnmap.get(ca.callee), lRoot, lBlock));
        if(ca.dest != null)
            lBlock.addInst(new Mv(lRoot.getphyreg(10), regtran(ca.dest), lBlock));
    }

    public void genCmpLIR(Cmp cmp){
        LBlock lBlock = currentBlock;
        if(isbranchreg(cmp.dest, cmp.block)) return ;
        switch (cmp.condcode) {
            case slt -> gensltLIR(cmp.op1, cmp.op2, regtran(cmp.dest));
            case sgt -> gensltLIR(cmp.op2, cmp.op1, regtran(cmp.dest));
            case sle -> {
                VirReg tmp = new VirReg(4, cnt++);
                gensltLIR(cmp.op2, cmp.op1, tmp);
                lBlock.addInst(new IType(tmp, new Imm(1), RiscInst.Calcategory.xor, regtran(cmp.dest), lBlock));
            }
            case sge -> {
                VirReg tmp = new VirReg(4, cnt++);
                gensltLIR(cmp.op1, cmp.op2, tmp);
                lBlock.addInst(new IType(tmp, new Imm(1), RiscInst.Calcategory.xor, regtran(cmp.dest), lBlock));
            }
            case eq -> {
                VirReg tmp = new VirReg(4, cnt++);
                genBinaryLIR(cmp.op1, cmp.op2, tmp, Binary.Opcode.xor, true);
                lBlock.addInst(new Sz(tmp, RiscInst.Ezcategory.eq, regtran(cmp.dest), lBlock));
            }
            case ne -> {
                VirReg tmp = new VirReg(4, cnt++);
                genBinaryLIR(cmp.op1, cmp.op2, tmp, Binary.Opcode.xor, true);
                lBlock.addInst(new Sz(tmp, RiscInst.Ezcategory.ne, regtran(cmp.dest), lBlock));
            }
        }
    }

    public void genGetelementptrLIR(Getelementptr gep){
        LBlock lBlock = currentBlock;
        VirReg destmul;
        Reg destidx = new VirReg(4, cnt++);
        int tpsz = gep.basetype.size() / 8;
        if(gep.arrayindex instanceof  intConst) {
            int arrindex = ((intConst) gep.arrayindex).value();
            if (arrindex == 0) {
                Reg origin = regtran(gep.pointer);
                if (origin instanceof GReg) lBlock.addInst(new La((GReg) origin, destidx, lBlock));
                else lBlock.addInst(new Mv(regtran(gep.pointer), destidx, lBlock));
            } else genBinaryLIR(gep.pointer, new intConst(arrindex * tpsz, 32), destidx, Binary.Opcode.add, true);
        } else {
            destmul = new VirReg(4, cnt++);
            genBinaryLIR(gep.arrayindex, new intConst(tpsz, 32), destmul, Binary.Opcode.mul, true);
            lBlock.addInst(new RType(regtran(gep.pointer), destmul, RiscInst.Calcategory.add, destidx, lBlock));
        }
        Reg destptr;
        if(gep.eleindex == null || gep.eleindex.value() == 0) destptr = destidx;
        else {
            int val = gep.eleindex.value();
            IRType type = ((IRpointerType)gep.pointer.type).pointeeType;
            if(type instanceof IRclassType)
                val = ((IRclassType)type).geteleoffset(val) / 8;
            else val = 0;
            destptr = new VirReg(4, cnt++);
            if(inbounds(val)) lBlock.addInst(new IType(destidx, new Imm(val), RiscInst.Calcategory.add, destptr, lBlock));
            else lBlock.addInst(new RType(destidx, regtran(new intConst(val, 32)), RiscInst.Calcategory.add, destptr, lBlock));
        }
        if(regmap.containsKey(gep.dest))
            lBlock.addInst(new Mv(destptr, regmap.get(gep.dest), lBlock));
        else regmap.put(gep.dest, destptr);
    }

    public void genLIR(Inst inst){
//        System.out.println(inst);
        LBlock lBlock = currentBlock;
        if(inst instanceof Binary){
            Binary tmp = (Binary)inst;
            genBinaryLIR(tmp.op1, tmp.op2, regtran(tmp.dest), tmp.opcode, tmp.commutable);
        } else if(inst instanceof Bitcast){
            Reg reg = regtran(((Bitcast)inst).value);
            if(reg instanceof GReg) lBlock.addInst(new La((GReg)reg, regtran(inst.dest), lBlock));
            else lBlock.addInst(new Mv(reg, regtran(inst.dest), lBlock));
        }
        else if(inst instanceof Branch){ genBranchLIR((Branch) inst); }
        else if(inst instanceof Call){ genCallLIR((Call) inst); }
        else if(inst instanceof Cmp){ genCmpLIR((Cmp) inst); }
        else if(inst instanceof Getelementptr){genGetelementptrLIR((Getelementptr) inst);}
        else if(inst instanceof Jump){
            lBlock.addInst(new Jp(blockmap.get(((Jump) inst).destblock), lBlock));
        }
        else if(inst instanceof Load){
            entity addr = ((Load) inst).addr, dest = inst.dest;
            lBlock.addInst(new Ld(regtran(addr), dest.type.size() / 8, new Imm(0), regtran(dest),  lBlock));
        }
        else if(inst instanceof Malloc){
            lBlock.addInst(new Mv(regtran(((Malloc)inst).sz), lRoot.getphyreg(10), lBlock));
            lBlock.addInst(new Cal(fnmap.get(IRroot.builtinfunc.get("malloc")), lRoot, lBlock));
            lBlock.addInst(new Mv(lRoot.getphyreg(10), regtran(inst.dest), lBlock));
        }
        else if(inst instanceof Move){
            Move mv = (Move) inst;
            if(mv.src instanceof intConst)
                lBlock.addInst(new Li(new Imm(((intConst)mv.src).value()), regtran(mv.dest), lBlock));
            else if(mv.src instanceof GlobalVar || mv.src instanceof stringConst)
                lBlock.addInst(new La((GReg)regtran(mv.src), regtran(mv.dest), lBlock));
            else if(mv.src instanceof boolConst){
                if(((boolConst) mv.src).value()) lBlock.addInst(new Li(new Imm(1), regtran(mv.dest), lBlock));
                else lBlock.addInst(new Mv(lRoot.getphyreg(0), regtran(mv.dest), lBlock));
            }
            else lBlock.addInst(new Mv(regtran(mv.src), regtran(mv.dest), lBlock));
        }
        else if(inst instanceof Return){
            entity val = ((Return)inst).value;
            if(val != null){
                Reg reg = regtran(val);
                if(reg instanceof GReg) lBlock.addInst(new La((GReg) reg, lRoot.getphyreg(10), lBlock));
                else lBlock.addInst(new Mv(reg, lRoot.getphyreg(10), lBlock));
            }
        }
        else if(inst instanceof Store){
            entity val = ((Store) inst).value, addr = ((Store) inst).addr;
            Reg addrreg = regtran(addr);
            if(addrreg instanceof GReg){
                VirReg tmp = new VirReg(4, cnt++);
                Relocation rel = new Relocation((GReg) addrreg, true);
                Reg valreg = regtran(val);
                lBlock.addInst(new Lui(rel, tmp, lBlock));
                lBlock.addInst(new St(tmp, valreg, new Relocation((GReg) addrreg, false), val.type.size() / 8, lBlock));
            }
            else lBlock.addInst(new St(regtran(addr), regtran(val), new Imm(0), val.type.size() / 8, lBlock));
        }
        else if(inst instanceof Zext){
            Reg reg = regtran(((Zext)inst).src);
            if(reg instanceof GReg) lBlock.addInst(new La((GReg) reg, regtran(inst.dest), lBlock));
            else lBlock.addInst(new Mv(reg, regtran(inst.dest), lBlock));
        }
    }

    public void copyblock(IRBlock src, LBlock block){
//        System.out.println("copy block");
        currentBlock = block;
        for(Inst inst = src.head_inst; inst != null; inst = src.getnxt(inst)) genLIR(inst);
        src.suc_block.forEach(suc -> {
//            System.out.println(suc.name);
            block.sucs.add(blockmap.get(suc));
            blockmap.get(suc).pres.add(block);
        });
    }

    public void runforfn(IRFunction func){
//        System.out.println("run for func");
//        System.out.println(func.blocks.size());
        LFn lfn = fnmap.get(func);
        currentLFn = lfn;
        cnt = 0;
        LBlock entryblock = lfn.entryblock, exitblock = lfn.exitblock;
        ArrayList<VirReg> calleesavemap = new ArrayList<>();
        SLImm stackL = new SLImm(0);
        stackL.reverse = true;
        entryblock.addInst(new IType(lRoot.getphyreg(2), stackL, RiscInst.Calcategory.add, lRoot.getphyreg(2), entryblock));
        lRoot.calleesaveregs.forEach(reg -> {
            VirReg map = new VirReg(4, cnt++);
            calleesavemap.add(map);
            entryblock.addInst(new Mv(reg, map, entryblock));
        });
        VirReg map = new VirReg(4, cnt++);
        entryblock.addInst(new Mv(lRoot.getphyreg(1), map, entryblock));
        for(int i = 0; i < Integer.min(8, func.params.size()); ++i)
            entryblock.addInst(new Mv(lRoot.getphyreg(10 + i), lfn.params.get(i), entryblock));
        int paraoffset = 0;
        for(int i = 8; i < func.params.size(); i++){
            entryblock.addInst(new Ld(lRoot.getphyreg(2), func.params.get(i).type.size() / 8, new SLImm(paraoffset), lfn.params.get(i), entryblock));
            paraoffset += 4;
        }
        func.blocks.forEach(block -> {
            LBlock lBlock = blockmap.get(block);
            liReg.clear();
            copyblock(block, lBlock);
            lfn.addblock(lBlock);
        });
//        if(exitblock == null)
//            System.out.println("func = " + func.name);
        for(int i = 0; i < lRoot.calleesaveregs.size(); i++)
            exitblock.addInst(new Mv(calleesavemap.get(i), lRoot.calleesaveregs.get(i), exitblock));
        exitblock.addInst(new Mv(map, lRoot.getphyreg(1), exitblock));
        exitblock.addInst(new IType(lRoot.getphyreg(2), new SLImm(0), RiscInst.Calcategory.add, lRoot.getphyreg(2), exitblock));
        exitblock.addInst(new Ret(lRoot, exitblock));
        lfn.cnt = cnt;
    }
    public LRoot run(){
        IRroot.builtinfunc.forEach((name, func) -> {
            LFn lFn = new LFn(name, null, null);
            lRoot.addbuiltinfunction(lFn);
            fnmap.put(func, lFn);
        });
        IRroot.functions.forEach((name, func) -> {
            func.blocks.forEach(block -> {
                LBlock lBlock = new LBlock("." + func.name + "_" + block.name);
//                System.out.println("put_" + block.name);
                blockmap.put(block, lBlock);
            });
//            System.out.println("hahaha   " + func.exitblock.name);
            LFn lFn = new LFn(name, blockmap.get(func.entryblock), blockmap.get(func.exitblock));
            fnmap.put(func, lFn);
            func.params.forEach(param -> lFn.addparam(regtran(param)));
            lRoot.addfunction(lFn);
        });
        IRroot.functions.forEach((name, func) -> runforfn(func));
        return lRoot;
    }
}
