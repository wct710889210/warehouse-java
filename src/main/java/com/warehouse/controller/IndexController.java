package com.warehouse.controller;

import com.warehouse.entity.Goods;
import com.warehouse.entity.User;
import com.warehouse.repository.GoodsRepository;
import com.warehouse.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class IndexController {
    @Autowired
    private GoodsRepository goodsRepository;
    @Autowired
    private UserRepository userRepository;

    @GetMapping("/")
    public String home(){
        return "redirect:/index";
    }

    @RequestMapping("/index")
    public String index(Model model){
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = ((UserDetails)principal).getUsername();
        String name = userRepository.findByUserName(username).getName();
        model.addAttribute("name",name);
        return "index";
    }

    @RequestMapping("/login")
    public String test(){
        return "login";
    }
}
