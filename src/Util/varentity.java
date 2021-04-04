package Util;

import MIR.IROperand.entity;
import MIR.IROperand.intConst;
import Util.type.Type;

public class varentity{
    public String name;
    public Type type;
    public boolean isglobal, ismember = false;
    public entity operand = null;
    public intConst index = null;

    public varentity(String name, Type type, boolean isglobal){
        this.name = name;
        this.type = type;
        this.isglobal = isglobal;
    }
}
