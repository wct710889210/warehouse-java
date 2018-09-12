package com.warehouse.controller;

import com.warehouse.entity.User;
import com.warehouse.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserRepository userRepository;

    //创建用户
    @RequestMapping("/create")
    public String createUser(String userName,String password,String name){
        User user = new User();
        user.setUserName(userName);
        user.setPassword(password);
        user.setEnabled(true);
        user.setName(name);
        userRepository.save(user);
        return "redirect:/index";
    }

    //禁用用户
    @RequestMapping("/disable")
    public String disableUser(String userName){
        userRepository.disableUser(userName);
        return "redirect:/index";
    }
}
