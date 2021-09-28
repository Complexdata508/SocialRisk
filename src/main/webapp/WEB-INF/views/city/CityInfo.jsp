<%--
  Created by IntelliJ IDEA.
  User: SureWang
  Date: 2021/9/26
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>城市信息</title>
    <link rel="stylesheet" href="/SocialRisk/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/SocialRisk/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="/SocialRisk/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="/SocialRisk/css/style.css">

    <link rel="stylesheet" href="/SocialRisk/plugins/angularjs/pagination.css">
    <script src="/SocialRisk/plugins/angularjs/pagination.js"></script>

    <script src="/SocialRisk/js/base_pagination.js"></script>
    <script src="/SocialRisk/js/controller/institutionInfoController.js"></script>


    <script src="/SocialRisk/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="/SocialRisk/plugins/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class=" " id="editModal" tabindex="1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" >
        <form action="http://localhost:8080/SocialRisk/institutionInfo/updateCityInfo.shtml">
        <div class="modal-content">
            <div class="modal-header">
<%--                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>--%>
                <h3 id="myModalLabel">城市信息编辑</h3>
            </div>
            <div class="modal-body">

                <table class="table table-bordered table-striped"  width="800px">
                    <tbody>
                    <tr>
                        <td></td>
                        <td><input  class="form-control"  value="${city.id}" name="id" type="hidden">  </td>
                    </tr>
                    <tr>
                        <td>城市名称</td>
                        <td><input  class="form-control" placeholder="城市名称" value="${city.name}" name="name">  </td>
                    </tr>
                    <tr>
                        <td>失业率</td>
                        <td><input  class="form-control" placeholder="失业率" value="${city.unemploymentRate}" name="unemploymentRate">  </td>
                    </tr>
                    <tr>
                        <td>养老保险覆盖率</td>
                        <td><input  class="form-control" placeholder="养老保险覆盖率" value="${city.endowmentInsuranceCoverage}" name="endowmentInsuranceCoverage">  </td>
                    </tr>
                    <tr>
                        <td>生育保险覆盖率</td>
                        <td><input  class="form-control" placeholder="生育保险覆盖率" value="${city.maternityInsuranceCoverage}" name="maternityInsuranceCoverage">  </td>
                    </tr>
                    <tr>
                        <td>工伤保险覆盖率</td>
                        <td><input  class="form-control" placeholder="工伤保险覆盖率" value="${city.industrialInjuryInsuranceCoverage}" name="industrialInjuryInsuranceCoverage">  </td>
                    </tr>
                    <tr>
                        <td>医疗保险覆盖率</td>
                        <td><input  class="form-control" placeholder="医疗保险覆盖率" value="${city.medicalInsuranceCoverage}" name="medicalInsuranceCoverage">  </td>
                    </tr>
                    <tr>
                        <td>失业保险覆盖率</td>
                        <td><input  class="form-control" placeholder="失业保险覆盖率" value="${city.unemploymentInsuranceCoverage}" name="unemploymentInsuranceCoverage">  </td>
                    </tr>
                    <tr>
                        <td>社会保障支出占GDP比重</td>
                        <td><input  class="form-control" placeholder="社会保障支出占GDP比重" value="${city.proportionOfSocialSecurityExpenditureInGdp}" name="proportionOfSocialSecurityExpenditureInGdp">  </td>
                    </tr>
                    <tr>
                        <td>恩格尔系数</td>
                        <td><input  class="form-control" placeholder="恩格尔系数" value="${city.engelCoefficient}" name="engelCoefficient">  </td>
                    </tr>
                    <tr>
                        <td>人均住房面积</td>
                        <td><input  class="form-control" placeholder="人均住房面积" value="${city.perCapitaHousingArea}" name="perCapitaHousingArea">  </td>
                    </tr>
                    <tr>
                        <td>廉租房覆盖率</td>
                        <td><input  class="form-control" placeholder="廉租房覆盖率" value="${city.lowRentHousingCoverage}" name="lowRentHousingCoverage">  </td>
                    </tr>
                    <tr>
                        <td>平均受教育年限</td>
                        <td><input  class="form-control" placeholder="平均受教育年限" value="${city.averageYearsOfEducation}" name="averageYearsOfEducation">  </td>
                    </tr>
                    <tr>
                        <td>生活垃圾无害化处理率</td>
                        <td><input  class="form-control" placeholder="生活垃圾无害化处理率" value="${city.harmlessTreatmentRateOfDomesticWaste}" name="harmlessTreatmentRateOfDomesticWaste">  </td>
                    </tr>
                    <tr>
                        <td>出生时预期寿命</td>
                        <td><input  class="form-control" placeholder="出生时预期寿命" value="${city.lifeExpectancyAtBirth}" name="lifeExpectancyAtBirth">  </td>
                    </tr>
                    <tr>
                        <td>人均国内生产总值增长率</td>
                        <td><input  class="form-control" placeholder="人均国内生产总值增长率" value="${city.perCapitaGdpGrowthRate}" name="perCapitaGdpGrowthRate">  </td>
                    </tr>
                    <tr>
                        <td>居民收入增长率</td>
                        <td><input  class="form-control" placeholder="居民收入增长率" value="${city.growthRateOfResidentsIncome}" name="growthRateOfResidentsIncome" >  </td>
                    </tr>
                    <tr>
                        <td>非农产业就业比重</td>
                        <td><input  class="form-control" placeholder="非农产业就业比重" value="${city.proportionOfNonAgriculturalEmployment}" name="proportionOfNonAgriculturalEmployment">  </td>
                    </tr>
                    <tr>
                        <td>万元GDP综合能耗</td>
                        <td><input  class="form-control" placeholder="万元GDP综合能耗" value="${city.comprehensiveEnergyConsumptionPer}" name="comprehensiveEnergyConsumptionPer">  </td>
                    </tr>
                    <tr>
                        <td>人均绿地面积</td>
                        <td><input  class="form-control" placeholder="人均绿地面积" value="${city.perCapitaGreenArea}" name="perCapitaGreenArea">  </td>
                    </tr>
                    <tr>
                        <td>教育支出占GDP比重</td>
                        <td><input  class="form-control" placeholder="教育支出占GDP比重" value="${city.proportionOfEducationExpenditureInGdp}" name="proportionOfEducationExpenditureInGdp">  </td>
                    </tr>
                    <tr>
                        <td>CPI指数</td>
                        <td><input  class="form-control" placeholder="CPI指数" value="${city.cpiIndex}" name="cpiIndex">  </td>
                    </tr>
                    <tr>
                        <td>地区人均收入与全国人均收入差距比例</td>
                        <td><input  class="form-control" placeholder="地区人均收入与全国人均收入差距比例" value="${city.ratioOfRegionalPer}" name="ratioOfRegionalPer">  </td>
                    </tr>
                    <tr>
                        <td>城镇居民可支配收入和农村居民纯收入差距比值</td>
                        <td><input  class="form-control" placeholder="城镇居民可支配收入和农村居民纯收入差距比值" value="${city.ratioOfDisposableIncome}" name="ratioOfDisposableIncome">  </td>
                    </tr>
                    <tr>
                        <td>农村贫困发生率</td>
                        <td><input  class="form-control" placeholder="农村贫困发生率" value="${city.incidenceOfRuralPoverty}" name="incidenceOfRuralPoverty">  </td>
                    </tr>
                    <tr>
                        <td>10%最高收入者与10%最低收入者收入比值</td>
                        <td><input  class="form-control" placeholder="10%最高收入者与10%最低收入者收入比值" value="${city.incomeRatioOf}" name="incomeRatioOf">  </td>
                    </tr>
                    <tr>
                        <td>全国居民基尼系数</td>
                        <td><input  class="form-control" placeholder="全国居民基尼系数" value="${city.giniCoefficientOfNationalResidents}" name="giniCoefficientOfNationalResidents">  </td>
                    </tr>
                        <td>社会核心价值认同度</td>
                        <td><input  class="form-control" placeholder="社会核心价值认同度" value="${city.recognitionOfSocialCoreValues}" name="recognitionOfSocialCoreValues">  </td>
                    </tr>
                    <tr>
                        <td>对社会公共道德的评价值</td>
                        <td><input  class="form-control" placeholder="对社会公共道德的评价值" value="${city.evaluationValueOfSocialPublicMorality}" name="evaluationValueOfSocialPublicMorality">  </td>
                    </tr>
                    <tr>
                        <td>每万人警力配备人数</td>
                        <td><input  class="form-control" placeholder="每万人警力配备人数" value="${city.numberOfPoliceForce}" name="numberOfPoliceForce">  </td>
                    </tr>
                    <tr>
                        <td>每万人中的律师人数</td>
                        <td><input  class="form-control" placeholder="每万人中的律师人数" value="${city.numberOfLawyersPer}" name="numberOfLawyersPer">  </td>
                    </tr>
                    <tr>
                        <td>万人保治安员人数</td>
                        <td><input  class="form-control" placeholder="万人保治安员人数" value="${city.numberOfPublicSecurity}" name="numberOfPublicSecurity">  </td>
                    </tr>
                    <tr>
                        <td>万人义务力量打击违法犯罪数</td>
                        <td><input  class="form-control" placeholder="万人义务力量打击违法犯罪数" value="${city.numberOfWanVolunteers}" name="numberOfWanVolunteers">  </td>
                    </tr>
                    <tr>
                        <td>万人保治安员打击违法犯罪数</td>
                        <td><input  class="form-control" placeholder="万人保治安员打击违法犯罪数" value="${city.numberOfPublicSecurityOfficersFighting}" name="numberOfPublicSecurityOfficersFighting">  </td>
                    </tr>
                    <tr>
                        <td>万人义务群防群治队员数</td>
                        <td><input  class="form-control" placeholder="万人义务群防群治队员数" value="${city.numberOfVolunteerGroup}" name="numberOfVolunteerGroup">  </td>
                    </tr>
                    <tr>
                        <td>上访(含信访)增加率</td>
                        <td><input  class="form-control" placeholder="上访(含信访)增加率" value="${city.increaseRateOf}" name="increaseRateOf">  </td>
                    </tr>
                    <tr>
                        <td>越级上访宗数</td>
                        <td><input  class="form-control" placeholder="越级上访宗数" value="${city.numberOfPetitionsBeyondTheLevel}" name="numberOfPetitionsBeyondTheLevel">  </td>
                    </tr>
                    <tr>
                        <td>黄赌毒举报投诉</td>
                        <td><input  class="form-control" placeholder="黄赌毒举报投诉" value="${city.complaintsAgainst}" name="complaintsAgainst">  </td>
                    </tr>
                    <tr>
                        <td>社区投诉纠纷</td>
                        <td><input  class="form-control" placeholder="社区投诉纠纷" value="${city.communityComplaintsAndDisputes}" name="communityComplaintsAndDisputes">  </td>
                    </tr>
                    <tr>
                        <td>流动人口信息采集率</td>
                        <td><input  class="form-control" placeholder="流动人口信息采集率" value="${city.informationCollectionRateOfFloatingPopulation}" name="informationCollectionRateOfFloatingPopulation">  </td>
                    </tr>
                    <tr>
                        <td>流动人口信息未注销率</td>
                        <td><input  class="form-control" placeholder="流动人口信息未注销率" value="${city.nonCancellationRateOfFloatingPopulationInformation}" name="nonCancellationRateOfFloatingPopulationInformation">  </td>
                    </tr>
                    <tr>
                        <td>两拘人员案前居住登记率</td>
                        <td><input  class="form-control" placeholder="两拘人员案前居住登记率" value="${city.preCaseResidenceRegistrationRateOfTwoDetainees}" name="preCaseResidenceRegistrationRateOfTwoDetainees">  </td>
                    </tr>
                    <tr>
                        <td>人民调解受理数</td>
                        <td><input  class="form-control" placeholder="人民调解受理数" value="${city.numberOfPeoplesMediationCasesAccepted}" name="numberOfPeoplesMediationCasesAccepted">  </td>
                    </tr>
                    <tr>
                        <td>人民调解成功率</td>
                        <td><input  class="form-control" placeholder="人民调解成功率" value="${city.successRateOfPeoplesMediation}" name="successRateOfPeoplesMediation">  </td>
                    </tr>
                    <tr>
                        <td>社区矫正人员违反规定人数</td>
                        <td><input  class="form-control" placeholder="社区矫正人员违反规定人数" value="${city.numberOfCommunityCorrectionPersonnel}" name="numberOfCommunityCorrectionPersonnel">  </td>
                    </tr>
                    <tr>
                        <td>社区矫正人员重新犯罪人数</td>
                        <td><input  class="form-control" placeholder="社区矫正人员重新犯罪人数" value="${city.numberOfRecidivistsInCommunityCorrections}" name="numberOfRecidivistsInCommunityCorrections">  </td>
                    </tr>
                    <tr>
                        <td>特殊人群服务纳管率</td>
                        <td><input  class="form-control" placeholder="特殊人群服务纳管率" value="${city.serviceAcceptanceRateOfSpecialPopulation}" name="serviceAcceptanceRateOfSpecialPopulation">  </td>
                    </tr>
                    <tr>
                        <td>群体性事件数</td>
                        <td><input  class="form-control" placeholder="群体性事件数" value="${city.numberOfGroupEvents}" name="numberOfGroupEvents">  </td>
                    </tr>
                    <tr>
                        <td>群防群治可视化出勤率</td>
                        <td><input  class="form-control" placeholder="群防群治可视化出勤率" value="${city.visualAttendanceRateOfGroupPreventionAndTreatment}" name="visualAttendanceRateOfGroupPreventionAndTreatment">  </td>
                    </tr>
                    <tr>
                        <td>选举投票率</td>
                        <td><input  class="form-control" placeholder="选举投票率" value="${city.electionTurnout}" name="electionTurnout">  </td>
                    </tr>
                    <tr>
                        <td>基层依法自治达标率</td>
                        <td><input  class="form-control" placeholder="基层依法自治达标率" value="${city.complianceRateOfGrassRootsAutonomyAccordingToLaw}" name="complianceRateOfGrassRootsAutonomyAccordingToLaw">  </td>
                    </tr>
                    <tr>
                        <td>社会流动率</td>
                        <td><input  class="form-control" placeholder="社会流动率" value="${city.socialMobilityRate}" name="socialMobilityRate">  </td>
                    </tr>
                    <tr>
                        <td>民间组织发育度</td>
                        <td><input  class="form-control" placeholder="民间组织发育度" value="${city.developmentOfCivilSocietyOrganizations}" name="developmentOfCivilSocietyOrganizations">  </td>
                    </tr>
                    <tr>
                        <td>自然灾害级别</td>
                        <td><input  class="form-control" placeholder="自然灾害级别" value="${city.naturalDisasterLevel}" name="naturalDisasterLevel">  </td>
                    </tr>
                    <tr>
                        <td>事故灾难级别</td>
                        <td><input  class="form-control" placeholder="事故灾难级别" value="${city.accidentDisasterLevel}" name="accidentDisasterLevel">  </td>
                    </tr>
                    <tr>
                        <td>公共卫生事件级别</td>
                        <td><input  class="form-control" placeholder="公共卫生事件级别" value="${city.publicHealthEventLevel}" name="publicHealthEventLevel">  </td>
                    </tr>
                    <tr>
                        <td>社会安全事件级别</td>
                        <td><input  class="form-control" placeholder="社会安全事件级别" value="${city.socialSecurityEventLevel}" name="socialSecurityEventLevel">  </td>
                    </tr>

<%--                    <tr>--%>
<%--                        <td>万人重大经济案件立案件数</td>--%>
<%--                        <td><input  class="form-control" placeholder="万人重大经济案件立案件数" value="${city.numberOfMajorEconomicCases}" name="numberOfMajorEconomicCases">  </td>--%>
<%--                    </tr>--%>
<%--                    <tr>--%>
<%--                        <td>万人重大刑事案件立案件数</td>--%>
<%--                        <td><input  class="form-control" placeholder="万人重大刑事案件立案件数" value="${city.numberOfMajorCriminalCases}" name="numberOfMajorCriminalCases">  </td>--%>
<%--                    </tr>--%>
                    <tr>
                        <td>劳资纠纷增长率</td>
                        <td><input  class="form-control" placeholder="劳资纠纷增长率" value="${city.growthRateOfLaborDisputes}" name="growthRateOfLaborDisputes">  </td>
                    </tr>
                    <tr>
                        <td>黄赌毒及食药品打击人数</td>
                        <td><input  class="form-control" placeholder="黄赌毒及食药品打击人数" value="${city.numberOfCrackdownsOnPornographyGamblingAndDrugs}" name="numberOfCrackdownsOnPornographyGamblingAndDrugs">  </td>
                    </tr>
                    <tr>
                        <td>万人多发性侵财案件数</td>
                        <td><input  class="form-control" placeholder="万人多发性侵财案件数" value="${city.numberOfMultipleSexualAssaultCases}" name="numberOfMultipleSexualAssaultCases">  </td>
                    </tr>
                    <tr>
                        <td>万人治安警情数</td>
                        <td><input  class="form-control" placeholder="万人治安警情数" value="${city.numberOfPublicSecurityPolice}" name="numberOfPublicSecurityPolice">  </td>
                    </tr>
                    <tr>
                        <td>火灾发生宗数</td>
                        <td><input  class="form-control" placeholder="火灾发生宗数" value="${city.numberOfFires}" name="numberOfFires">  </td>
                    </tr>
                    <tr>
                        <td>生产安全死亡事故数</td>
                        <td><input  class="form-control" placeholder="生产安全死亡事故数" value="${city.numberOfFatalAccidentsInProductionSafety}" name="numberOfFatalAccidentsInProductionSafety">  </td>
                    </tr>
                    <tr>
                        <td>刑事拘留人数</td>
                        <td><input  class="form-control" placeholder="刑事拘留人数" value="${city.numberOfPersonsInCriminalDetention}" name="numberOfPersonsInCriminalDetention">  </td>
                    </tr>
                    <tr>
                        <td>国外经济摩擦和制裁影响度</td>
                        <td><input  class="form-control" placeholder="国外经济摩擦和制裁影响度" value="${city.impactOfForeignEconomicFrictionAndSanctions}" name="impactOfForeignEconomicFrictionAndSanctions">  </td>
                    </tr>
                    <tr>
                        <td>国际性金融危机影响度</td>
                        <td><input  class="form-control" placeholder="国际性金融危机影响度" value="${city.impactOfInternationalFinancialCrisis}" name="impactOfInternationalFinancialCrisis">  </td>
                    </tr>
                    <tr>
                        <td>国外武装干涉和恐怖主义袭击影响度</td>
                        <td><input  class="form-control" placeholder="国外武装干涉和恐怖主义袭击影响度" value="${city.impactOfForeignArmedInterventionAndTerroristAttacks}" name="impactOfForeignArmedInterventionAndTerroristAttacks">  </td>
                    </tr>
                    <tr>
                        <td>世界经济衰退影响度</td>
                        <td><input  class="form-control" placeholder="世界经济衰退影响度" value="${city.impactOfWorldEconomicRecession}" name="impactOfWorldEconomicRecession">  </td>
                    </tr>
                    <tr>
                        <td>工作状况满意度</td>
                        <td><input  class="form-control" placeholder="工作状况满意度" value="${city.jobSatisfaction}" name="jobSatisfaction">  </td>
                    </tr>
                    <tr>
                        <td>自然环境满意度</td>
                        <td><input  class="form-control" placeholder="自然环境满意度" value="${city.naturalEnvironmentSatisfaction}" name="naturalEnvironmentSatisfaction">  </td>
                    </tr>
                    <tr>
                        <td>干群关系满意率</td>
                        <td><input  class="form-control" placeholder="干群关系满意率" value="${city.satisfactionRateOfCadreMassesRelationship}" name="satisfactionRateOfCadreMassesRelationship">  </td>
                    </tr>
                    <tr>
                        <td>权益保护满意度</td>
                        <td><input  class="form-control" placeholder="权益保护满意度" value="${city.satisfactionWithRightsAndInterestsProtection}" name="satisfactionWithRightsAndInterestsProtection">  </td>
                    </tr>
                    <tr>
                        <td>政治文明满意度</td>
                        <td><input  class="form-control" placeholder="政治文明满意度" value="${city.satisfactionWithPoliticalCivilization}" name="satisfactionWithPoliticalCivilization">  </td>
                    </tr>
                    <tr>
                        <td>群众安全感</td>
                        <td><input  class="form-control" placeholder="群众安全感" value="${city.peoplesSenseOfSecurity}" name="peoplesSenseOfSecurity">  </td>
                    </tr>
                    <tr>
                        <td>居民生活满意度</td>
                        <td><input  class="form-control" placeholder="居民生活满意度" value="${city.residentsLifeSatisfaction}" name="residentsLifeSatisfaction">  </td>
                    </tr>
                    <tr>
                        <td>对司法不公正的可容忍程度</td>
                        <td><input  class="form-control" placeholder="对司法不公正的可容忍程度" value="${city.tolerabilityOfJudicialInjustice}" name="tolerabilityOfJudicialInjustice">  </td>
                    </tr>
                    <tr>
                        <td>对收入差距的可容忍程度</td>
                        <td><input  class="form-control" placeholder="对收入差距的可容忍程度" value="${city.tolerabilityOfIncomeGap}" name="tolerabilityOfIncomeGap">  </td>
                    </tr>
                    <tr>
                        <td>对物价上涨的可容忍程度</td>
                        <td><input  class="form-control" placeholder="对物价上涨的可容忍程度" value="${city.tolerabilityOfPriceRise}" name="tolerabilityOfPriceRise">  </td>
                    </tr>
                    <tr>
                        <td>对腐败现象的可容忍程度</td>
                        <td><input  class="form-control" placeholder="对腐败现象的可容忍程度" value="${city.tolerabilityOfCorruption}" name="tolerabilityOfCorruption">  </td>
                    </tr>
                    <tr>
                        <td>消防安全隐患数</td>
                        <td><input  class="form-control" placeholder="消防安全隐患数" value="${city.numberOfFireSafetyHazards}" name="numberOfFireSafetyHazards">  </td>
                    </tr>
                    <tr>
                        <td>电气安全隐患数</td>
                        <td><input  class="form-control" placeholder="电气安全隐患数" value="${city.numberOfElectricalSafetyHazards}" name="numberOfElectricalSafetyHazards">  </td>
                    </tr>
                    <tr>
                        <td>生产安全隐患数</td>
                        <td><input  class="form-control" placeholder="生产安全隐患数" value="${city.numberOfProductionSafetyHazards}" name="numberOfProductionSafetyHazards">  </td>
                    </tr>
                    <tr>
                        <td>建筑安全隐患数</td>
                        <td><input  class="form-control" placeholder="建筑安全隐患数" value="${city.numberOfPotentialConstructionSafetyHazards}" name="numberOfPotentialConstructionSafetyHazards">  </td>
                    </tr>
                    <tr>
                        <td>公共安全隐患数</td>
                        <td><input  class="form-control" placeholder="公共安全隐患数" value="${city.numberOfPotentialPublicSafetyHazards}" name="numberOfPotentialPublicSafetyHazards">  </td>
                    </tr>
                    <tr>
                        <td>网格管理违规数</td>
                        <td><input  class="form-control" placeholder="网格管理违规数" value="${city.numberOfGridManagementViolations}" name="numberOfGridManagementViolations">  </td>
                    </tr>
                    <tr>
                        <td>其它安全隐患数</td>
                        <td><input  class="form-control" placeholder="其它安全隐患数" value="${city.numberOfOtherPotentialSafetyHazards}" name="numberOfOtherPotentialSafetyHazards">  </td>
                    </tr>
                    <tr>
                        <td>住宅消防安全隐患数</td>
                        <td><input  class="form-control" placeholder="住宅消防安全隐患数" value="${city.numberOfResidentialFireSafetyHazards}" name="numberOfResidentialFireSafetyHazards">  </td>
                    </tr>
                    <tr>
                        <td>住宅建筑安全隐患数</td>
                        <td><input  class="form-control" placeholder="住宅建筑安全隐患数" value="${city.numberOfPotentialSafetyHazardsOfResidentialBuildings}" name="numberOfPotentialSafetyHazardsOfResidentialBuildings">  </td>
                    </tr>
                    <tr>
                        <td>住宅公共安全隐患数</td>
                        <td><input  class="form-control" placeholder="住宅公共安全隐患数" value="${city.numberOfPotentialResidentialPublicSafetyHazards}" name="numberOfPotentialResidentialPublicSafetyHazards">  </td>
                    </tr>
<%--                    <tr>--%>
<%--                        <td>网格管理违规数2</td>--%>
<%--                        <td><input  class="form-control" placeholder="网格管理违规数2" value="${city.numberOfGridManagementViolations1}" name="numberOfGridManagementViolations1">  </td>--%>
<%--                    </tr>--%>
                    <tr>
                        <td>住宅其它安全隐患数</td>
                        <td><input  class="form-control" placeholder="住宅其它安全隐患数" value="${city.numberOfOtherPotentialResidentialSafetyHazards}" name="numberOfOtherPotentialResidentialSafetyHazards">  </td>
                    </tr>
                    <tr>
                        <td>公共区域消防安全隐患数</td>
                        <td><input  class="form-control" placeholder="公共区域消防安全隐患数" value="${city.numberOfFireSafetyHazardsInPublicAreas}" name="numberOfFireSafetyHazardsInPublicAreas">  </td>
                    </tr>
                    <tr>
                        <td>公共区域建筑安全隐患数</td>
                        <td><input  class="form-control" placeholder="公共区域建筑安全隐患数" value="${city.numberOfPotentialSafetyHazardsOfBuildingsInPublicAreas}" name="numberOfPotentialSafetyHazardsOfBuildingsInPublicAreas">  </td>
                    </tr>
                    <tr>
                        <td>公共区域电气安全隐患数</td>
                        <td><input  class="form-control" placeholder="公共区域电气安全隐患数" value="${city.numberOfPotentialElectricalSafetyHazardsInPublicAreas}" name="numberOfPotentialElectricalSafetyHazardsInPublicAreas">  </td>
                    </tr>
<%--                    <tr>--%>
<%--                        <td>网格管理违规数3</td>--%>
<%--                        <td><input  class="form-control" placeholder="网格管理违规数3" value="${city.}" name=""entity.reserve2">  </td>--%>
<%--                    </tr>--%>
<%--                    <tr>--%>
                        <td>公共区域其它安全隐患数</td>
                        <td><input  class="form-control" placeholder="公共区域其它安全隐患数" value="${city.numberOfOtherPotentialSafetyHazardsInPublicAreas}" name="numberOfOtherPotentialSafetyHazardsInPublicAreas">  </td>
                    </tr>
                    </tbody>
                </table>

            </div>
            <div class="modal-footer">
                <input type="submit" class="btn btn-success" data-dismiss="modal" aria-hidden="true"></input>
                <a class="btn btn-default" data-dismiss="modal" aria-hidden="true" href="javascript:history.go(-1);">返回</a>
            </div>
        </div>
        </form>
    </div>
</div>

</body>
</html>
