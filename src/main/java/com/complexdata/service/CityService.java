package com.complexdata.service;

import com.complexdata.model.City;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface CityService {
    /**
     * 分页查询所有机构信息
     * @return
     */
    public PageInfo<City> getAllCityinfo(int pageNum, int size);
    List<City> getAllCityInfo();
    public City findOneCityinfoById(String id);
    int updateOneCityinfo(City city);
    List<City> seleteCityByName(String name);

}
