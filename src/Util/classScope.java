package Util;

import java.util.HashMap;
import java.util.HashSet;

public class classScope extends Scope{
    public HashMap<String, Type> cons;

    public classScope(Scope parentScope){
        super(parentScope);
    }
}
