package com.complexdata.utils;
import com.alibaba.fastjson.JSON;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.complexdata.model.City;
import com.complexdata.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;


public class UploadDataListener extends AnalysisEventListener<City> {

    private  static final Logger LOGGER = LoggerFactory.getLogger(com.complexdata.utils.UploadDataListener.class);
    @Autowired
    CityService cityService;
    private static final int BATCH_COUNT = 100;
    List<City> list = new ArrayList<>();


    @Override
    public void invoke(City city, AnalysisContext analysisContext) {
        LOGGER.info("解析到一条数据:{}", city.toString());
        list.add(city);
        if(list.size()>=BATCH_COUNT){
            saveData();
            list.clear();
        }
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {
        saveData();
        LOGGER.info("所有数据解析完成！");
    }

    private void saveData() {
        LOGGER.info("{}条数据，开始存储数据库！", list.size());
        cityService.InsertCityData(this.list);
        LOGGER.info("存储数据库成功！");
    }

    public UploadDataListener(CityService cityService){
        this.cityService = cityService;
    }
    public UploadDataListener(){

    }
}
