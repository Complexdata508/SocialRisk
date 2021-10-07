package com.complexdata.service.impl;

import com.complexdata.mapper.CityMapper;
import com.complexdata.mapper.CityriskMapper;
import com.complexdata.model.City;
import com.complexdata.model.Cityrisk;
import com.complexdata.service.CityriskService;
import com.complexdata.service.MLPredictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class CityriskServiceImpl implements CityriskService {

@Autowired
public CityriskMapper cityriskMapper;
@Autowired
public CityMapper cityMapper;
@Autowired
private MLPredictService mlPredictService;
    @Override
    public Cityrisk findOneCityinfoById(String cityId){
        /**
         * 1、获取到各个一级指标的值
         *      计算的方法还不确定
         *      各个指标的值还不确定
         *      在预测过程中各个指标所起的作用，了解各个指标以及模型中训练数据中特征的含义才能进行对应
         * 2、将获取的值传入到模型中预测
         * 3、将预测的值传递出去
         */
        City city = cityMapper.selectByPrimaryKey(cityId);
        Map<String, Double> data = formCityInfoGetData(city);

//        Map<String, Double> data = new HashMap<String, Double>();
//        data.put("improved_water", 47.1);// 越高越好
//        data.put("carbon_emissions", 1.2434);// 越低越好
//        data.put("cultivated_land", 0.1754);//越高越好
//        data.put("CRI_score", 41.5);//越低越好
//        data.put("Fitness", 9.0);//越高越好
//        data.put("Year", 28.0);//中性
        double predict = mlPredictService.predict(data);
        System.out.println("预测结果"+predict);
        Cityrisk cityrisk = new Cityrisk();
        cityrisk.setId(cityId);
        cityrisk.setRiskscore((int)predict);
        cityrisk.setName(city.getName());
         return cityrisk;
    }

    public Integer jisuan(String cityId) {
        City city1 = new City();
        city1.setId(cityId);
        City city = cityMapper.selectOne(city1);
        int riskscore= city.getUnemploymentRate ()+
                city.getEndowmentInsuranceCoverage ()+
                city.getMaternityInsuranceCoverage ()+
                city.getIndustrialInjuryInsuranceCoverage ()+
                city.getMedicalInsuranceCoverage ()+
                city.getUnemploymentInsuranceCoverage ()+
                city.getProportionOfSocialSecurityExpenditureInGdp ()+
                city.getEngelCoefficient ()+
                city.getPerCapitaHousingArea ()+
                city.getLowRentHousingCoverage ()+
                city.getAverageYearsOfEducation ()+
                city.getHarmlessTreatmentRateOfDomesticWaste ()+
                city.getLifeExpectancyAtBirth ()+
                city.getPerCapitaGdpGrowthRate ()+
                city.getGrowthRateOfResidentsIncome ()+
                city.getProportionOfNonAgriculturalEmployment ()+
                city.getComprehensiveEnergyConsumptionPer ()+
                city.getPerCapitaGreenArea ()+
                city.getProportionOfEducationExpenditureInGdp ()+
                city.getCpiIndex ()+
                city.getRatioOfRegionalPer ()+
                city.getRatioOfDisposableIncome ()+
                city.getIncidenceOfRuralPoverty ()+
                city.getIncomeRatioOf ()+
                city.getGiniCoefficientOfNationalResidents ()+
                city.getRecognitionOfSocialCoreValues ()+
                city.getEvaluationValueOfSocialPublicMorality ()+
                city.getNumberOfPoliceForce ()+
                city.getNumberOfLawyersPer ()+
                city.getNumberOfPublicSecurity ()+
                city.getNumberOfWanVolunteers ()+
                city.getNumberOfPublicSecurityOfficersFighting ()+
                city.getNumberOfVolunteerGroup ()+
                city.getIncreaseRateOf ()+
                city.getNumberOfPetitionsBeyondTheLevel ()+
                city.getComplaintsAgainst ()+
                city.getCommunityComplaintsAndDisputes ()+
                city.getInformationCollectionRateOfFloatingPopulation ()+
                city.getNonCancellationRateOfFloatingPopulationInformation ()+
                city.getPreCaseResidenceRegistrationRateOfTwoDetainees ()+
                city.getNumberOfPeoplesMediationCasesAccepted ()+
                city.getSuccessRateOfPeoplesMediation ()+
                city.getNumberOfCommunityCorrectionPersonnel ()+
                city.getNumberOfRecidivistsInCommunityCorrections ()+
                city.getServiceAcceptanceRateOfSpecialPopulation ()+
                city.getNumberOfGroupEvents ()+
                city.getVisualAttendanceRateOfGroupPreventionAndTreatment ()+
                city.getElectionTurnout ()+
                city.getComplianceRateOfGrassRootsAutonomyAccordingToLaw ()+
                city.getSocialMobilityRate ()+
                city.getDevelopmentOfCivilSocietyOrganizations ()+
                city.getNaturalDisasterLevel ()+
                city.getAccidentDisasterLevel ()+
                city.getPublicHealthEventLevel ()+
                city.getSocialSecurityEventLevel ()+
                city.getGrowthRateOfLaborDisputes ()+
                city.getNumberOfCrackdownsOnPornographyGamblingAndDrugs ()+
                city.getNumberOfMultipleSexualAssaultCases ()+
                city.getNumberOfPublicSecurityPolice ()+
                city.getNumberOfFires ()+
                city.getNumberOfFatalAccidentsInProductionSafety ()+
                city.getNumberOfPersonsInCriminalDetention ()+
                city.getImpactOfForeignEconomicFrictionAndSanctions ()+
                city.getImpactOfInternationalFinancialCrisis ()+
                city.getImpactOfForeignArmedInterventionAndTerroristAttacks ()+
                city.getImpactOfWorldEconomicRecession ()+
                city.getJobSatisfaction ()+
                city.getNaturalEnvironmentSatisfaction ()+
                city.getSatisfactionRateOfCadreMassesRelationship ()+
                city.getSatisfactionWithRightsAndInterestsProtection ()+
                city.getSatisfactionWithPoliticalCivilization ()+
                city.getPeoplesSenseOfSecurity ()+
                city.getResidentsLifeSatisfaction ()+
                city.getTolerabilityOfJudicialInjustice ()+
                city.getTolerabilityOfIncomeGap ()+
                city.getTolerabilityOfPriceRise ()+
                city.getTolerabilityOfCorruption ()+
                city.getNumberOfFireSafetyHazards ()+
                city.getNumberOfElectricalSafetyHazards ()+
                city.getNumberOfProductionSafetyHazards ()+
                city.getNumberOfPotentialConstructionSafetyHazards ()+
                city.getNumberOfPotentialPublicSafetyHazards ()+
                city.getNumberOfGridManagementViolations ()+
                city.getNumberOfOtherPotentialSafetyHazards ()+
                city.getNumberOfResidentialFireSafetyHazards ()+
                city.getNumberOfPotentialSafetyHazardsOfResidentialBuildings ()+
                city.getNumberOfPotentialResidentialPublicSafetyHazards ()+
                city.getNumberOfOtherPotentialResidentialSafetyHazards ()+
                city.getNumberOfFireSafetyHazardsInPublicAreas ()+
                city.getNumberOfPotentialSafetyHazardsOfBuildingsInPublicAreas ()+
                city.getNumberOfPotentialElectricalSafetyHazardsInPublicAreas ()+
                city.getNumberOfOtherPotentialSafetyHazardsInPublicAreas();
        return riskscore/94;
    }

    private  Map<String, Double> formCityInfoGetData(City city){
        Map<String, Double> data = new HashMap<String, Double>();
//       社会保障指标
//        double param1 = city.getUnemploymentRate()+city.getEndowmentInsuranceCoverage()+city.getMaternityInsuranceCoverage()+city.getIndustrialInjuryInsuranceCoverage()+city.getMedicalInsuranceCoverage()+city.getUnemploymentInsuranceCoverage()+city.getProportionOfSocialSecurityExpenditureInGdp()+city.getEngelCoefficient()+city.getPerCapitaHousingArea()+city.getLowRentHousingCoverage()+city.getAverageYearsOfEducation()+city.getHarmlessTreatmentRateOfDomesticWaste()+city.getLifeExpectancyAtBirth()+city.getPerCapitaGdpGrowthRate()+city.getGrowthRateOfResidentsIncome()+city.getProportionOfNonAgriculturalEmployment()+city.getComprehensiveEnergyConsumptionPer()+city.getPerCapitaGreenArea()+city.getProportionOfEducationExpenditureInGdp()+city.getCpiIndex()+city.getRatioOfRegionalPer()+city.getRatioOfDisposableIncome()+city.getIncidenceOfRuralPoverty()+city.getIncomeRatioOf()+city.getGiniCoefficientOfNationalResidents()+city.getRecognitionOfSocialCoreValues()+city.getEvaluationValueOfSocialPublicMorality()+city.getNumberOfPoliceForce()+city.getNumberOfLawyersPer()+city.getNumberOfPublicSecurity()+city.get
        double one=city.getUnemploymentRate ()+
                city.getEndowmentInsuranceCoverage ()+
                city.getMaternityInsuranceCoverage ()+
                city.getIndustrialInjuryInsuranceCoverage ()+
                city.getMedicalInsuranceCoverage ()+
                city.getUnemploymentInsuranceCoverage ()+
                city.getProportionOfSocialSecurityExpenditureInGdp ()+
                city.getEngelCoefficient ()+
                city.getPerCapitaHousingArea ()+
                city.getLowRentHousingCoverage ()+
                city.getAverageYearsOfEducation ()+
                city.getHarmlessTreatmentRateOfDomesticWaste ()+
                city.getLifeExpectancyAtBirth ();
        one=one/13;
//        协调发展指标
        double two= city.getPerCapitaGdpGrowthRate ()+
                city.getGrowthRateOfResidentsIncome ()+
                city.getProportionOfNonAgriculturalEmployment ()+
                city.getComprehensiveEnergyConsumptionPer ()+
                city.getPerCapitaGreenArea ()+
                city.getProportionOfEducationExpenditureInGdp ()+
                city.getCpiIndex ();
        two=two/7;
//        社会公平指标
        double three=  city.getRatioOfRegionalPer ()+
                city.getRatioOfDisposableIncome ()+
                city.getIncidenceOfRuralPoverty ()+
                city.getIncomeRatioOf ()+
                city.getGiniCoefficientOfNationalResidents ();
        three=three/5;
//       社会秩序指标
        double four=  city.getRecognitionOfSocialCoreValues ()+
                city.getEvaluationValueOfSocialPublicMorality ()+
                city.getNumberOfPoliceForce ()+
                city.getNumberOfLawyersPer ()+
                city.getNumberOfPublicSecurity ()+
                city.getNumberOfWanVolunteers ()+
                city.getNumberOfPublicSecurityOfficersFighting ()+
                city.getNumberOfVolunteerGroup ()+
                city.getIncreaseRateOf ()+
                city.getNumberOfPetitionsBeyondTheLevel ()+
                city.getComplaintsAgainst ()+
                city.getCommunityComplaintsAndDisputes ()+
                city.getInformationCollectionRateOfFloatingPopulation ()+
                city.getNonCancellationRateOfFloatingPopulationInformation ()+
                city.getPreCaseResidenceRegistrationRateOfTwoDetainees ()+
                city.getNumberOfPeoplesMediationCasesAccepted ()+
                city.getSuccessRateOfPeoplesMediation ()+
                city.getNumberOfCommunityCorrectionPersonnel ()+
                city.getNumberOfRecidivistsInCommunityCorrections ()+
                city.getServiceAcceptanceRateOfSpecialPopulation ()+
                city.getNumberOfGroupEvents ()+
                city.getVisualAttendanceRateOfGroupPreventionAndTreatment ()+
                city.getElectionTurnout ()+
                city.getComplianceRateOfGrassRootsAutonomyAccordingToLaw ()+
                city.getSocialMobilityRate ()+
                city.getDevelopmentOfCivilSocietyOrganizations ();
        four=four/26;
//        社会安全指标
        double five=city.getNaturalDisasterLevel ()+
                city.getAccidentDisasterLevel ()+
                city.getPublicHealthEventLevel ()+
                city.getSocialSecurityEventLevel ()+
                city.getGrowthRateOfLaborDisputes ()+
                city.getNumberOfCrackdownsOnPornographyGamblingAndDrugs ()+
                city.getNumberOfMultipleSexualAssaultCases ()+
                city.getNumberOfPublicSecurityPolice ()+
                city.getNumberOfFires ()+
                city.getNumberOfFatalAccidentsInProductionSafety ()+
                city.getNumberOfPersonsInCriminalDetention ()+
                city.getImpactOfForeignEconomicFrictionAndSanctions ()+
                city.getImpactOfInternationalFinancialCrisis ()+
                city.getImpactOfForeignArmedInterventionAndTerroristAttacks ()+
                city.getImpactOfWorldEconomicRecession ();
        five=five/15;

//        社会舆情指标
        double six=city.getJobSatisfaction ()+
                city.getNaturalEnvironmentSatisfaction ()+
                city.getSatisfactionRateOfCadreMassesRelationship ()+
                city.getSatisfactionWithRightsAndInterestsProtection ()+
                city.getSatisfactionWithPoliticalCivilization ()+
                city.getPeoplesSenseOfSecurity ()+
                city.getResidentsLifeSatisfaction ()+
                city.getTolerabilityOfJudicialInjustice ()+
                city.getTolerabilityOfIncomeGap ()+
                city.getTolerabilityOfPriceRise ()+
                city.getTolerabilityOfCorruption ();
        six=six/11;
//        建筑物分级指标
        double seven=city.getNumberOfFireSafetyHazards ()+
                city.getNumberOfElectricalSafetyHazards ()+
                city.getNumberOfProductionSafetyHazards ()+
                city.getNumberOfPotentialConstructionSafetyHazards ()+
                city.getNumberOfPotentialPublicSafetyHazards ()+
                city.getNumberOfGridManagementViolations ()+
                city.getNumberOfOtherPotentialSafetyHazards ()+
                city.getNumberOfResidentialFireSafetyHazards ()+
                city.getNumberOfPotentialSafetyHazardsOfResidentialBuildings ()+
                city.getNumberOfPotentialResidentialPublicSafetyHazards ()+
                city.getNumberOfOtherPotentialResidentialSafetyHazards ()+
                city.getNumberOfFireSafetyHazardsInPublicAreas ()+
                city.getNumberOfPotentialSafetyHazardsOfBuildingsInPublicAreas ()+
                city.getNumberOfPotentialElectricalSafetyHazardsInPublicAreas ()+
                city.getNumberOfOtherPotentialSafetyHazardsInPublicAreas();
        seven=seven/15;
        data.put("improved_water", one);// 越高越好
        data.put("carbon_emissions", two);// 越低越好 30 以内
        data.put("cultivated_land", three);//越高越好  1以内
        data.put("CRI_score", seven);//越低越好
        data.put("Fitness", five);//越高越好 0-200
        data.put("Year", six);//中性

        System.out.println("one"+one);
        System.out.println("two"+two);
        System.out.println("three"+three);
        System.out.println("seven"+seven);
        System.out.println("five"+five);
        System.out.println("six"+six);

        return data;
    }

}
