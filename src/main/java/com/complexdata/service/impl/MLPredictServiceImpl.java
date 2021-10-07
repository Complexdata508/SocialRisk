package com.complexdata.service.impl;

import com.complexdata.service.MLPredictService;


import org.dmg.pmml.FieldName;
import org.dmg.pmml.PMML;
import org.jpmml.evaluator.*;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;
import org.xml.sax.SAXException;


import javax.xml.bind.JAXBException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
@Service
public class MLPredictServiceImpl  implements MLPredictService {

    private PMML pmml ;
    private Evaluator evaluator;
    private void loadPmml() {
         this.pmml = new PMML();
        InputStream inputStream = null;
        try {
            ClassPathResource resourceRandomForest = new ClassPathResource("randomForest.pmml");
//            inputStream = new FileInputStream("D:\\IdeaProgram\\testSklearnModel\\src\\main\\resources\\randomForest.pmml");
            inputStream = resourceRandomForest.getInputStream();
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (inputStream == null) {
            return ;
        }
        InputStream is = inputStream;
        try {
            this.pmml = org.jpmml.model.PMMLUtil.unmarshal(is);
        } catch (SAXException e1) {
            e1.printStackTrace();
        } catch (JAXBException e1) {
            e1.printStackTrace();
        } finally {
            //关闭输入流
            try {
                is.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        ModelEvaluatorFactory modelEvaluatorFactory = ModelEvaluatorFactory.newInstance();
         evaluator = modelEvaluatorFactory.newModelEvaluator(pmml);
        pmml = null;

    }
//    构造方法中加载模型文件
    public  MLPredictServiceImpl(){
        this.loadPmml();
    }

    @Override
    public double predict(Map<String, Double> featureMap) {
        List<InputField> inputFields = evaluator.getInputFields();
        Map<FieldName, FieldValue> arguments = new LinkedHashMap<FieldName, FieldValue>();
        for (InputField inputField : inputFields) {
            FieldName inputFieldName = inputField.getName();
            Object rawValue = featureMap.get(inputFieldName.getValue());
            FieldValue inputFieldValue = inputField.prepare(rawValue);
            arguments.put(inputFieldName, inputFieldValue);
        }

        Map<FieldName, ?> results = evaluator.evaluate(arguments);
        List<TargetField> targetFields = evaluator.getTargetFields();

        TargetField targetField = targetFields.get(0);
        FieldName targetFieldName = targetField.getName();

        Object targetFieldValue = results.get(targetFieldName);
        System.out.println("target: " + targetFieldName.getValue() + " value: " + targetFieldValue);
        double primitiveValue = -1;
        if (targetFieldValue instanceof Computable) {
            Computable computable = (Computable) targetFieldValue;
            System.out.println(computable.getResult());
            primitiveValue = (double)computable.getResult();
        }
        return primitiveValue;
    }
}
