package MIR.IROperand;

import MIR.IRInst.Inst;
import MIR.IRType.IRarrayType;
import MIR.IRType.IRintType;
import MIR.IRType.IRpointerType;

import java.util.HashSet;

public class stringConst extends entity{
    public String name;
    public String value;

    public stringConst(String name, String value){
        super(new IRpointerType(new IRarrayType(value.length(), new IRintType(8)), true));
        this.name = name;
        this.value = value;
    }

    public String IRvalue(){
        String str = value.replace("\\", "\\5C");
        str = str.replace("\n", "\\0A");
        str = str.replace("\0", "\\00");
        str = str.replace("\t", "\\09");
        str = str.replace("\"", "\\22");
        return str;
    }

    @Override
    public String toString() { ////////////////get name~~~
        return "@" + name;
    }

    @Override
    public HashSet<Inst> uses() {
        return new HashSet<>();
    }

    @Override
    public void adduse(Inst inst) {

    }

    @Override
    public void removeuse(Inst inst) {

    }
}
