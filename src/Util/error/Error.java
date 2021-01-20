package Util.error;

import Util.position;

public class Error extends RuntimeException{
    private String msg; // message
    private position pos;
    public Error(String msg, position pos){
        this.msg = msg;
        this.pos = pos;
    }
    public String toString(){
        return msg + ": " +pos.toString();
    }
}
