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
        <div class="modal-content">
            <div class="modal-header">
<%--                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>--%>
                <h3 id="myModalLabel">城市信息编辑</h3>
            </div>
            <div class="modal-body">

                <table class="table table-bordered table-striped"  width="800px">
                    <tbody>
                    <tr>
                        <td>城市名称</td>
                        <td><input  class="form-control" placeholder="城市名称" value="${city.name}">  </td>
                    </tr>
                    <tr>
                        <td>失业率</td>
                        <td><input  class="form-control" placeholder="失业率" ng-model="entity.institutionNo" ng-blur="checkOrgNo(entity.institutionNo)">  </td>
                    </tr>
                    <tr>
                        <td>养老保险覆盖率</td>
                        <td><input  class="form-control" placeholder="养老保险覆盖率" ng-model="entity.institutionName">  </td>
                    </tr>
                    <tr>
                        <td>生育保险覆盖率</td>
                        <td><input  class="form-control" placeholder="生育保险覆盖率" ng-model="entity.institutionType">  </td>
                    </tr>
                    <tr>
                        <td>工伤保险覆盖率</td>
                        <td><input  class="form-control" placeholder="工伤保险覆盖率" ng-model="entity.institutionState">  </td>
                    </tr>
                    <tr>
                        <td>医疗保险覆盖率</td>
                        <td><input  class="form-control" placeholder="医疗保险覆盖率" ng-model="entity.instId">  </td>
                    </tr>
                    <tr>
                        <td>失业保险覆盖率</td>
                        <td><input  class="form-control" placeholder="失业保险覆盖率" ng-model="entity.instAcct">  </td>
                    </tr>
                    <tr>
                        <td>社会保障支出占GDP比重</td>
                        <td><input  class="form-control" placeholder="社会保障支出占GDP比重" ng-model="entity.instAcctname">  </td>
                    </tr>
                    <tr>
                        <td>恩格尔系数</td>
                        <td><input  class="form-control" placeholder="恩格尔系数" ng-model="entity.reserve1">  </td>
                    </tr>
                    <tr>
                        <td>人均住房面积</td>
                        <td><input  class="form-control" placeholder="人均住房面积" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>廉租房覆盖率</td>
                        <td><input  class="form-control" placeholder="廉租房覆盖率" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>平均受教育年限</td>
                        <td><input  class="form-control" placeholder="平均受教育年限" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>生活垃圾无害化处理率</td>
                        <td><input  class="form-control" placeholder="生活垃圾无害化处理率" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>出生时预期寿命</td>
                        <td><input  class="form-control" placeholder="出生时预期寿命" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>人均国内生产总值增长率</td>
                        <td><input  class="form-control" placeholder="人均国内生产总值增长率" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>居民收入增长率</td>
                        <td><input  class="form-control" placeholder="居民收入增长率" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>非农产业就业比重</td>
                        <td><input  class="form-control" placeholder="非农产业就业比重" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>万元GDP综合能耗</td>
                        <td><input  class="form-control" placeholder="万元GDP综合能耗" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>人均绿地面积</td>
                        <td><input  class="form-control" placeholder="人均绿地面积" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>教育支出占GDP比重</td>
                        <td><input  class="form-control" placeholder="教育支出占GDP比重" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>CPI指数</td>
                        <td><input  class="form-control" placeholder="CPI指数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>地区人均收入与全国人均收入差距比例</td>
                        <td><input  class="form-control" placeholder="地区人均收入与全国人均收入差距比例" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>城镇居民可支配收入和农村居民纯收入差距比值</td>
                        <td><input  class="form-control" placeholder="城镇居民可支配收入和农村居民纯收入差距比值" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>农村贫困发生率</td>
                        <td><input  class="form-control" placeholder="农村贫困发生率" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>10%最高收入者与10%最低收入者收入比值</td>
                        <td><input  class="form-control" placeholder="10%最高收入者与10%最低收入者收入比值" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>全国居民基尼系数</td>
                        <td><input  class="form-control" placeholder="全国居民基尼系数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>中等收入者的人数比例</td>
                        <td><input  class="form-control" placeholder="中等收入者的人数比例" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>最高收入行业与最低收入行业人均收入差距比</td>
                        <td><input  class="form-control" placeholder="最高收入行业与最低收入行业人均收入差距比" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>社会核心价值认同度</td>
                        <td><input  class="form-control" placeholder="社会核心价值认同度" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>对社会公共道德的评价值</td>
                        <td><input  class="form-control" placeholder="对社会公共道德的评价值" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>每万人警力配备人数</td>
                        <td><input  class="form-control" placeholder="每万人警力配备人数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>每万人中的律师人数</td>
                        <td><input  class="form-control" placeholder="每万人中的律师人数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>万人保治安员人数</td>
                        <td><input  class="form-control" placeholder="万人保治安员人数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>万人义务力量打击违法犯罪数</td>
                        <td><input  class="form-control" placeholder="万人义务力量打击违法犯罪数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>万人保治安员打击违法犯罪数</td>
                        <td><input  class="form-control" placeholder="万人保治安员打击违法犯罪数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>万人义务群防群治队员数</td>
                        <td><input  class="form-control" placeholder="万人义务群防群治队员数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>上访(含信访)增加率</td>
                        <td><input  class="form-control" placeholder="上访(含信访)增加率" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>越级上访宗数</td>
                        <td><input  class="form-control" placeholder="越级上访宗数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>黄赌毒举报投诉</td>
                        <td><input  class="form-control" placeholder="黄赌毒举报投诉" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>社区投诉纠纷</td>
                        <td><input  class="form-control" placeholder="社区投诉纠纷" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>流动人口信息采集率</td>
                        <td><input  class="form-control" placeholder="流动人口信息采集率" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>流动人口信息未注销率</td>
                        <td><input  class="form-control" placeholder="流动人口信息未注销率" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>两拘人员案前居住登记率</td>
                        <td><input  class="form-control" placeholder="两拘人员案前居住登记率" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>人民调解受理数</td>
                        <td><input  class="form-control" placeholder="人民调解受理数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>人民调解成功率</td>
                        <td><input  class="form-control" placeholder="人民调解成功率" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>社区矫正人员违反规定人数</td>
                        <td><input  class="form-control" placeholder="社区矫正人员违反规定人数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>社区矫正人员重新犯罪人数</td>
                        <td><input  class="form-control" placeholder="社区矫正人员重新犯罪人数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>特殊人群服务纳管率</td>
                        <td><input  class="form-control" placeholder="特殊人群服务纳管率" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>群体性事件数</td>
                        <td><input  class="form-control" placeholder="群体性事件数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>群防群治可视化出勤率</td>
                        <td><input  class="form-control" placeholder="群防群治可视化出勤率" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>选举投票率</td>
                        <td><input  class="form-control" placeholder="选举投票率" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>基层依法自治达标率</td>
                        <td><input  class="form-control" placeholder="基层依法自治达标率" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>社会流动率</td>
                        <td><input  class="form-control" placeholder="社会流动率" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>民间组织发育度</td>
                        <td><input  class="form-control" placeholder="民间组织发育度" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>自然灾害级别</td>
                        <td><input  class="form-control" placeholder="自然灾害级别" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>事故灾难级别</td>
                        <td><input  class="form-control" placeholder="事故灾难级别" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>公共卫生事件级别</td>
                        <td><input  class="form-control" placeholder="公共卫生事件级别" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>社会安全事件级别</td>
                        <td><input  class="form-control" placeholder="社会安全事件级别" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>万人重大经济案件立案件数</td>
                        <td><input  class="form-control" placeholder="万人重大经济案件立案件数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>万人重大刑事案件立案件数</td>
                        <td><input  class="form-control" placeholder="万人重大刑事案件立案件数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>劳资纠纷增长率</td>
                        <td><input  class="form-control" placeholder="劳资纠纷增长率" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>黄赌毒及食药品打击人数</td>
                        <td><input  class="form-control" placeholder="黄赌毒及食药品打击人数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>万人多发性侵财案件数</td>
                        <td><input  class="form-control" placeholder="万人多发性侵财案件数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>万人治安警情数</td>
                        <td><input  class="form-control" placeholder="万人治安警情数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>火灾发生宗数</td>
                        <td><input  class="form-control" placeholder="火灾发生宗数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>生产安全死亡事故数</td>
                        <td><input  class="form-control" placeholder="生产安全死亡事故数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>刑事拘留人数</td>
                        <td><input  class="form-control" placeholder="刑事拘留人数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>国外经济摩擦和制裁影响度</td>
                        <td><input  class="form-control" placeholder="国外经济摩擦和制裁影响度" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>国际性金融危机影响度</td>
                        <td><input  class="form-control" placeholder="国际性金融危机影响度" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>国外武装干涉和恐怖主义袭击影响度</td>
                        <td><input  class="form-control" placeholder="国外武装干涉和恐怖主义袭击影响度" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>世界经济衰退影响度</td>
                        <td><input  class="form-control" placeholder="世界经济衰退影响度" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>工作状况满意度</td>
                        <td><input  class="form-control" placeholder="工作状况满意度" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>自然环境满意度</td>
                        <td><input  class="form-control" placeholder="自然环境满意度" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>干群关系满意率</td>
                        <td><input  class="form-control" placeholder="干群关系满意率" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>权益保护满意度</td>
                        <td><input  class="form-control" placeholder="权益保护满意度" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>政治文明满意度</td>
                        <td><input  class="form-control" placeholder="政治文明满意度" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>群众安全感</td>
                        <td><input  class="form-control" placeholder="群众安全感" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>居民生活满意度</td>
                        <td><input  class="form-control" placeholder="居民生活满意度" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>对司法不公正的可容忍程度</td>
                        <td><input  class="form-control" placeholder="对司法不公正的可容忍程度" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>对收入差距的可容忍程度</td>
                        <td><input  class="form-control" placeholder="对收入差距的可容忍程度" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>对物价上涨的可容忍程度</td>
                        <td><input  class="form-control" placeholder="对物价上涨的可容忍程度" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>对腐败现象的可容忍程度</td>
                        <td><input  class="form-control" placeholder="对腐败现象的可容忍程度" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>消防安全隐患数</td>
                        <td><input  class="form-control" placeholder="消防安全隐患数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>电气安全隐患数</td>
                        <td><input  class="form-control" placeholder="电气安全隐患数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>生产安全隐患数</td>
                        <td><input  class="form-control" placeholder="生产安全隐患数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>建筑安全隐患数</td>
                        <td><input  class="form-control" placeholder="建筑安全隐患数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>公共安全隐患数</td>
                        <td><input  class="form-control" placeholder="公共安全隐患数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>网格管理违规数</td>
                        <td><input  class="form-control" placeholder="网格管理违规数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>其它安全隐患数</td>
                        <td><input  class="form-control" placeholder="其它安全隐患数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>住宅消防安全隐患数</td>
                        <td><input  class="form-control" placeholder="住宅消防安全隐患数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>住宅建筑安全隐患数</td>
                        <td><input  class="form-control" placeholder="住宅建筑安全隐患数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>住宅公共安全隐患数</td>
                        <td><input  class="form-control" placeholder="住宅公共安全隐患数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>网格管理违规数2</td>
                        <td><input  class="form-control" placeholder="网格管理违规数2" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>住宅其它安全隐患数</td>
                        <td><input  class="form-control" placeholder="住宅其它安全隐患数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>公共区域消防安全隐患数</td>
                        <td><input  class="form-control" placeholder="公共区域消防安全隐患数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>公共区域建筑安全隐患数</td>
                        <td><input  class="form-control" placeholder="公共区域建筑安全隐患数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>公共区域电气安全隐患数</td>
                        <td><input  class="form-control" placeholder="公共区域电气安全隐患数" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>网格管理违规数3</td>
                        <td><input  class="form-control" placeholder="网格管理违规数3" ng-model="entity.reserve2">  </td>
                    </tr>
                    <tr>
                        <td>公共区域其它安全隐患数</td>
                        <td><input  class="form-control" placeholder="公共区域其它安全隐患数" ng-model="entity.reserve2">  </td>
                    </tr>
                    </tbody>
                </table>

            </div>
            <div class="modal-footer">
                <button class="btn btn-success" data-dismiss="modal" aria-hidden="true" ng-click="save()">保存</button>
                <a class="btn btn-default" data-dismiss="modal" aria-hidden="true" href="javascript:history.go(-1);">返回</a>
            </div>
        </div>
    </div>
</div>

</body>
</html>
