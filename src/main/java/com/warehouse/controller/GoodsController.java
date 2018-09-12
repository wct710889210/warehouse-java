package com.warehouse.controller;

import com.warehouse.entity.Goods;
import com.warehouse.repository.GoodsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/goods")
public class GoodsController {
    @Autowired
    private GoodsRepository goodsRepository;

    @RequestMapping("/addPage")
    public String addPage(){
        return "addgoods";
    }

    @RequestMapping("/add")
    public String addGoods(String name,String description,String type){
        Goods goods = new Goods();
        goods.setName(name);
        goods.setDescription(description);
        goods.setType(type);
        goodsRepository.save(goods);
        return "redirect:/goods/addPage";
    }

    @RequestMapping("/list")
    public String goodsList(){
        return "goodslist";
    }
}
