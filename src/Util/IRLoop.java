package Util;

import MIR.IRBlock;

import java.util.HashSet;

public class IRLoop {


    public HashSet<IRBlock> blocks = new HashSet<>();
    public HashSet<IRBlock> tails = new HashSet<>();
    public HashSet<IRLoop> children = new HashSet<>();
    public IRBlock prehead;

    public IRLoop(){}

}
