package com.complexdata.controller;

import com.complexdata.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
    @Autowired
    private CityService cityService;
    @RequestMapping("doIndexUI")
    public String doIndexUI(){
        return "admin/index";
    }

    @RequestMapping("doHomeUI")
    public String doHomeUI(Model model ){
        model.addAttribute("cityCount",cityService.getCityCount());
        return "admin/home";
    }

}
