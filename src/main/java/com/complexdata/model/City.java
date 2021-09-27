package com.complexdata.model;

import javax.persistence.Id;

public class City {
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getUnemploymentRate() {
        return unemploymentRate;
    }

    public void setUnemploymentRate(Integer unemploymentRate) {
        this.unemploymentRate = unemploymentRate;
    }

    @Id
    private String id;


    private String name;
    private Integer unemploymentRate;
    private Integer endowmentInsuranceCoverage;

    public Integer getEndowmentInsuranceCoverage() {
        return endowmentInsuranceCoverage;
    }

    public void setEndowmentInsuranceCoverage(Integer endowmentInsuranceCoverage) {
        this.endowmentInsuranceCoverage = endowmentInsuranceCoverage;
    }
    private Integer maternityInsuranceCoverage;
    private Integer industrialInjuryInsuranceCoverage;
    private Integer medicalInsuranceCoverage;
    private Integer unemploymentInsuranceCoverage;
    private Integer proportionOfSocialSecurityExpenditureInGdp ;
    private Integer engelCoefficient ;
    private Integer perCapitaHousingArea ;
    private Integer lowRentHousingCoverage ;
    private Integer averageYearsOfEducation ;
    private Integer harmlessTreatmentRateOfDomesticWaste ;
    private Integer lifeExpectancyAtBirth ;
    private Integer perCapitaGdpGrowthRate ;

    public Integer getPerCapitaGdpGrowthRate() {
        return perCapitaGdpGrowthRate;
    }

    public void setPerCapitaGdpGrowthRate(Integer perCapitaGdpGrowthRate) {
        this.perCapitaGdpGrowthRate = perCapitaGdpGrowthRate;
    }

    private Integer growthRateOfResidentsIncome ;
    private Integer proportionOfNonAgriculturalEmployment;

    public Integer getComprehensiveEnergyConsumptionPer() {
        return comprehensiveEnergyConsumptionPer;
    }

    public void setComprehensiveEnergyConsumptionPer(Integer comprehensiveEnergyConsumptionPer) {
        this.comprehensiveEnergyConsumptionPer = comprehensiveEnergyConsumptionPer;
    }

    private Integer comprehensiveEnergyConsumptionPer;
    private Integer perCapitaGreenArea ;
    private Integer proportionOfEducationExpenditureInGdp ;

    public Integer getProportionOfEducationExpenditureInGdp() {
        return proportionOfEducationExpenditureInGdp;
    }

    public void setProportionOfEducationExpenditureInGdp(Integer proportionOfEducationExpenditureInGdp) {
        this.proportionOfEducationExpenditureInGdp = proportionOfEducationExpenditureInGdp;
    }

    private Integer cpiIndex ;

    public Integer getProportionOfSocialSecurityExpenditureInGdp() {
        return proportionOfSocialSecurityExpenditureInGdp;
    }

    public void setProportionOfSocialSecurityExpenditureInGdp(Integer proportionOfSocialSecurityExpenditureInGdp) {
        this.proportionOfSocialSecurityExpenditureInGdp = proportionOfSocialSecurityExpenditureInGdp;
    }

    public Integer getCpiIndex() {
        return cpiIndex;
    }

    public void setCpiIndex(Integer cpiIndex) {
        this.cpiIndex = cpiIndex;
    }

    private Integer ratioOfRegionalPer ;
    private Integer ratioOfDisposableIncome ;
    private Integer incidenceOfRuralPoverty ;
    private Integer incomeRatioOf ;
    private Integer giniCoefficientOfNationalResidents ;
//    private Integer proportionOfMiddleIncomePeople ;//表一表二之间未输入
//    private Integer ratioOfPerCapita;//表一表二之间未输入
    private Integer recognitionOfSocialCoreValues ;
    private Integer evaluationValueOfSocialPublicMorality ;
    private Integer numberOfPoliceForce ;
    private Integer numberOfLawyersPer ;
    private Integer numberOfPublicSecurity ;
    private Integer numberOfWanVolunteers ;

    public Integer getNumberOfWanVolunteers() {
        return numberOfWanVolunteers;
    }

    public void setNumberOfWanVolunteers(Integer numberOfWanVolunteers) {
        this.numberOfWanVolunteers = numberOfWanVolunteers;
    }

    private Integer numberOfPublicSecurityOfficersFighting;
    private Integer numberOfVolunteerGroup;
    private Integer increaseRateOf;
    private Integer numberOfPetitionsBeyondTheLevel;
    private Integer complaintsAgainst ;
    private Integer communityComplaintsAndDisputes ;
    private Integer informationCollectionRateOfFloatingPopulation ;
    private Integer nonCancellationRateOfFloatingPopulationInformation ;
    private Integer preCaseResidenceRegistrationRateOfTwoDetainees ;
    private Integer numberOfPeoplesMediationCasesAccepted ;
    private Integer  successRateOfPeoplesMediation ;
    private Integer  numberOfCommunityCorrectionPersonnel;

    public Integer getNumberOfCommunityCorrectionPersonnel() {
        return numberOfCommunityCorrectionPersonnel;
    }

    public void setNumberOfCommunityCorrectionPersonnel(Integer numberOfCommunityCorrectionPersonnel) {
        this.numberOfCommunityCorrectionPersonnel = numberOfCommunityCorrectionPersonnel;
    }

    private Integer numberOfRecidivistsInCommunityCorrections ;
    private Integer serviceAcceptanceRateOfSpecialPopulation ;
    private Integer numberOfGroupEvents ;
    private Integer visualAttendanceRateOfGroupPreventionAndTreatment ;
    private Integer electionTurnout;
    private Integer complianceRateOfGrassRootsAutonomyAccordingToLaw ;
    private Integer socialMobilityRate ;
    private Integer developmentOfCivilSocietyOrganizations ;
    private Integer naturalDisasterLevel ;
    private Integer accidentDisasterLevel ;
    private Integer publicHealthEventLevel ;
    private Integer socialSecurityEventLevel ;



//    private Integer numberOfMajorEconomicCases ;
//    private Integer numberOfMajorCriminalCases ;
//
//    public Integer getNumberOfMajorEconomicCases() {
//        return numberOfMajorEconomicCases;
//    }
//
//    public void setNumberOfMajorEconomicCases(Integer numberOfMajorEconomicCases) {
//        this.numberOfMajorEconomicCases = numberOfMajorEconomicCases;
//    }
//
//    public Integer getNumberOfMajorCriminalCases() {
//        return numberOfMajorCriminalCases;
//    }

//    public void setNumberOfMajorCriminalCases(Integer numberOfMajorCriminalCases) {
//        this.numberOfMajorCriminalCases = numberOfMajorCriminalCases;
//    }

    private Integer growthRateOfLaborDisputes ;
    private Integer numberOfCrackdownsOnPornographyGamblingAndDrugs ;
    private Integer numberOfMultipleSexualAssaultCases ;
    private Integer numberOfPublicSecurityPolice ;
    //暂停

























    private Integer numberOfFires ;
    private Integer numberOfFatalAccidentsInProductionSafety ;
    private Integer numberOfPersonsInCriminalDetention ;
    private Integer impactOfForeignEconomicFrictionAndSanctions ;
    private Integer impactOfInternationalFinancialCrisis ;
    private Integer impactOfForeignArmedInterventionAndTerroristAttacks ;
    private Integer impactOfWorldEconomicRecession ;
    private Integer jobSatisfaction ;
    private Integer naturalEnvironmentSatisfaction ;
    private Integer satisfactionRateOfCadreMassesRelationship ;
    private Integer satisfactionWithRightsAndInterestsProtection ;
    private Integer satisfactionWithPoliticalCivilization ;
    private Integer peoplesSenseOfSecurity ;
    private Integer residentsLifeSatisfaction ;
    private Integer tolerabilityOfJudicialInjustice ;
    private Integer tolerabilityOfIncomeGap ;
    private Integer tolerabilityOfPriceRise ;
    private Integer tolerabilityOfCorruption ;
    private Integer numberOfFireSafetyHazards ;
    private Integer numberOfElectricalSafetyHazards ;
    private Integer numberOfProductionSafetyHazards ;
    private Integer numberOfPotentialConstructionSafetyHazards ;
    private Integer numberOfPotentialPublicSafetyHazards ;
    private Integer numberOfGridManagementViolations ;
    private Integer numberOfOtherPotentialSafetyHazards ;
    private Integer numberOfResidentialFireSafetyHazards ;
    private Integer numberOfPotentialSafetyHazardsOfResidentialBuildings ;
    private Integer numberOfPotentialResidentialPublicSafetyHazards ;
  //  private Integer numberOfGridManagementViolations1 ;
    private Integer numberOfOtherPotentialResidentialSafetyHazards ;
    private Integer numberOfFireSafetyHazardsInPublicAreas ;
    private Integer numberOfPotentialSafetyHazardsOfBuildingsInPublicAreas ;
    private Integer numberOfPotentialElectricalSafetyHazardsInPublicAreas ;
  //  private Integer numberOfGridManagementViolations2 ;
    private Integer numberOfOtherPotentialSafetyHazardsInPublicAreas ;

    public Integer getMaternityInsuranceCoverage() {
        return maternityInsuranceCoverage;
    }

    public void setMaternityInsuranceCoverage(Integer maternityInsuranceCoverage) {
        this.maternityInsuranceCoverage = maternityInsuranceCoverage;
    }

    public Integer getIndustrialInjuryInsuranceCoverage() {
        return industrialInjuryInsuranceCoverage;
    }

    public void setIndustrialInjuryInsuranceCoverage(Integer industrialInjuryInsuranceCoverage) {
        this.industrialInjuryInsuranceCoverage = industrialInjuryInsuranceCoverage;
    }

    public Integer getMedicalInsuranceCoverage() {
        return medicalInsuranceCoverage;
    }

    public void setMedicalInsuranceCoverage(Integer medicalInsuranceCoverage) {
        this.medicalInsuranceCoverage = medicalInsuranceCoverage;
    }

    public Integer getUnemploymentInsuranceCoverage() {
        return unemploymentInsuranceCoverage;
    }

    public void setUnemploymentInsuranceCoverage(Integer unemploymentInsuranceCoverage) {
        this.unemploymentInsuranceCoverage = unemploymentInsuranceCoverage;
    }

    public Integer getEngelCoefficient() {
        return engelCoefficient;
    }

    public void setEngelCoefficient(Integer engelCoefficient) {
        this.engelCoefficient = engelCoefficient;
    }

    public Integer getPerCapitaHousingArea() {
        return perCapitaHousingArea;
    }

    public void setPerCapitaHousingArea(Integer perCapitaHousingArea) {
        this.perCapitaHousingArea = perCapitaHousingArea;
    }

    public Integer getLowRentHousingCoverage() {
        return lowRentHousingCoverage;
    }

    public void setLowRentHousingCoverage(Integer lowRentHousingCoverage) {
        this.lowRentHousingCoverage = lowRentHousingCoverage;
    }

    public Integer getAverageYearsOfEducation() {
        return averageYearsOfEducation;
    }

    public void setAverageYearsOfEducation(Integer averageYearsOfEducation) {
        this.averageYearsOfEducation = averageYearsOfEducation;
    }

    public Integer getHarmlessTreatmentRateOfDomesticWaste() {
        return harmlessTreatmentRateOfDomesticWaste;
    }

    public void setHarmlessTreatmentRateOfDomesticWaste(Integer harmlessTreatmentRateOfDomesticWaste) {
        this.harmlessTreatmentRateOfDomesticWaste = harmlessTreatmentRateOfDomesticWaste;
    }

    public Integer getLifeExpectancyAtBirth() {
        return lifeExpectancyAtBirth;
    }

    public void setLifeExpectancyAtBirth(Integer lifeExpectancyAtBirth) {
        this.lifeExpectancyAtBirth = lifeExpectancyAtBirth;
    }


    public Integer getGrowthRateOfResidentsIncome() {
        return growthRateOfResidentsIncome;
    }

    public void setGrowthRateOfResidentsIncome(Integer growthRateOfResidentsIncome) {
        this.growthRateOfResidentsIncome = growthRateOfResidentsIncome;
    }

    public Integer getProportionOfNonAgriculturalEmployment() {
        return proportionOfNonAgriculturalEmployment;
    }

    public void setProportionOfNonAgriculturalEmployment(Integer proportionOfNonAgriculturalEmployment) {
        this.proportionOfNonAgriculturalEmployment = proportionOfNonAgriculturalEmployment;
    }

    public Integer getPerCapitaGreenArea() {
        return perCapitaGreenArea;
    }

    public void setPerCapitaGreenArea(Integer perCapitaGreenArea) {
        this.perCapitaGreenArea = perCapitaGreenArea;
    }


    public Integer getRatioOfRegionalPer() {
        return ratioOfRegionalPer;
    }

    public void setRatioOfRegionalPer(Integer ratioOfRegionalPer) {
        this.ratioOfRegionalPer = ratioOfRegionalPer;
    }

    public Integer getRatioOfDisposableIncome() {
        return ratioOfDisposableIncome;
    }

    public void setRatioOfDisposableIncome(Integer ratioOfDisposableIncome) {
        this.ratioOfDisposableIncome = ratioOfDisposableIncome;
    }

    public Integer getIncidenceOfRuralPoverty() {
        return incidenceOfRuralPoverty;
    }

    public void setIncidenceOfRuralPoverty(Integer incidenceOfRuralPoverty) {
        this.incidenceOfRuralPoverty = incidenceOfRuralPoverty;
    }

    public Integer getIncomeRatioOf() {
        return incomeRatioOf;
    }

    public void setIncomeRatioOf(Integer incomeRatioOf) {
        this.incomeRatioOf = incomeRatioOf;
    }

    public Integer getGiniCoefficientOfNationalResidents() {
        return giniCoefficientOfNationalResidents;
    }

    public void setGiniCoefficientOfNationalResidents(Integer giniCoefficientOfNationalResidents) {
        this.giniCoefficientOfNationalResidents = giniCoefficientOfNationalResidents;
    }

//    public Integer getProportionOfMiddleIncomePeople() {
//        return proportionOfMiddleIncomePeople;
//    }
//
//    public void setProportionOfMiddleIncomePeople(Integer proportionOfMiddleIncomePeople) {
//        this.proportionOfMiddleIncomePeople = proportionOfMiddleIncomePeople;
//    }
//
//    public Integer getRatioOfPerCapita() {
//        return ratioOfPerCapita;
//    }
//
//    public void setRatioOfPerCapita(Integer ratioOfPerCapita) {
//        this.ratioOfPerCapita = ratioOfPerCapita;
//    }

    public Integer getRecognitionOfSocialCoreValues() {
        return recognitionOfSocialCoreValues;
    }

    public void setRecognitionOfSocialCoreValues(Integer recognitionOfSocialCoreValues) {
        this.recognitionOfSocialCoreValues = recognitionOfSocialCoreValues;
    }

    public Integer getEvaluationValueOfSocialPublicMorality() {
        return evaluationValueOfSocialPublicMorality;
    }

    public void setEvaluationValueOfSocialPublicMorality(Integer evaluationValueOfSocialPublicMorality) {
        this.evaluationValueOfSocialPublicMorality = evaluationValueOfSocialPublicMorality;
    }

    public Integer getNumberOfPoliceForce() {
        return numberOfPoliceForce;
    }

    public void setNumberOfPoliceForce(Integer numberOfPoliceForce) {
        this.numberOfPoliceForce = numberOfPoliceForce;
    }

    public Integer getNumberOfLawyersPer() {
        return numberOfLawyersPer;
    }

    public void setNumberOfLawyersPer(Integer numberOfLawyersPer) {
        this.numberOfLawyersPer = numberOfLawyersPer;
    }

    public Integer getNumberOfPublicSecurity() {
        return numberOfPublicSecurity;
    }

    public void setNumberOfPublicSecurity(Integer numberOfPublicSecurity) {
        this.numberOfPublicSecurity = numberOfPublicSecurity;
    }

//    public Integer getNumberOf_10000Volunteers() {
//        return numberOf_10000Volunteers;
//    }
//
//    public void setNumberOf_10000Volunteers(Integer numberOf_10000Volunteers) {
//        this.numberOf_10000Volunteers = numberOf_10000Volunteers;
//    }

    public Integer getNumberOfPublicSecurityOfficersFighting() {
        return numberOfPublicSecurityOfficersFighting;
    }

    public void setNumberOfPublicSecurityOfficersFighting(Integer numberOfPublicSecurityOfficersFighting) {
        this.numberOfPublicSecurityOfficersFighting = numberOfPublicSecurityOfficersFighting;
    }

    public Integer getNumberOfVolunteerGroup() {
        return numberOfVolunteerGroup;
    }

    public void setNumberOfVolunteerGroup(Integer numberOfVolunteerGroup) {
        this.numberOfVolunteerGroup = numberOfVolunteerGroup;
    }

    public Integer getIncreaseRateOf() {
        return increaseRateOf;
    }

    public void setIncreaseRateOf(Integer increaseRateOf) {
        this.increaseRateOf = increaseRateOf;
    }

    public Integer getNumberOfPetitionsBeyondTheLevel() {
        return numberOfPetitionsBeyondTheLevel;
    }

    public void setNumberOfPetitionsBeyondTheLevel(Integer numberOfPetitionsBeyondTheLevel) {
        this.numberOfPetitionsBeyondTheLevel = numberOfPetitionsBeyondTheLevel;
    }

    public Integer getComplaintsAgainst() {
        return complaintsAgainst;
    }

    public void setComplaintsAgainst(Integer complaintsAgainst) {
        this.complaintsAgainst = complaintsAgainst;
    }

    public Integer getCommunityComplaintsAndDisputes() {
        return communityComplaintsAndDisputes;
    }

    public void setCommunityComplaintsAndDisputes(Integer communityComplaintsAndDisputes) {
        this.communityComplaintsAndDisputes = communityComplaintsAndDisputes;
    }

    public Integer getInformationCollectionRateOfFloatingPopulation() {
        return informationCollectionRateOfFloatingPopulation;
    }

    public void setInformationCollectionRateOfFloatingPopulation(Integer informationCollectionRateOfFloatingPopulation) {
        this.informationCollectionRateOfFloatingPopulation = informationCollectionRateOfFloatingPopulation;
    }

    public Integer getNonCancellationRateOfFloatingPopulationInformation() {
        return nonCancellationRateOfFloatingPopulationInformation;
    }

    public void setNonCancellationRateOfFloatingPopulationInformation(Integer nonCancellationRateOfFloatingPopulationInformation) {
        this.nonCancellationRateOfFloatingPopulationInformation = nonCancellationRateOfFloatingPopulationInformation;
    }

    public Integer getPreCaseResidenceRegistrationRateOfTwoDetainees() {
        return preCaseResidenceRegistrationRateOfTwoDetainees;
    }

    public void setPreCaseResidenceRegistrationRateOfTwoDetainees(Integer preCaseResidenceRegistrationRateOfTwoDetainees) {
        this.preCaseResidenceRegistrationRateOfTwoDetainees = preCaseResidenceRegistrationRateOfTwoDetainees;
    }

    public Integer getNumberOfPeoplesMediationCasesAccepted() {
        return numberOfPeoplesMediationCasesAccepted;
    }

    public void setNumberOfPeoplesMediationCasesAccepted(Integer numberOfPeoplesMediationCasesAccepted) {
        this.numberOfPeoplesMediationCasesAccepted = numberOfPeoplesMediationCasesAccepted;
    }

    public Integer getSuccessRateOfPeoplesMediation() {
        return successRateOfPeoplesMediation;
    }

    public void setSuccessRateOfPeoplesMediation(Integer successRateOfPeoplesMediation) {
        this.successRateOfPeoplesMediation = successRateOfPeoplesMediation;
    }

    public Integer getNumberOfRecidivistsInCommunityCorrections() {
        return numberOfRecidivistsInCommunityCorrections;
    }

    public void setNumberOfRecidivistsInCommunityCorrections(Integer numberOfRecidivistsInCommunityCorrections) {
        this.numberOfRecidivistsInCommunityCorrections = numberOfRecidivistsInCommunityCorrections;
    }

    public Integer getServiceAcceptanceRateOfSpecialPopulation() {
        return serviceAcceptanceRateOfSpecialPopulation;
    }

    public void setServiceAcceptanceRateOfSpecialPopulation(Integer serviceAcceptanceRateOfSpecialPopulation) {
        this.serviceAcceptanceRateOfSpecialPopulation = serviceAcceptanceRateOfSpecialPopulation;
    }

    public Integer getNumberOfGroupEvents() {
        return numberOfGroupEvents;
    }

    public void setNumberOfGroupEvents(Integer numberOfGroupEvents) {
        this.numberOfGroupEvents = numberOfGroupEvents;
    }

    public Integer getVisualAttendanceRateOfGroupPreventionAndTreatment() {
        return visualAttendanceRateOfGroupPreventionAndTreatment;
    }

    public void setVisualAttendanceRateOfGroupPreventionAndTreatment(Integer visualAttendanceRateOfGroupPreventionAndTreatment) {
        this.visualAttendanceRateOfGroupPreventionAndTreatment = visualAttendanceRateOfGroupPreventionAndTreatment;
    }

    public Integer getElectionTurnout() {
        return electionTurnout;
    }

    public void setElectionTurnout(Integer electionTurnout) {
        this.electionTurnout = electionTurnout;
    }

    public Integer getComplianceRateOfGrassRootsAutonomyAccordingToLaw() {
        return complianceRateOfGrassRootsAutonomyAccordingToLaw;
    }

    public void setComplianceRateOfGrassRootsAutonomyAccordingToLaw(Integer complianceRateOfGrassRootsAutonomyAccordingToLaw) {
        this.complianceRateOfGrassRootsAutonomyAccordingToLaw = complianceRateOfGrassRootsAutonomyAccordingToLaw;
    }

    public Integer getSocialMobilityRate() {
        return socialMobilityRate;
    }

    public void setSocialMobilityRate(Integer socialMobilityRate) {
        this.socialMobilityRate = socialMobilityRate;
    }

    public Integer getDevelopmentOfCivilSocietyOrganizations() {
        return developmentOfCivilSocietyOrganizations;
    }

    public void setDevelopmentOfCivilSocietyOrganizations(Integer developmentOfCivilSocietyOrganizations) {
        this.developmentOfCivilSocietyOrganizations = developmentOfCivilSocietyOrganizations;
    }

    public Integer getNaturalDisasterLevel() {
        return naturalDisasterLevel;
    }

    public void setNaturalDisasterLevel(Integer naturalDisasterLevel) {
        this.naturalDisasterLevel = naturalDisasterLevel;
    }

    public Integer getAccidentDisasterLevel() {
        return accidentDisasterLevel;
    }

    public void setAccidentDisasterLevel(Integer accidentDisasterLevel) {
        this.accidentDisasterLevel = accidentDisasterLevel;
    }

    public Integer getPublicHealthEventLevel() {
        return publicHealthEventLevel;
    }

    public void setPublicHealthEventLevel(Integer publicHealthEventLevel) {
        this.publicHealthEventLevel = publicHealthEventLevel;
    }

    public Integer getSocialSecurityEventLevel() {
        return socialSecurityEventLevel;
    }

    public void setSocialSecurityEventLevel(Integer socialSecurityEventLevel) {
        this.socialSecurityEventLevel = socialSecurityEventLevel;
    }

    public Integer getGrowthRateOfLaborDisputes() {
        return growthRateOfLaborDisputes;
    }

    public void setGrowthRateOfLaborDisputes(Integer growthRateOfLaborDisputes) {
        this.growthRateOfLaborDisputes = growthRateOfLaborDisputes;
    }

    public Integer getNumberOfCrackdownsOnPornographyGamblingAndDrugs() {
        return numberOfCrackdownsOnPornographyGamblingAndDrugs;
    }

    public void setNumberOfCrackdownsOnPornographyGamblingAndDrugs(Integer numberOfCrackdownsOnPornographyGamblingAndDrugs) {
        this.numberOfCrackdownsOnPornographyGamblingAndDrugs = numberOfCrackdownsOnPornographyGamblingAndDrugs;
    }

    public Integer getNumberOfMultipleSexualAssaultCases() {
        return numberOfMultipleSexualAssaultCases;
    }

    public void setNumberOfMultipleSexualAssaultCases(Integer numberOfMultipleSexualAssaultCases) {
        this.numberOfMultipleSexualAssaultCases = numberOfMultipleSexualAssaultCases;
    }

    public Integer getNumberOfPublicSecurityPolice() {
        return numberOfPublicSecurityPolice;
    }

    public void setNumberOfPublicSecurityPolice(Integer numberOfPublicSecurityPolice) {
        this.numberOfPublicSecurityPolice = numberOfPublicSecurityPolice;
    }

    public Integer getNumberOfFires() {
        return numberOfFires;
    }

    public void setNumberOfFires(Integer numberOfFires) {
        this.numberOfFires = numberOfFires;
    }

    public Integer getNumberOfFatalAccidentsInProductionSafety() {
        return numberOfFatalAccidentsInProductionSafety;
    }

    public void setNumberOfFatalAccidentsInProductionSafety(Integer numberOfFatalAccidentsInProductionSafety) {
        this.numberOfFatalAccidentsInProductionSafety = numberOfFatalAccidentsInProductionSafety;
    }

    public Integer getNumberOfPersonsInCriminalDetention() {
        return numberOfPersonsInCriminalDetention;
    }

    public void setNumberOfPersonsInCriminalDetention(Integer numberOfPersonsInCriminalDetention) {
        this.numberOfPersonsInCriminalDetention = numberOfPersonsInCriminalDetention;
    }

    public Integer getImpactOfForeignEconomicFrictionAndSanctions() {
        return impactOfForeignEconomicFrictionAndSanctions;
    }

    public void setImpactOfForeignEconomicFrictionAndSanctions(Integer impactOfForeignEconomicFrictionAndSanctions) {
        this.impactOfForeignEconomicFrictionAndSanctions = impactOfForeignEconomicFrictionAndSanctions;
    }

    public Integer getImpactOfInternationalFinancialCrisis() {
        return impactOfInternationalFinancialCrisis;
    }

    public void setImpactOfInternationalFinancialCrisis(Integer impactOfInternationalFinancialCrisis) {
        this.impactOfInternationalFinancialCrisis = impactOfInternationalFinancialCrisis;
    }

    public Integer getImpactOfForeignArmedInterventionAndTerroristAttacks() {
        return impactOfForeignArmedInterventionAndTerroristAttacks;
    }

    public void setImpactOfForeignArmedInterventionAndTerroristAttacks(Integer impactOfForeignArmedInterventionAndTerroristAttacks) {
        this.impactOfForeignArmedInterventionAndTerroristAttacks = impactOfForeignArmedInterventionAndTerroristAttacks;
    }

    public Integer getImpactOfWorldEconomicRecession() {
        return impactOfWorldEconomicRecession;
    }

    public void setImpactOfWorldEconomicRecession(Integer impactOfWorldEconomicRecession) {
        this.impactOfWorldEconomicRecession = impactOfWorldEconomicRecession;
    }

    public Integer getJobSatisfaction() {
        return jobSatisfaction;
    }

    public void setJobSatisfaction(Integer jobSatisfaction) {
        this.jobSatisfaction = jobSatisfaction;
    }

    public Integer getNaturalEnvironmentSatisfaction() {
        return naturalEnvironmentSatisfaction;
    }

    public void setNaturalEnvironmentSatisfaction(Integer naturalEnvironmentSatisfaction) {
        this.naturalEnvironmentSatisfaction = naturalEnvironmentSatisfaction;
    }

    public Integer getSatisfactionRateOfCadreMassesRelationship() {
        return satisfactionRateOfCadreMassesRelationship;
    }

    public void setSatisfactionRateOfCadreMassesRelationship(Integer satisfactionRateOfCadreMassesRelationship) {
        this.satisfactionRateOfCadreMassesRelationship = satisfactionRateOfCadreMassesRelationship;
    }

    public Integer getSatisfactionWithRightsAndInterestsProtection() {
        return satisfactionWithRightsAndInterestsProtection;
    }

    public void setSatisfactionWithRightsAndInterestsProtection(Integer satisfactionWithRightsAndInterestsProtection) {
        this.satisfactionWithRightsAndInterestsProtection = satisfactionWithRightsAndInterestsProtection;
    }

    public Integer getSatisfactionWithPoliticalCivilization() {
        return satisfactionWithPoliticalCivilization;
    }

    public void setSatisfactionWithPoliticalCivilization(Integer satisfactionWithPoliticalCivilization) {
        this.satisfactionWithPoliticalCivilization = satisfactionWithPoliticalCivilization;
    }

    public Integer getPeoplesSenseOfSecurity() {
        return peoplesSenseOfSecurity;
    }

    public void setPeoplesSenseOfSecurity(Integer peoplesSenseOfSecurity) {
        this.peoplesSenseOfSecurity = peoplesSenseOfSecurity;
    }

    public Integer getResidentsLifeSatisfaction() {
        return residentsLifeSatisfaction;
    }

    public void setResidentsLifeSatisfaction(Integer residentsLifeSatisfaction) {
        this.residentsLifeSatisfaction = residentsLifeSatisfaction;
    }

    public Integer getTolerabilityOfJudicialInjustice() {
        return tolerabilityOfJudicialInjustice;
    }

    public void setTolerabilityOfJudicialInjustice(Integer tolerabilityOfJudicialInjustice) {
        this.tolerabilityOfJudicialInjustice = tolerabilityOfJudicialInjustice;
    }

    public Integer getTolerabilityOfIncomeGap() {
        return tolerabilityOfIncomeGap;
    }

    public void setTolerabilityOfIncomeGap(Integer tolerabilityOfIncomeGap) {
        this.tolerabilityOfIncomeGap = tolerabilityOfIncomeGap;
    }

    public Integer getTolerabilityOfPriceRise() {
        return tolerabilityOfPriceRise;
    }

    public void setTolerabilityOfPriceRise(Integer tolerabilityOfPriceRise) {
        this.tolerabilityOfPriceRise = tolerabilityOfPriceRise;
    }

    public Integer getTolerabilityOfCorruption() {
        return tolerabilityOfCorruption;
    }

    public void setTolerabilityOfCorruption(Integer tolerabilityOfCorruption) {
        this.tolerabilityOfCorruption = tolerabilityOfCorruption;
    }

    public Integer getNumberOfFireSafetyHazards() {
        return numberOfFireSafetyHazards;
    }

    public void setNumberOfFireSafetyHazards(Integer numberOfFireSafetyHazards) {
        this.numberOfFireSafetyHazards = numberOfFireSafetyHazards;
    }

    public Integer getNumberOfElectricalSafetyHazards() {
        return numberOfElectricalSafetyHazards;
    }

    public void setNumberOfElectricalSafetyHazards(Integer numberOfElectricalSafetyHazards) {
        this.numberOfElectricalSafetyHazards = numberOfElectricalSafetyHazards;
    }

    public Integer getNumberOfProductionSafetyHazards() {
        return numberOfProductionSafetyHazards;
    }

    public void setNumberOfProductionSafetyHazards(Integer numberOfProductionSafetyHazards) {
        this.numberOfProductionSafetyHazards = numberOfProductionSafetyHazards;
    }

    public Integer getNumberOfPotentialConstructionSafetyHazards() {
        return numberOfPotentialConstructionSafetyHazards;
    }

    public void setNumberOfPotentialConstructionSafetyHazards(Integer numberOfPotentialConstructionSafetyHazards) {
        this.numberOfPotentialConstructionSafetyHazards = numberOfPotentialConstructionSafetyHazards;
    }

    public Integer getNumberOfPotentialPublicSafetyHazards() {
        return numberOfPotentialPublicSafetyHazards;
    }

    public void setNumberOfPotentialPublicSafetyHazards(Integer numberOfPotentialPublicSafetyHazards) {
        this.numberOfPotentialPublicSafetyHazards = numberOfPotentialPublicSafetyHazards;
    }

    public Integer getNumberOfGridManagementViolations() {
        return numberOfGridManagementViolations;
    }

    public void setNumberOfGridManagementViolations(Integer numberOfGridManagementViolations) {
        this.numberOfGridManagementViolations = numberOfGridManagementViolations;
    }

    public Integer getNumberOfOtherPotentialSafetyHazards() {
        return numberOfOtherPotentialSafetyHazards;
    }

    public void setNumberOfOtherPotentialSafetyHazards(Integer numberOfOtherPotentialSafetyHazards) {
        this.numberOfOtherPotentialSafetyHazards = numberOfOtherPotentialSafetyHazards;
    }

    public Integer getNumberOfResidentialFireSafetyHazards() {
        return numberOfResidentialFireSafetyHazards;
    }

    public void setNumberOfResidentialFireSafetyHazards(Integer numberOfResidentialFireSafetyHazards) {
        this.numberOfResidentialFireSafetyHazards = numberOfResidentialFireSafetyHazards;
    }

    public Integer getNumberOfPotentialSafetyHazardsOfResidentialBuildings() {
        return numberOfPotentialSafetyHazardsOfResidentialBuildings;
    }

    public void setNumberOfPotentialSafetyHazardsOfResidentialBuildings(Integer numberOfPotentialSafetyHazardsOfResidentialBuildings) {
        this.numberOfPotentialSafetyHazardsOfResidentialBuildings = numberOfPotentialSafetyHazardsOfResidentialBuildings;
    }

    public Integer getNumberOfPotentialResidentialPublicSafetyHazards() {
        return numberOfPotentialResidentialPublicSafetyHazards;
    }

    public void setNumberOfPotentialResidentialPublicSafetyHazards(Integer numberOfPotentialResidentialPublicSafetyHazards) {
        this.numberOfPotentialResidentialPublicSafetyHazards = numberOfPotentialResidentialPublicSafetyHazards;
    }

//    public Integer getNumberOfGridManagementViolations1() {
//        return numberOfGridManagementViolations1;
//    }
//
//    public void setNumberOfGridManagementViolations1(Integer numberOfGridManagementViolations1) {
//        this.numberOfGridManagementViolations1 = numberOfGridManagementViolations1;
//    }

    public Integer getNumberOfOtherPotentialResidentialSafetyHazards() {
        return numberOfOtherPotentialResidentialSafetyHazards;
    }

    public void setNumberOfOtherPotentialResidentialSafetyHazards(Integer numberOfOtherPotentialResidentialSafetyHazards) {
        this.numberOfOtherPotentialResidentialSafetyHazards = numberOfOtherPotentialResidentialSafetyHazards;
    }

    public Integer getNumberOfFireSafetyHazardsInPublicAreas() {
        return numberOfFireSafetyHazardsInPublicAreas;
    }

    public void setNumberOfFireSafetyHazardsInPublicAreas(Integer numberOfFireSafetyHazardsInPublicAreas) {
        this.numberOfFireSafetyHazardsInPublicAreas = numberOfFireSafetyHazardsInPublicAreas;
    }

    public Integer getNumberOfPotentialSafetyHazardsOfBuildingsInPublicAreas() {
        return numberOfPotentialSafetyHazardsOfBuildingsInPublicAreas;
    }

    public void setNumberOfPotentialSafetyHazardsOfBuildingsInPublicAreas(Integer numberOfPotentialSafetyHazardsOfBuildingsInPublicAreas) {
        this.numberOfPotentialSafetyHazardsOfBuildingsInPublicAreas = numberOfPotentialSafetyHazardsOfBuildingsInPublicAreas;
    }

    public Integer getNumberOfPotentialElectricalSafetyHazardsInPublicAreas() {
        return numberOfPotentialElectricalSafetyHazardsInPublicAreas;
    }

    public void setNumberOfPotentialElectricalSafetyHazardsInPublicAreas(Integer numberOfPotentialElectricalSafetyHazardsInPublicAreas) {
        this.numberOfPotentialElectricalSafetyHazardsInPublicAreas = numberOfPotentialElectricalSafetyHazardsInPublicAreas;
    }

//    public Integer getNumberOfGridManagementViolations2() {
//        return numberOfGridManagementViolations2;
//    }
//
//    public void setNumberOfGridManagementViolations2(Integer numberOfGridManagementViolations2) {
//        this.numberOfGridManagementViolations2 = numberOfGridManagementViolations2;
//    }

    public Integer getNumberOfOtherPotentialSafetyHazardsInPublicAreas() {
        return numberOfOtherPotentialSafetyHazardsInPublicAreas;
    }

    public void setNumberOfOtherPotentialSafetyHazardsInPublicAreas(Integer numberOfOtherPotentialSafetyHazardsInPublicAreas) {
        this.numberOfOtherPotentialSafetyHazardsInPublicAreas = numberOfOtherPotentialSafetyHazardsInPublicAreas;
    }
}
