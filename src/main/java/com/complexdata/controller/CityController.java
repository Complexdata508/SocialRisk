package com.complexdata.controller;

import cn.hutool.json.JSON;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import cn.hutool.log.Log;
import com.alibaba.excel.EasyExcel;
import com.complexdata.model.City;
import com.complexdata.model.Cityrisk;
import com.complexdata.service.CityService;

import com.complexdata.service.CityriskService;
import com.complexdata.utils.Result;
import com.complexdata.utils.UploadDataListener;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/institutionInfo")
public class CityController {
    @Autowired
    private CityService cityService;
    @Autowired
    private CityriskService cityriskService;
//查询所有城市信息
    @RequestMapping("/doInstitutionInfoManagerUI/{pageNum}")
    public String doInstitutionInfoManagerUI(Model model,@PathVariable(required = false) Integer pageNum){
        if(pageNum==null){
            pageNum =1;
        }
        int pageSize = 10;

        PageInfo<City> cityinfo = cityService.getAllCityinfo(pageNum, pageSize);

        List<City> cityList = cityinfo.getList();
        model.addAttribute("cityList",cityList);
        model.addAttribute("pageNum",cityinfo.getPageNum());
        model.addAttribute("totalPageNum",cityinfo.getPages());
        model.addAttribute("isHasNext",cityinfo.isHasNextPage());
        model.addAttribute("isHasPre",cityinfo.isHasPreviousPage());
        return "admin/institution_info_manager";
    }

	@RequestMapping(value = "/getByInstitutionNo")
	public String getByInstitutionNo(Model model,String cityname) {
       // City oneCityinfo = cityService.findOneCityinfo(cityname);
        return "admin/institution_info_manager";
	}

    @RequestMapping("/returnToCityList")
    public String returnToCityList(){
        return "forward:doInstitutionInfoManagerUI";
    }


    @RequestMapping(value = "/receiveFile",method =RequestMethod.POST )
    @ResponseBody
    public String receiveExcelFile(@RequestParam("uploadFile") MultipartFile uploadFile) throws IOException {
        JSONObject jsonObject = new  JSONObject();
//        if(uploadFile==null){
//            jsonObject.set("status","400");
//            jsonObject.set("message","上传的文件为空");
//            return jsonObject.toString();
//        }
        EasyExcel.read(uploadFile.getInputStream(),City.class,new UploadDataListener(this.cityService)).sheet().doRead();
        return jsonObject.toString();
    }

    @RequestMapping(value = "/deleteRecords",method =RequestMethod.POST )
    @ResponseBody
    public String deleteRecords( @RequestParam("check_values")  String check_values){
        String[] split = check_values.split(";");
        List<String> cityIdList = new ArrayList<>();
        for(String element :split){
            if(!element.isEmpty())
                cityIdList.add(element);
        }
        Result getResult = cityService.deleteCitiesById(cityIdList);
        JSONObject result = JSONUtil.parseObj(getResult);
        return result.toString();
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
//        if (name==null){
//            name=new String();
//        }
        List<City> cityList = cityService.seleteCityByName(name);
        model.addAttribute("cityList", cityList);
        return "admin/institution_info_manager";
    }
    @RequestMapping("/seleteCityRisk/{CityId}")
    public String seleteCityRisk(Model model,@PathVariable("CityId") String cityId) {
        Cityrisk oneCityinfoById = cityriskService.findOneCityinfoById(cityId);
        System.out.println(oneCityinfoById);
        model.addAttribute("oneCityinfoById",oneCityinfoById);
        return "city/CityRisk";
    }
}
