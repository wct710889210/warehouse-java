package com.warehouse.controller;

import com.warehouse.entity.User;
import com.warehouse.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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

    @RequestMapping("/listjson")
    @ResponseBody
    public Page<User> listjson(int pageNum){
        Pageable pageable = new PageRequest(pageNum-1,10);
        Page<User> users = userRepository.findAll(pageable);
        return users;
    }
}
