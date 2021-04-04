package Util.scope;

import Util.scope.Scope;
import Util.type.Type;

import java.util.HashMap;

public class classScope extends Scope {
    public HashMap<String, Type> cons;

    public classScope(Scope parentScope){
        super(parentScope);
    }
}
