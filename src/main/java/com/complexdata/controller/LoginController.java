package com.complexdata.controller;

import com.complexdata.model.User;
import com.complexdata.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
//@RequestMapping("/")
public class LoginController {

    @Autowired
    LoginService loginService;
    @RequestMapping(value = "/doLogin",method = RequestMethod.POST)
    public String doLogin(User user, Model model){
        if(user.getPassword().isEmpty()||user.getUsername().isEmpty()){
            model.addAttribute("message","用户名或密码为空");
            return "forward:/";
        }
        else if(loginService.userLogin(user))
            return "admin/index";
        else
        {
            model.addAttribute("message","请检查用户名或密码");
            return "forward:/";
        }

    }

    @RequestMapping("/toRegister")
    public String toRegister(){
        return "register";
    }

    @RequestMapping("/doRegister")
    public String doRegister(User user){

        loginService.userRegister(user);
        return "forward:/";
    }


}
