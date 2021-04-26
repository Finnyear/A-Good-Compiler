package Optimize;

import MIR.*;
import MIR.Root;

public class CSE {

    private Root IRroot;
    private boolean change;

    public CSE(Root IRroot) {
        this.IRroot = IRroot;
    }

    private void runforfn(IRFunction fn) {
    }

    public boolean run() {
        change = false;
        IRroot.functions.forEach((name, fn) -> runforfn(fn));
        return change;
    }
}
