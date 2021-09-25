package com.complexdata.service;

import com.complexdata.model.City;
import com.complexdata.model.InstitutionInfo;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface CityService {
    /**
     * 分页查询所有机构信息
     * @return
     */
    public PageInfo<City> getAllCityinfo(int pageNum, int size);
    List<City> getAllCityInfo();
    public City findOneCityinfo(String name);

}
