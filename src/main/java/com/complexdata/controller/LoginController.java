package com.complexdata.controller;

import com.complexdata.mapper.UserMapper;
import com.complexdata.model.User;
import com.complexdata.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
//@RequestMapping("/")
public class LoginController {

    @Autowired
    LoginService loginService;
    @Autowired
    UserMapper userMapper;
    @RequestMapping(value = "/doLogin",method = RequestMethod.POST)
    public String doLogin(User user, Model model, HttpSession httpSession){
        if(user.getPassword().isEmpty()||user.getUsername().isEmpty()){
            httpSession.setAttribute("message","用户名或密码为空");
            return "forward:/";
        }
        else if(loginService.userLogin(user)) {
            User searchUser = new User();
            searchUser.setUsername(user.getUsername());
            User getUser = userMapper.selectOne(searchUser);
            httpSession.setAttribute("loginUser",user);
            httpSession.setAttribute("getUser", getUser);
            httpSession.removeAttribute("status");
            return "admin/index";
        }
        else
        {
            httpSession.setAttribute("status",true);
            httpSession.setAttribute("message","用户名或密码错误");
            model.addAttribute("status",true);
            model.addAttribute("message","用户名或密码错误");
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
    @RequestMapping("/logout")
    public String logout(HttpSession httpSession){
        httpSession.invalidate();

        return "redirect:/";
    }



}
