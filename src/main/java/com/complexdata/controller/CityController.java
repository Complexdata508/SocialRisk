package com.complexdata.controller;

import cn.hutool.log.Log;
import com.complexdata.model.City;
import com.complexdata.service.CityService;

import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import java.util.ArrayList;

@Controller
@RequestMapping(value = "/institutionInfo")
public class CityController {
    @Autowired
    private CityService cityService;
//查询所有城市信息
    @RequestMapping("/doInstitutionInfoManagerUI")
    public String doInstitutionInfoManagerUI(Model model){
//        PageInfo<City> cityinfo = cityService.getAllCityinfo(1, 10);
        ArrayList<City> cityList = new ArrayList<>();
        for (int i=0;i<10;i++){
            City city = new City();
            city.setName(Integer.toString(i));
            cityList.add(city);
        }
        model.addAttribute("cityList",cityList);
        return "admin/institution_info_manager";
    }

	@RequestMapping(value = "/getByInstitutionNo")
	public String getByInstitutionNo(Model model,String cityname) {
       // City oneCityinfo = cityService.findOneCityinfo(cityname);
        return "admin/institution_info_manager";
	}
    @RequestMapping("/toCityInfo/{CityId}")
    public String toCityInfo(Model model , @PathVariable("CityId") String cityId){
        System.out.println(cityId);
        return "city/CityInfo";
    }
    @RequestMapping("/returnToCityList")
    public String returnToCityList(){
        return "forward:doInstitutionInfoManagerUI";
    }

}
