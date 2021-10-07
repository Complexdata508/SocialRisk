package com.complexdata.service.impl;

import cn.hutool.core.util.IdUtil;
import com.complexdata.mapper.CityMapper;
import com.complexdata.model.City;
import com.complexdata.service.CityService;
import com.complexdata.utils.Result;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CityServiceImpl implements CityService {
    @Autowired
    public CityMapper cityMapper;

    public PageInfo<City> getAllCityinfo(int pageNum, int size) {
        PageHelper.startPage(pageNum, size);
//        List<City> cities = cityMapper.searchAll();
        List<City> cityList = cityMapper.select(new City());
        PageInfo<City> CityIfno = new PageInfo<City>(cityList);
        return CityIfno;
    }

    @Override
    public List<City> getAllCityInfo() {
        return  cityMapper.select(new City());
    }

    public City findOneCityinfo(String name) {
        City city = cityMapper.findByName(name);
        return city;
    }

    @Override
    public Result deleteCitiesById(List<String> cityIdList) {
        for(String i:cityIdList)
            cityMapper.deleteByPrimaryKey(i);
        Result result = new Result();
        result.setMessage("ok");
        result.setSuccess(true);
        return result;
    }

    @Override
    public void InsertCityData(List<City> cityList) {
        for(City city:cityList){
            String CityId = IdUtil.randomUUID();
            city.setId(CityId);
            cityMapper.insert(city);
        }
    }





    @Override
    public City findOneCityinfoById(String id) {
        City city = cityMapper.selectByPrimaryKey(id);
//        Integer unemploymentRate = city.getUnemploymentRate();//计算风险等级
//        City cityNew = new City();
//        cityNew.setId(city.getId());
////        cityNew.setRiskscore(unemploymentRate);
//        int i = cityMapper.updateByPrimaryKeySelective(cityNew);
//        City city1 = cityMapper.selectByPrimaryKey(id);
        return city;
    }

    @Override
    public int updateOneCityinfo(City city) {
        int i = cityMapper.updateByPrimaryKeySelective(city);
        return i;
    }

    @Override
    public List<City> seleteCityByName(String name) {
        City city = new City();
        city.setName(name);
        List<City> cities;
        if(name==null||name.isEmpty()){
            System.out.println("cityName is null ");
            cities = cityMapper.select(new City());
        }

        else
            cities= cityMapper.select(city);
        return cities;
    }

    @Override
    public int getCityCount() {
        City city = new City();
        int count = cityMapper.selectCount(city);
        return count;
    }

}
