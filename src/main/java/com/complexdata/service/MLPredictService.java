package com.complexdata.service;

import org.springframework.stereotype.Service;

import java.util.Map;


public interface MLPredictService {
    double predict(Map<String,Double> featureMap);
}
