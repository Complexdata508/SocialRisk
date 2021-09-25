package com.complexdata.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
    @RequestMapping("doIndexUI")
    public String doIndexUI(){
        return "admin/index";
    }

    @RequestMapping("doHomeUI")
    public String doHomeUI(){
        return "admin/home";
    }

}
