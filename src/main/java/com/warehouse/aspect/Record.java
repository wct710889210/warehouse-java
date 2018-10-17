package com.warehouse.aspect;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;

@Aspect
public class Record {
    @After("execution(* com.warehouse.controller.GoodsController.addGoods(String,String,String))" +
            "&& args(name,description,type)")
    public void record(String name,String description,String type){
        System.out.println(name+"----"+description+"----"+type+"\n");
    }
}
