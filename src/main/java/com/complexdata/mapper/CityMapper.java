package com.complexdata.mapper;

import com.complexdata.model.City;
import com.github.abel533.mapper.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CityMapper extends Mapper<City> {
    public List<City> searchAll();
//    public City seleteByName(@Param("name") String name);
}
