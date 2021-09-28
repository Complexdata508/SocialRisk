package com.complexdata.service.impl;

import com.complexdata.mapper.CityMapper;
import com.complexdata.mapper.CityriskMapper;
import com.complexdata.model.City;
import com.complexdata.model.Cityrisk;
import com.complexdata.service.CityriskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CityriskServiceImpl implements CityriskService {
@Autowired
public CityriskMapper cityriskMapper;
@Autowired
public CityMapper cityMapper;
    @Override
    public Cityrisk findOneCityinfoById(String cityId){
        Cityrisk cityrisk = new Cityrisk();
        cityrisk.setId(cityId);
        Integer jisuan = jisuan(cityId);
        cityrisk.setRiskscore(jisuan);
        Cityrisk cityrisk1 = cityriskMapper.selectOne(cityrisk);
return cityrisk1;
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
}
