package MIR.IRInst;

import MIR.IRBlock;
import MIR.IROperand.Register;
import MIR.IROperand.entity;
import MIR.IRType.IRType;
import MIR.IRType.IRarrayType;
import Util.IRMirror;

import java.util.ArrayList;
import java.util.HashSet;

public class Phi extends Inst{
    public ArrayList<IRBlock> blocks;
    public ArrayList<entity> entities;

    public Phi(ArrayList<IRBlock> blocks, ArrayList<entity> entities, Register dest, IRBlock block) {
        super(dest, block);
        this.blocks = blocks;
        this.entities = entities;
        entities.forEach(entity -> entity.adduse(this));
        dest.def = this;
    }


    @Override
    public void addmirror(IRBlock Block, IRMirror mirror) {
        ArrayList<IRBlock> mirrorBlocks = new ArrayList<>();
        ArrayList<entity> mirrorEntities = new ArrayList<>();
        blocks.forEach(block -> mirrorBlocks.add(mirror.blockMir(block)));
        entities.forEach(entity -> mirrorEntities.add(mirror.opMir(entity)));
        Block.addphi(new Phi(mirrorBlocks, mirrorEntities, (Register)mirror.opMir(dest), Block));
    }

    @Override
    public void removeself(boolean bo) {
        if(bo) block.removeinst(this);
        entities.forEach(val -> val.removeuse(this));
    }

    @Override
    public void replaceentity(entity old, entity neww) {
        for(int i = 0; i < entities.size(); i++)
            if(entities.get(i) == old)
                entities.set(i, neww);
    }

    @Override
    public HashSet<entity> uses() {
        return new HashSet<>(entities);
    }

    public void addsrc(entity ent, IRBlock blo){entities.add(ent); ent.adduse(this); blocks.add(blo);}

    @Override
    public String toString() {
        StringBuilder ret = new StringBuilder(dest.toString() + " = phi " + dest.type.toString() + " ");
        for (int i = 0;i < entities.size();i++) {
            if (i > 0) ret.append(", ");
            ret.append("[ ").append(entities.get(i).toString());
            ret.append(", ").append("%").append(blocks.get(i).name).append(" ]");
        }
        return ret.toString();
    }
}
