package com.complexdata.controller;

import com.complexdata.model.City;
import com.complexdata.model.User;
import com.complexdata.service.CityService;
import com.complexdata.service.UserService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class AdminController {
    @Autowired
    private CityService cityService;
    @Autowired
    private UserService userService;
    @RequestMapping("doIndexUI")
    public String doIndexUI(){
        return "admin/index";
    }

    @RequestMapping("doHomeUI")
    public String doHomeUI(Model model ){
        model.addAttribute("cityCount",cityService.getCityCount());
        model.addAttribute("userCount", userService.getUserCount());
        return "admin/home";
    }

    @RequestMapping("/institutionInfo/doUserInfoManagerUI/{pageNum}")
    public String doUserInfoManagerUI(Model model,@PathVariable(required = false) Integer pageNum){
        if(pageNum==null){
            pageNum =1;
        }
        int pageSize = 10;

        PageInfo<User> allUserinfo = userService.getAllUserinfo(pageNum, pageSize);

        List<User> userList = allUserinfo.getList();
        model.addAttribute("userList",userList);
        model.addAttribute("pageNum",allUserinfo.getPageNum());
        model.addAttribute("totalPageNum",allUserinfo.getPages());
        model.addAttribute("isHasNext",allUserinfo.isHasNextPage());
        model.addAttribute("isHasPre",allUserinfo.isHasPreviousPage());
        return "city/UserInfo";
    }
    @RequestMapping("/institutionInfo/deleteUser/{UserId}")
    public String doUserInfoManagerUI(@PathVariable("UserId") String uid){
        userService.deleteUser(uid);
        return "city/UserInfo";
    }
}
