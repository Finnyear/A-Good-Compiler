package Backend;

import AST.*;
import Asm.RiscInst.Ret;
import MIR.*;
import MIR.IRInst.*;
import MIR.IROperand.*;
import MIR.IRType.*;
import Util.*;
import Util.error.myError;
import Util.scope.globalScope;
import Util.type.Type;
import Util.type.classType;
import Util.type.funType;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public class IRBuilder implements ASTVisitor {//unfinished 3 visit !
    private final globalScope gScope;
    private IRBlock current_block = null;
    private IRFunction current_function = null;
    private classType current_class = null;
    private Root IRroot = null;
    private boolean isparam;
    private final HashMap<IRBlock, Phi> logicphi = new HashMap<>();
    private final ArrayList<Return> returnlist = new ArrayList<>();
    private int symbolcnt = 0;
    private HashSet<IRBlock> entryreachable = new HashSet<>();
    private HashSet<IRBlock> returnvisited = new HashSet<>();
    private entity current_this_operand = null;

    public IRBuilder(globalScope gScope, Root IRroot){
        this.gScope = gScope; this.IRroot = IRroot;
        gScope.getfunType("print", false).IRfunc = IRroot.builtinfunc.get("g_print");
        gScope.getfunType("println", false).IRfunc = IRroot.builtinfunc.get("g_println");
        gScope.getfunType("printInt", false).IRfunc = IRroot.builtinfunc.get("g_printInt");
        gScope.getfunType("printlnInt", false).IRfunc = IRroot.builtinfunc.get("g_printlnInt");
        gScope.getfunType("getString", false).IRfunc = IRroot.builtinfunc.get("g_getString");
        gScope.getfunType("getInt", false).IRfunc = IRroot.builtinfunc.get("g_getInt");
        gScope.getfunType("toString", false).IRfunc = IRroot.builtinfunc.get("g_toString");
    }

    private String getname(entity src){
        if(src instanceof Param) return ((Param)src).name;
        if(src instanceof Register) return ((Register)src).name;
        return "const";
    }

    private entity getpointee(entity ptr){
        if(ptr.type.isresolvable()){
            String name = getname(ptr);
            Register dest = new Register(((IRpointerType)ptr.type).pointeeType, "pointee_" + getname(ptr));
            current_block.addinst(new Load(ptr, dest, current_block));
            return dest;
        }else return ptr;
    }

    private void addbranch(ExprNode it){
        if(it.ifblock == null) return ;
        if(!(it.operand.type instanceof IRboolType)) throw new myError("add not bool branch", new position(0, 0));
        current_block.addinst(new Branch(it.operand, it.ifblock, it.elseblock, current_block));
        //add some phi node ?...
        if(logicphi.containsKey(it.ifblock)){
            Phi tmp = logicphi.get(it.ifblock);
            tmp.entities.add(new boolConst(true));
            tmp.blocks.add(current_block);
        }
        if(logicphi.containsKey(it.elseblock)){
            Phi tmp = logicphi.get(it.elseblock);
            tmp.entities.add(new boolConst(false));
            tmp.blocks.add(current_block);
        }
    }

    void assign(entity reg, ExprNode expr){
        expr.accept(this);
        entity tmp = getpointee(expr.operand);
        if(!(reg.type instanceof IRpointerType)) throw new myError("assign to sth not pointer", new position(0,0));
        if(tmp.type instanceof IRboolType){
            if(tmp instanceof boolConst){
                tmp = new intConst(((boolConst)tmp).value() ? 1 : 0, 8);
            }else {
                Register neww = new Register(Root.charIR, "extTo");
                current_block.addinst(new Zext(tmp, (Register)neww, current_block));
            }
        }
        current_block.addinst(new Store(tmp, reg, current_block));
    }


    private void entrydfs(IRBlock it) {
        entryreachable.add(it);
        it.suc_block.forEach(suc -> { if (!entryreachable.contains(suc)) entrydfs(suc); });
    }
    private boolean returndfs(IRBlock it) {
        returnvisited.add(it);
        ArrayList<IRBlock> precursors = new ArrayList<>(it.pre_block);
        for (IRBlock pre : precursors) {
            if (!returnvisited.contains(pre)) {
                if (returndfs(pre)) pre.removeterminate();
            }
        }
        if (entryreachable.contains(it)) return false;
        return it.pre_block.isEmpty();
    }

    @Override
    public void visit(ProgramNode it) {
        classType stringType = (classType)gScope.getType("string", new position(0, 0));

        IRFunction fn = new IRFunction("l_string_length");
        fn.returnType = Root.intIR;
        fn.params.add(new Param(Root.stringIR, "s"));
        IRroot.builtinfunc.put("l_string_length", fn);
        stringType.scope.getfunType("length", false).IRfunc = fn;
        fn = new IRFunction("l_string_substring");
        fn.returnType = Root.stringIR;
        fn.params.add(new Param(Root.stringIR, "s"));
        fn.params.add(new Param(Root.intIR, "left"));
        fn.params.add(new Param(Root.intIR, "right"));
        IRroot.builtinfunc.put("l_string_substring", fn);
        stringType.scope.getfunType("substring", false).IRfunc = fn;
        fn = new IRFunction("l_string_parseInt");
        fn.returnType = Root.intIR;
        fn.params.add(new Param(Root.stringIR, "s"));
        IRroot.builtinfunc.put("l_string_parseInt", fn);
        stringType.scope.getfunType("parseInt", false).IRfunc = fn;
        fn = new IRFunction("l_string_ord");
        fn.returnType = Root.charIR;
        fn.params.add(new Param(Root.stringIR, "s"));
        IRroot.builtinfunc.put("l_string_ord", fn);
        stringType.scope.getfunType("ord", false).IRfunc = fn;

        it.parts.forEach(part ->{
            if(part.classdef != null){
                String name = part.classdef.name;
                part.classdef.fundefs.forEach(func -> {
                    IRFunction IRfunc = new IRFunction("cls_"+name+"_"+func.name);
                    func.IRfunc = IRfunc;
                    funType funtype = ((classType)gScope.getType(part.classdef.name, part.pos)).scope.getfunType(func.name, false);
                    funtype.IRfunc = IRfunc;
                    IRroot.addfun(IRfunc.name, IRfunc);
                });
                int con_cnt = 0;
                IRFunction IRfunc = new IRFunction("cls_" + name + "_con_" + con_cnt);
                con_cnt = con_cnt + 1;
                if(part.classdef.classcon != null)part.classdef.classcon.IRfunc = IRfunc;
                else IRfunc.exitblock.addterminate(new Return(null, IRfunc.exitblock));
                IRroot.addfun(IRfunc.name, IRfunc);
            }
            else if(part.fundef != null){
                String name = part.fundef.name;
                if(!name.equals("main")) name = "fun_" + name;
                IRFunction IRfunc = new IRFunction(name);
                part.fundef.IRfunc = IRfunc;
                IRroot.addfun(IRfunc.name, IRfunc);
            }
        });
        it.parts.forEach(part -> part.accept(this));

        current_function = IRroot.functions.get("__init");

        current_function.exitblock.addterminate(new Return(null, current_function.exitblock));
        entryreachable = new HashSet<>();
        returnvisited = new HashSet<>();
        entrydfs(current_function.entryblock);
        for(Iterator<Return> iter = returnlist.iterator(); iter.hasNext();){
            Return ret = iter.next();
            if(returndfs(ret.block)){
                iter.remove();
                ret.block.removeinst(ret);
            }
        }
        entryreachable.removeIf(block -> block.terminate == null);
        current_function.blocks.addAll(entryreachable);
        entryreachable = null; returnvisited = null;

    }

    @Override
    public void visit(pureExprStmtNode it) {
        it.expr.accept(this);
    }

    @Override
    public void visit(returnStmtNode it) {
        Return retInst;
        if(it.expr.type.tp == null)
            retInst = new Return(null, current_block);
        else{
            it.expr.accept(this);
            entity retval;
            retval = it.expr.operand;//maybe sth wrong?...
            retInst = new Return(retval, current_block);
        }
        current_block.addterminate(retInst);
        returnlist.add(retInst);
    }

    @Override
    public void visit(sufExprNode it) {
        it.expr.accept(this);
        Register tmp = new Register(Root.intIR, "suf_tmp");
        it.operand = getpointee(it.expr.operand);
        if(it.op == sufExprNode.sufop.add)
            current_block.addinst(new Binary(Binary.Opcode.add, it.operand, new intConst(1, 32), tmp, current_block));
        else current_block.addinst(new Binary(Binary.Opcode.sub, it.operand, new intConst(1, 32), tmp, current_block));
        current_block.addinst(new Store(tmp, it.expr.operand, current_block));
    }

    @Override
    public void visit(PartNode it){
        if(it.classdef != null) it.classdef.accept(this);
        if(it.fundef != null) it.fundef.accept(this);
        if(it.vardef != null) it.vardef.accept(this);
    }

    @Override
    public void visit(preExprNode it) {
        IRType type;
        if(it.op == preExprNode.preop.lnot) type = Root.boolIR;
        else type = Root.intIR;
        it.operand = new Register(type, "pre_" + it.op.toString());
        if(type == Root.boolIR && it.ifblock != null) {
            it.expr.ifblock = it.elseblock;
            it.expr.elseblock = it.ifblock;
            it.expr.accept(this);
            return ;
        }
        it.expr.accept(this);
        entity tmp = it.expr.operand;//first time thought need to get pointee
        switch (it.op){
            case add -> {
                current_block.addinst(new Binary(Binary.Opcode.add, tmp, new intConst(1, 32),(Register) it.operand, current_block));
                if(it.expr.isAssignable()) current_block.addinst(new Store(it.operand, tmp, current_block));
            }
            case mns -> {
                current_block.addinst(new Binary(Binary.Opcode.sub, tmp, new intConst(-1, 32), (Register) it.operand, current_block));
                if(it.expr.isAssignable()) current_block.addinst(new Store(it.operand, tmp, current_block));
            }
            case pls -> it.operand = it.expr.operand;
            case sub -> current_block.addinst(new Binary(Binary.Opcode.sub, new intConst(0, 32), tmp, (Register) it.operand, current_block));
            case not -> current_block.addinst(new Binary(Binary.Opcode.xor, new intConst(-1, 32), tmp, (Register) it.operand, current_block));
            case lnot -> current_block.addinst(new Binary(Binary.Opcode.xor, new boolConst(true), tmp, (Register) it.operand, current_block));
        }
    }

    @Override
    public void visit(classdefNode it) {
        current_class = (classType) gScope.getType(it.name, it.pos);
        IRclassType IRclasstype = IRroot.classtypes.get(it.name);
        it.vardefs.forEach(var -> var.accept(this));
        it.fundefs.forEach(fun -> fun.accept(this));
        if(it.classcon != null)it.classcon.accept(this);
        current_class = null;
    }

    private String getString(String str){
        String ret = str;
        ret = ret.replace("\\n", "\n");
        ret = ret.replace("\\t", "\t");
        ret = ret.replace("\\\"", "\"");
        ret = ret.replace("\\\\", "\\");
        ret += "\0";
        return ret;
    }

    @Override
    public void visit(constExprNode it) {
        if(it.tp.equals("int")) it.operand = new intConst(Integer.parseInt(it.val), 32);
        else if(it.tp.equals("bool")){
            if(it.val.equals("true")) it.operand = new boolConst(true);
            else it.operand = new boolConst(false);
        }
        else if(it.tp.equals("string")){
            String str = getString(it.val);
            stringConst strconst = IRroot.getstringval(str);
            String name;
            if(strconst == null){
                name = current_function.name + "." + symbolcnt++;
                IRroot.addstringconst(name, str);
                strconst =IRroot.getstringconst(name);
            }
            else name = strconst.name;
            it.operand = new Register(IRroot.stringIR, "resolved_" + name);
            current_block.addinst(new Getelementptr(new IRarrayType(str.length(), IRroot.charIR), strconst,
                    new intConst(0, 32), new intConst(0, 32), (Register) it.operand, current_block));
        }
        else throw new myError("const type wrong", new position(0, 0));
    }

    @Override
    public void visit(fundefNode it) {
//        System.out.println(it.name);
        current_function = it.IRfunc;
        current_block = current_function.entryblock;
        if(current_class != null)
            current_function.setclass(new Param(IRroot.getIRtype(current_class), "this"));
        current_function.setrettype(IRroot.getIRtype(it.type.getnewType(gScope)));

        isparam = true;
        it.fun_par_list.variables.forEach(param -> param.accept(this));
        isparam = false;

        if(current_function.name.equals("main"))
            current_block.addinst(new Call(IRroot.Init(), new ArrayList<>(), null, current_block));
        it.suite.accept(this);

        if(current_block.terminate == null){
            Return ret;
            if(current_function.name.equals("main") || current_function.returnType instanceof IRintType)
                ret = new Return(new intConst(0, 32), current_block);
            else if(current_function.returnType instanceof IRvoidType)
                ret = new Return(null, current_block);
            else if(current_function.returnType instanceof IRboolType)
                ret = new Return(new boolConst(false), current_block);
            else if(current_function.returnType instanceof IRpointerType)
                ret = new Return(new Null(), current_block);
            else throw new myError("cannot return a class entity", it.pos);
            current_block.addterminate(ret);
            returnlist.add(ret);
        }
        entryreachable = new HashSet<>();
        returnvisited = new HashSet<>();
        entrydfs(current_function.entryblock);
        for(Iterator<Return> iter = returnlist.iterator(); iter.hasNext();){
            Return ret = iter.next();
            if(returndfs(ret.block)){
                iter.remove();
                ret.block.removeinst(ret);
            }
        }
        entryreachable.removeIf(block -> block.terminate == null);
        current_function.blocks.addAll(entryreachable);
        entryreachable = null; returnvisited = null;

        if(returnlist.size() > 1){
            IRBlock rootreturn = new IRBlock("rootReturn");
            Register retval = returnlist.get(0).value == null ? null :
                    new Register(returnlist.get(0).value.type, "rootRet");
            if(retval != null){
                ArrayList<entity> values = new ArrayList<>();
                ArrayList<IRBlock> blocks = new ArrayList<>();
                returnlist.forEach(ret -> {
                    ret.block.removeterminate();
                    values.add(ret.value);
                    blocks.add(ret.block);
                    ret.block.addterminate(new Jump(rootreturn, ret.block));
                });
                rootreturn.addphi(new Phi(blocks, values, retval, rootreturn));
            }
            else{
                returnlist.forEach(ret -> {
                    ret.block.removeterminate();
                    ret.block.addterminate(new Jump(rootreturn, ret.block));
                });
            }
            rootreturn.addterminate(new Return(retval, rootreturn));
            current_function.exitblock = rootreturn;
            current_function.blocks.add(rootreturn);
        }
        else{
            current_function.exitblock = returnlist.get(0).block;
        }
        IRBlock entryBlock = current_function.entryblock;
        current_function.allocvars.forEach(var ->{
            if (((IRpointerType)var.type).pointeeType instanceof IRpointerType)
                entryBlock.addheadinst(new Store(new Null(), var, entryBlock));
            else entryBlock.addheadinst(new Store(new intConst(65536, ((IRpointerType)var.type).pointeeType.size()), var, entryBlock));
        });

        returnlist.clear();
        current_function = null;
        current_block = null;
    }

    @Override
    public void visit(suiteNode it) {
        it.stmts.forEach(stmtNode -> stmtNode.accept(this));//opt~break;
    }

    @Override
    public void visit(thisExprNode it) {
        it.operand = current_function.classptr;
    }

    @Override
    public void visit(vardefNode it) {
        it.variables.forEach(variableNode -> {variableNode.accept(this);});
    }

    @Override
    public void visit(variableNode it) {
        IRType type = IRroot.getIRtype(it.varent.type);
        if(it.isglobal == true){
            GlobalVar reg = new GlobalVar(new IRpointerType(type, true), it.name);
            it.varent.operand = reg;
            IRroot.globalVars.add(reg);
            if(it.expr != null){
                current_block = IRroot.Init().exitblock;
                current_function = IRroot.Init();
                assign(it.varent.operand, it.expr);
                current_function.exitblock = current_block;
                current_block = null;
                current_function = null;
            }
        }
        else{
            if(isparam){
                Param param = new Param(type, "param_" + it.name);
                current_function.params.add(param);
                it.varent.operand = new Register(new IRpointerType(type, true), it.name + "_addr");
                current_function.allocvars.add((Register) it.varent.operand);
                current_block.addinst(new Store(param, it.varent.operand, current_block));
            }
            else{
                if(current_function == null){
                    if(type instanceof IRclassType) type = new IRpointerType(type, false);
                    Register reg = new Register(new IRpointerType(type, true), it.name + "_addr");
                    it.varent.operand = reg;
                }
                else{
                    Register reg = new Register(new IRpointerType(type, true), it.name + "_addr");
                    if(it.expr != null) assign(reg, it.expr);
                    current_function.allocvars.add(reg);
                    it.varent.operand = reg;
                }
            }
        }

    }

    @Override
    public void visit(vardefStmtNode it) {
        it.vardef.accept(this);
    }

    @Override
    public void visit(varExprNode it) {
        varentity varent = it.varent;
        if(varent.ismember == true){
            Param classptr = current_function.classptr;
            it.operand = new Register(varent.operand.type, "this." + it.name + "_addr");
            current_block.addinst(new Getelementptr(((IRpointerType)classptr.type).pointeeType, classptr,
                    new intConst(0, 32), varent.index, (Register) it.operand, current_block));
        }
        else {
//            if(varent.operand == null) System.out.println("wuwuwu");
            it.operand = varent.operand;
        }
        addbranch(it);
    }

    @Override
    public void visit(arraycrtNode it) {
        it.operand = new Register(IRroot.getIRtype(it.type), "new_array");
        arraymalloc(0, it, (Register) it.operand);
    }

    private void arraymalloc(int dim, arraycrtNode it, Register res){
        Register arrayptr;
        if(dim == 0) arrayptr = res;
        else arrayptr = new Register(((IRpointerType)res.type).pointeeType, "array_malloc");
        if(dim == it.dims.size()) return;
        it.dims.get(dim).accept(this);
        IRType pointee = ((IRpointerType) arrayptr.type).pointeeType;
        entity num = getpointee(it.dims.get(dim).operand);
        intConst typesz = new intConst(((IRpointerType) arrayptr.type).pointeeType.size() / 8, 32);
        Register puresz = new Register(Root.intIR, "puresz");
        Register metasz = new Register(Root.intIR, "matasz");
        Register allocptr = new Register(Root.stringIR, "allocptr");
        Register allocbitcast = new Register(new IRpointerType(Root.intIR, false), "allocbitcast");
        Register allocoffset = new Register(new IRpointerType(Root.intIR, false), "allocoffset");

        current_block.addinst(new Binary(Binary.Opcode.mul, num, typesz, puresz, current_block));
        current_block.addinst(new Binary(Binary.Opcode.add, puresz, new intConst(4, 32), metasz, current_block));
        current_block.addinst(new Malloc(metasz, allocptr, current_block));//a little confused, why allocptr need string type?
        current_block.addinst(new Bitcast(allocptr, allocbitcast, current_block));
        current_block.addinst(new Store(num, allocbitcast, current_block));

        if(pointee instanceof IRintType && pointee.size() == 32)
            current_block.addinst(new Getelementptr(Root.intIR, allocbitcast, new intConst(1, 32), null, arrayptr, current_block));
        else{
            current_block.addinst(new Getelementptr(Root.intIR, allocbitcast, new intConst(1, 32), null, allocoffset, current_block));
            current_block.addinst(new Bitcast(allocoffset, arrayptr, current_block));
        }
        if(dim != 0) current_block.addinst(new Store(arrayptr, res, current_block));
        if(dim < it.dims.size() - 1){
            assert pointee instanceof IRpointerType;
            IRBlock updblock = new IRBlock("arrayincr");
            IRBlock bodyblock = new IRBlock("arraybody");
            IRBlock endblock = new IRBlock("arrayend");
            Register ptr = new Register(new IRpointerType(Root.intIR, false), "arrayptr");
            Register castedptr = new Register(arrayptr.type, "castedptr");
            Register counter = new Register(Root.intIR, "counter");
            Register countertmp = new Register(Root.intIR, "countertmp");
            Register branchjudge = new Register(Root.boolIR, "branchjudge");
            ArrayList<entity> values = new ArrayList<>();
            ArrayList<IRBlock> blocks = new ArrayList<>();
            values.add(new intConst(0, 32));
            blocks.add(current_block);
            current_block.addterminate(new Jump(updblock, current_block));

            current_block = updblock;
            current_block.addinst(new Binary(Binary.Opcode.add, counter, new intConst(1, 32), countertmp, current_block));
            current_block.addinst(new Cmp(Cmp.Condcode.sle, counter, num, branchjudge, current_block));
            current_block.addterminate(new Branch(branchjudge, bodyblock, endblock, current_block));

            current_block = bodyblock;
            current_block.addinst(new Getelementptr(Root.intIR, allocbitcast, counter, null, ptr, current_block));
            current_block.addinst(new Bitcast(ptr, castedptr, current_block));
            arraymalloc(dim + 1, it, castedptr);
            current_block.addterminate(new Jump(updblock, current_block));

            values.add(countertmp);
            blocks.add(current_block);

            current_block = updblock;
            current_block.addphi(new Phi(blocks, values, counter, current_block));

            current_block = endblock;
        }
    }

    @Override
    public void visit(arrayExprNode it) {
        it.name.accept(this);
        it.dim.accept(this);
        it.operand = new Register(new IRpointerType(IRroot.getIRtype(it.type), true), "arrayptr");
        current_block.addinst(new Getelementptr(((IRpointerType)it.name.operand.type).pointeeType, it.name.operand,
                it.dim.operand, null, (Register) it.operand, current_block));
        addbranch(it);
    }

    @Override
    public void visit(assignExprNode it) {
        it.lv.accept(this);
        assign(it.lv.operand, it.rv);
        it.operand = it.rv.operand;
    }

    @Override
    public void visit(binaryExprNode it) {
        entity op1, op2;
        Inst inst;
        Binary.Opcode opcode = null;
        Cmp.Condcode condcode = null;
        switch (it.op){
            case mul -> opcode = Binary.Opcode.mul;
            case div -> opcode = Binary.Opcode.sdiv;
            case mod -> opcode = Binary.Opcode.srem;
            case sla -> opcode = Binary.Opcode.shl;
            case sra -> opcode = Binary.Opcode.ashr;
            case and -> opcode = Binary.Opcode.and;
            case or ->  opcode = Binary.Opcode.or;
            case xor -> opcode = Binary.Opcode.xor;
            case sub -> opcode = Binary.Opcode.sub;
            case add -> opcode = Binary.Opcode.add;

            case les -> condcode = Cmp.Condcode.slt;
            case leq -> condcode = Cmp.Condcode.sle;
            case grt -> condcode = Cmp.Condcode.sgt;
            case geq -> condcode = Cmp.Condcode.sge;

            case eq ->  condcode = Cmp.Condcode.eq;
            case neq -> condcode = Cmp.Condcode.ne;
            default -> {}
        }
        switch (it.op){
            case mul, div, mod, sla, sra, and, or, xor, sub, add -> {
                it.lhs.accept(this);
                it.rhs.accept(this);
//                System.out.println("???????");
                op1 = getpointee(it.lhs.operand);
                op2 = getpointee(it.rhs.operand);
                it.operand = new Register(Root.intIR, "binary_" + opcode.toString());
                inst = new Binary(opcode, op1, op2, (Register) it.operand, current_block);
                current_block.addinst(inst);
            }
            case les, leq, grt, geq ->{
                it.lhs.accept(this);
                it.rhs.accept(this);
                op1 = getpointee(it.lhs.operand);
                op2 = getpointee(it.rhs.operand);
                it.operand = new Register(IRroot.boolIR, "cmp_" + condcode.toString());
                inst = new Cmp(condcode, op1, op2, (Register) it.operand, current_block);
                current_block.addinst(inst);
                addbranch(it);
            }
            case land -> {
                if(it.ifblock != null){
                    IRBlock condblock = new IRBlock("land_cond");
                    it.lhs.ifblock = condblock;
                    it.lhs.elseblock = it.elseblock;
                    it.lhs.accept(this);
                    current_block = condblock;
                    it.rhs.ifblock = it.ifblock;
                    it.rhs.elseblock = it.elseblock;
                    it.rhs.accept(this);
                }
                else{
                    IRBlock condblock = new IRBlock("andand_cond");
                    IRBlock endblock = new IRBlock("andand_end");
                    Phi lphi = new Phi(new ArrayList<IRBlock>(), new ArrayList<entity>(), (Register) it.operand, current_block);
                    logicphi.put(endblock, lphi);
                    it.operand = new Register(IRroot.boolIR, "andand");
                    it.lhs.ifblock = condblock;
                    it.lhs.elseblock = endblock;
                    it.accept(this);

                    current_block = condblock;
                    it.rhs.accept(this);
                    current_block.addterminate(new Jump(endblock, current_block));
                    lphi.entities.add(it.rhs.operand);
                    lphi.blocks.add(current_block);

                    current_block = endblock;
                    endblock.addphi(lphi);
                }
            }

            case lor -> {
                if(it.ifblock != null){
                    IRBlock condblock = new IRBlock("lor_cond");
                    it.lhs.ifblock = it.ifblock;
                    it.lhs.elseblock = condblock;
                    it.lhs.accept(this);
                    current_block = condblock;
                    it.rhs.ifblock = it.ifblock;
                    it.rhs.elseblock = it.elseblock;
                    it.rhs.accept(this);
                }
                else{
                    IRBlock condblock = new IRBlock("oror_cond");
                    IRBlock endblock = new IRBlock("oror_end");
                    Phi lphi = new Phi(new ArrayList<IRBlock>(), new ArrayList<entity>(), (Register) it.operand, current_block);
                    logicphi.put(endblock, lphi);
                    it.operand = new Register(IRroot.boolIR, "oror");
                    it.lhs.ifblock = endblock;
                    it.lhs.elseblock = condblock;
                    it.accept(this);

                    current_block = condblock;
                    it.rhs.accept(this);
                    current_block.addterminate(new Jump(endblock, current_block));
                    lphi.entities.add(it.rhs.operand);
                    lphi.blocks.add(current_block);

                    current_block = endblock;
                    endblock.addphi(lphi);
                }
            }
            case eq, neq -> {
                it.lhs.accept(this);
                it.rhs.accept(this);
                it.operand = new Register(IRroot.boolIR, it.op.toString());
                current_block.addinst(new Cmp(condcode, it.lhs.operand, it.rhs.operand, (Register) it.operand, current_block));
                addbranch(it);
            }
        }
    }

    @Override
    public void visit(blockNode it) {
        it.suite.accept(this);
    }

    @Override
    public void visit(ifStmtNode it) {
        IRBlock ifblock = new IRBlock("if_then");
        IRBlock elseblock = new IRBlock("else_then");
        IRBlock endblock = new IRBlock("if_end");

        if(it.elsebody == null) elseblock = endblock;

        it.ifcon.ifblock = ifblock;
        it.ifcon.elseblock = elseblock;
        it.ifcon.accept(this);

        current_block = ifblock;
        it.ifbody.accept(this);
        if(current_block.terminate == null)
            current_block.addterminate(new Jump(endblock, current_block));
        if(it.elsebody != null){
            current_block = elseblock;
            it.elsebody.accept(this);
            if(current_block.terminate == null)
                current_block.addterminate(new Jump(endblock, current_block));
        }
        if(ifblock.returnflag() && elseblock.returnflag()) return ;
        current_block = endblock;
    }

    @Override
    public void visit(memberExprNode it) { //////////////////fix memberExprNode !!!!!!!!!!!!!!
        it.tp.accept(this);
        entity classptr = getpointee(it.tp.operand);
        if(it.mem instanceof varExprNode) {
            it.operand = new Register(it.varent.operand.type, "this." + it.memname);
            current_block.addinst(new Getelementptr(((IRpointerType) classptr.type).pointeeType, classptr,
                    new intConst(0, 32), new intConst(it.memoff, 32), (Register) it.operand, current_block));
        }
        else {
            entity tmp_this_operand = current_this_operand;
            current_this_operand = it.tp.operand;
            it.mem.accept(this);
            current_this_operand = tmp_this_operand;
        }
    }

    @Override
    public void visit(forStmtNode it) {
        if(it.forinit != null)
            it.forinit.accept(this);
        IRBlock condblock = new IRBlock("for_cond");
        IRBlock updblock =  new IRBlock("for_upd");
        IRBlock bodyblock = new IRBlock("for_body");
        IRBlock endblock =  new IRBlock("for_end");

        if(it.forcon != null){
            current_block.addterminate(new Jump(condblock, current_block));
            current_block = condblock;
            it.forcon.ifblock = bodyblock;
            it.forcon.elseblock = endblock;
            it.forcon.accept(this);
        }
        else{
            condblock = bodyblock;
            current_block.addterminate(new Jump(condblock, current_block));
        }
        current_block = bodyblock;
        it.forbody.accept(this);
        if(current_block.terminate == null) current_block.addterminate(new Jump(updblock, current_block));
        current_block = updblock;
        if(it.forupd != null) it.forupd.accept(this);
        if(current_block.terminate == null) current_block.addterminate(new Jump(condblock, current_block));
        current_block =endblock;
    }

    @Override
    public void visit(funcalExprNode it) {
        it.callee.accept(this);
        funType funtype = (funType) it.callee.type;
        if(it.type.tp == Type.type.Void) it.operand = null;
        else it.operand = new Register(IRroot.getIRtype(funtype.returntype), "fun_cal_ret_val");
        ArrayList<entity> params = new ArrayList<>();
        if(funtype.inclass) params.add(getpointee(it.callee.operand));
        if(it.paras != null) {
            it.paras.exprs.forEach(param -> {
                param.accept(this);
                params.add(getpointee(param.operand));
            });
        }
        current_block.addinst(new Call(funtype.IRfunc, params, (Register) it.operand, current_block));
        if(it.operand != null) addbranch(it);
    }

    @Override
    public void visit(funcNode it) {
        if(current_this_operand != null) it.operand = current_this_operand;
    }

    @Override
    public void visit(whileStmtNode it) {
        IRBlock condblock = new IRBlock("while_cond");
        IRBlock bodyblock = new IRBlock("while_body");
        IRBlock endblock =  new IRBlock("while_end");

        it.endblock = endblock;

        if(it.whilecon != null){
            current_block.addterminate(new Jump(condblock, current_block));
            current_block = condblock;
            it.whilecon.ifblock = bodyblock;
            it.whilecon.elseblock = endblock;
            it.whilecon.accept(this);
        }
        else{
            condblock = bodyblock;
            current_block.addterminate(new Jump(condblock, current_block));
        }
        it.condblock = condblock;
        current_block = bodyblock;
        it.whilebody.accept(this);
        if(current_block.terminate == null) current_block.addterminate(new Jump(condblock, current_block));
        current_block =endblock;
    }

    @Override
    public void visit(breakStmtNode it) {
        IRBlock dest;
        if(it.dest instanceof whileStmtNode) dest = ((whileStmtNode) it.dest).endblock;
        else dest = ((forStmtNode) it.dest).endblock;
        current_block.addterminate(new Jump(dest, current_block));
    }

    @Override
    public void visit(classcrtNode it) {
        Register tmp = new Register(IRroot.stringIR, "malloc");
        it.operand = new Register(IRroot.getIRtype(it.type), "new_class_ptr");
        current_block.addinst(new Malloc(new intConst(((classType)it.type).allocsz / 8, 32), tmp, current_block));
        current_block.addinst(new Bitcast(tmp, (Register) it.operand, current_block));
        if(((classType)it.type).scope.con != null) {
            funType clscon = ((classType)it.type).scope.con;
            ArrayList<entity> params = new ArrayList<>();
            params.add(it.operand);
            current_block.addinst(new Call(clscon.IRfunc, params, null, current_block));
        }
    }

    @Override
    public void visit(continueStmtNode it) {
        IRBlock dest;
        if(it.dest instanceof whileStmtNode) dest = ((whileStmtNode) it.dest).condblock;
        else dest = ((forStmtNode) it.dest).updblock;
        current_block.addterminate(new Jump(dest, current_block));
    }
}
