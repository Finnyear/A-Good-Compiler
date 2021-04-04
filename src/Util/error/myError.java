package Util.error;

import Util.position;

public class myError extends Error{
    public myError(String msg, position pos){
        super("My Error: " + msg, pos);
    }

}
