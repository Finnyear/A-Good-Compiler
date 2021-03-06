package MIR.IRInst;

import Asm.LOperand.Reg;
import MIR.IRBlock;
import MIR.IRFunction;
import MIR.IROperand.Register;
import MIR.IROperand.entity;
import MIR.IRType.IRType;
import Util.IRMirror;
import Util.error.myError;
import Util.position;

import java.util.ArrayList;
import java.util.HashSet;

public class Call extends Inst{
    public IRFunction callee;
    public ArrayList<entity> parameters;

    public Call(IRFunction callee, ArrayList<entity> parameters, Register dest, IRBlock block) {
        super(dest, block);
        if(callee == null) this.callee.params = callee.params;
        this.callee = callee;
        this.parameters = parameters;
        parameters.forEach(param -> param.adduse(this));
        if(dest != null) dest.def = this;
    }


    @Override
    public void addmirror(IRBlock block, IRMirror mirror) {
        ArrayList<entity> mirror_param = new ArrayList<>();
        parameters.forEach(param -> mirror_param.add(mirror.opMir(param)));
        block.addinst(new Call(callee, mirror_param, dest == null ? null : (Register)mirror.opMir(dest), block));
    }

    @Override
    public boolean nosideeffect() {
        return false;
    }

    @Override
    public void removeself(boolean bo) {
        if(bo) block.removeinst(this);
        parameters.forEach(param -> param.removeuse(this));
    }

    @Override
    public void replaceentity(entity old, entity neww) {
        for(int i = 0; i < parameters.size(); i++)
            if(parameters.get(i) == old)
                parameters.set(i, neww);
    }

    @Override
    public HashSet<entity> uses() {
        return new HashSet<>(parameters);
    }

    @Override
    public String toString() {
        StringBuilder ret = new StringBuilder();
        if (dest != null) {
            ret.append(dest.toString());
            ret.append(" = ");
            ret.append("call ");
            ret.append(dest.type.toString());
            ret.append(" ");
        } else ret.append("call void ");
        ret.append("@");
        ret.append(callee.name);
        if (parameters.size() == 0) ret.append("(");
        for (int i = 0;i < parameters.size();++i){
            ret.append((i == 0 ? "(" : ", "));
            ret.append(parameters.get(i).type.toString());
            ret.append(" ");
            ret.append(parameters.get(i).toString());
        }
        ret.append(")");
        return ret.toString();
    }
}
