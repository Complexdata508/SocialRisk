package com.complexdata.service.impl;

import com.complexdata.mapper.CityMapper;
import com.complexdata.model.City;
import com.complexdata.service.CityService;
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
}
