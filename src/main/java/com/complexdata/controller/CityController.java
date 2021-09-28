package com.complexdata.controller;

import com.complexdata.model.City;
import com.complexdata.model.Cityrisk;
import com.complexdata.service.CityService;

import com.complexdata.service.CityriskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import java.util.List;

@Controller
@RequestMapping(value = "/institutionInfo")
public class CityController {
    @Autowired
    private CityService cityService;
    @Autowired
    private CityriskService cityriskService;
//查询所有城市信息
    @RequestMapping("/doInstitutionInfoManagerUI")
    public String doInstitutionInfoManagerUI(Model model){
//        PageInfo<City> cityinfo = cityService.getAllCityinfo(1, 10);
//        ArrayList<City> cityList = new ArrayList<>();
//        for (int i=0;i<10;i++){
//            City city = new City();
//            city.setName(Integer.toString(i));
//            cityList.add(city);
//        }
        List<City> cityList = cityService.getAllCityInfo();
        model.addAttribute("cityList",cityList);
        return "admin/institution_info_manager";
    }
	@RequestMapping(value = "/updateCityInfo")
	public String updateCityInfo(Model model,City city){
        int i = cityService.updateOneCityinfo(city);
        List<City> cityList = cityService.getAllCityInfo();
        model.addAttribute("cityList",cityList);
        return "admin/institution_info_manager";
	}
    @RequestMapping("/toCityInfo/{CityId}")
    public String toCityInfo(Model model , @PathVariable("CityId") String cityId){
        System.out.println(cityId);
        City city= cityService.findOneCityinfoById(cityId);
        model.addAttribute("city",city);
        return "city/CityInfo";
    }
    @RequestMapping("/toCityInfochakan/{CityId}")
    public String toCityInfochakan(Model model , @PathVariable("CityId") String cityId){
        System.out.println(cityId);
        City city= cityService.findOneCityinfoById(cityId);
        model.addAttribute("city",city);
        return "city/CityInfochakan";
    }

    @RequestMapping("/seleteCityByName")
    public String seleteCityByName(Model model,String name) {
        List<City> cityList = cityService.seleteCityByName(name);
        model.addAttribute("cityList", cityList);
        return "admin/institution_info_manager";
    }

    @RequestMapping("/seleteCityRisk/{CityId}")
    public String seleteCityRisk(Model model,@PathVariable("CityId") String cityId) {
        Cityrisk oneCityinfoById = cityriskService.findOneCityinfoById(cityId);
        model.addAttribute("oneCityinfoById",oneCityinfoById);
        return "city/CityRisk";
    }
    @RequestMapping("/returnToCityList")
    public String returnToCityList(){

        return "forward:doInstitutionInfoManagerUI";
    }

}
