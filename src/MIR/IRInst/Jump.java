package MIR.IRInst;

import MIR.IRBlock;
import MIR.IROperand.entity;
import Util.IRMirror;

import java.util.HashSet;

public class Jump extends TerminalInst{
    public IRBlock destblock;
    public Jump(IRBlock destblock, IRBlock block) {
        super(block);
        this.destblock = destblock;
    }

    @Override
    public void removeself(boolean bo) {
        if(bo) block.removeinst(this);
    }

    @Override
    public void replaceentity(entity old, entity neww) {

    }

    @Override
    public HashSet<entity> uses() {
        return new HashSet<>();
    }

    @Override
    public void addmirror(IRBlock block, IRMirror mirror) {
        block.addterminate(new Jump(mirror.blockMir(destblock), block));
    }

    @Override
    public boolean nosideeffect() {
        return false;
    }

    @Override
    public String toString() {
        return "br label %" + destblock.name;
    }
}
