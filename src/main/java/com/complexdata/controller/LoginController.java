package com.complexdata.controller;

import com.complexdata.model.User;
import com.complexdata.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class LoginController {

    @Autowired
    LoginService loginService;
    @RequestMapping("/doLogin")
    public String doLogin(User user, Model model){
        if(loginService.userLogin(user))
            return "admin/index";
        else
        {
            model.addAttribute("message","请检查用户名或密码");
            return "forward:/";
        }

    }

    @RequestMapping("/toRegister")
    public String toRegister(){
        return null;
    }

    @RequestMapping("/doRegister")
    public String doRegister(User user){
        return null;
    }


}
