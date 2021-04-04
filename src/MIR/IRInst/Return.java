package MIR.IRInst;

import MIR.IRBlock;
import MIR.IROperand.entity;

import java.util.Collections;
import java.util.HashSet;

public class Return extends TerminalInst {
    public entity value;
    public Return(entity value, IRBlock block) {
        super(block);
        this.value = value;
        if(value != null)value.adduse(this);
    }

    @Override
    public void removeself(boolean bo) {
        if(bo) block.removeinst(this);
        if(value != null) value.removeuse(this);
    }

    @Override
    public void replaceentity(entity old, entity neww) {
        if(value == old) value = neww;
    }

    @Override
    public HashSet<entity> uses() {
        HashSet<entity> ret = new HashSet<>();
        if(value != null) ret.add(value);
        return ret;
    }

    @Override
    public String toString() {
        return "ret" + (value == null ? " void" :
                (" " + value.type.toString() + " " + value.toString()));
    }
}
