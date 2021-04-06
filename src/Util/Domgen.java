package Util;

import MIR.IRBlock;
import MIR.IRFunction;

import java.util.ArrayList;
import java.util.HashMap;

public class Domgen {
    private IRFunction func;

    public Domgen(IRFunction func){
        this.func = func;
    }

    ArrayList<ArrayList<IRBlock>> bucket = new ArrayList<>();
    private int tot = 0;
    private ArrayList<IRBlock> dfsindex = new ArrayList<>();
    private final HashMap<IRBlock, Integer> dfsorder = new HashMap<>();
    private final HashMap<IRBlock, IRBlock> sdom = new HashMap<>(),
            union = new HashMap<>(), minVer = new HashMap<>(), dfsfather = new HashMap<>();
    private void dfs(IRBlock it){
        if(dfsorder.containsKey(it)) return ;
//        System.out.println(it.name);
        it.idom = null;
        it.domfrontiers.clear();
        dfsindex.add(it);
        sdom.put(it, it);
        dfsorder.put(it, ++tot);
        union.put(it, it);
        minVer.put(it, it);
        it.suc_block.forEach(suc -> {
            if(!dfsorder.containsKey(suc)){
                dfs(suc);
                dfsfather.put(suc, it);
            }
        });
    }
    private void dfsordergen(IRBlock entry){
        tot = 0;
        dfsindex.add(null);
        dfs(entry);
        dfsfather.put(entry, null);
    }
    private IRBlock eval(IRBlock it){
        if(union.get(it) != union.get(union.get(it))){
            if(dfsorder.get(sdom.get(minVer.get(it))) > dfsorder.get(sdom.get(eval(union.get(it)))))
                minVer.put(it, eval(union.get(it)));
            union.put(it, union.get(union.get(it)));
        }
        return minVer.get(it);
    }

    public void runforfn(){
        IRBlock tmp, entry = func.entryblock;
        bucket = new ArrayList<>();
        dfsindex = new ArrayList<>();
        tot = 0;
        dfsordergen(entry);
        for(int i = 0; i <= tot; i++) bucket.add(new ArrayList<>());
        for(int i = tot; i > 1; i--){
            tmp = dfsindex.get(i);
            for(IRBlock pre : tmp.pre_block){
                IRBlock evalblock = eval(pre);
//                if(evalblock == null) System.out.println("eval = " + pre.name);
                if(dfsorder.get(sdom.get(tmp)) > dfsorder.get(sdom.get(evalblock)))
                    sdom.put(tmp, sdom.get(evalblock));
            }
            bucket.get(dfsorder.get(sdom.get(tmp))).add(tmp);
            IRBlock x = dfsfather.get(tmp);
            union.put(tmp, x);
            for(IRBlock buk : bucket.get(dfsorder.get(x))){
                IRBlock u = eval(buk);
                buk.idom = dfsorder.get(sdom.get(u)) < dfsorder.get(x) ? u : x;
            }
            bucket.get(dfsorder.get(x)).clear();
        }
        for(int i = 2; i <= tot; i++){
            tmp = dfsindex.get(i);
            if(tmp.idom != sdom.get(tmp))
                tmp.idom = tmp.idom.idom;
        }
        int sz = dfsindex.size();
        for(int i = 1; i < sz; i++){
            IRBlock block = dfsindex.get(i);
            if(block.pre_block.size() > 1){
                for(IRBlock runner : block.pre_block){
                    while(runner != block.idom){
                        runner.domfrontiers.add(block);
                        runner = runner.idom;
                    }
                }
            }
        }
    }
}
