<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core"  prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>机构信息管理</title>
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <link rel="stylesheet" href="/SocialRisk/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/SocialRisk/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="/SocialRisk/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="/SocialRisk/css/style.css">
    
    <!-- 引入angularjs -->
    <script src="/SocialRisk/plugins/angularjs/angular.min.js"></script>
    <script src="/SocialRisk/plugins/angularjs/angular-route.min.js"></script>
    
    <!-- 引入分页插件 -->
    <!-- 分页样式 -->
    <link rel="stylesheet" href="/SocialRisk/plugins/angularjs/pagination.css">
    <script src="/SocialRisk/plugins/angularjs/pagination.js"></script>
    
    <script src="/SocialRisk/js/base_pagination.js"></script>
    <script src="/SocialRisk/js/controller/institutionInfoController.js"></script>
   
    
	<script src="/SocialRisk/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="/SocialRisk/plugins/bootstrap/js/bootstrap.min.js"></script>
    
</head>

<body class="hold-transition skin-red sidebar-mini"  ng-app="complexdata" ng-controller="institutionInfoController" >
  <!-- .box-body -->
                
                    <div class="box-header with-border">
                        <h3 class="box-title">城市信息管理</h3>
                    </div>

                    <div class="box-body" style="width:100%;overflow:auto;">

                        <!-- 数据表格 -->
                        <div class="table-box">

                            <!--工具栏-->
                            <div class="pull-left">
                                <div class="form-group form-inline">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default" title="新建" data-toggle="modal" data-target="#editModal" ng-click="entity={}"><i class="fa fa-file-o"></i> 新建</button>
                                        <button type="button" class="btn btn-default" title="删除" data-toggle="modal" data-target="#confirmModal"><i class="fa fa-trash-o"></i> 删除</button>
                                        <button type="button" class="btn btn-default" title="刷新" onclick="window.location.reload();"><i class="fa fa-refresh"></i> 刷新</button>
                                    </div>
                                </div>
                            </div>
                            <div class="box-tools pull-right">
                               <div class="has-feedback">
<%--							        <input ng-model="logno" placeholder="流水号"> --%>
							        <input ng-model="institutionNo" placeholder="城市名称">
							        <button class="btn btn-default btn-search" ng-click="  ">查询</button>
                                </div> 
                            </div>
                            <!--工具栏/-->

			                  <!--数据列表-->
			                  <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
			                      <thead>
			                          <tr>
			                              <th class="" style="padding-right:0px">
			                                  <input id="institutionInfoAll" type="checkbox" class="icheckbox_square-blue" ng-click="selectAll(institutionInfoObject.list)">
			                              </th>
										  <th class="sorting">城市</th>
										  <th class="sorting">风险等级</th>
										  <th class="sorting">社会保障指标</th>
									      <th class="sorting">协调发展指标</th>
									      <th class="sorting">社会公平指标</th>
									      <th class="sorting">社会秩序指标</th>
									      <th class="sorting">社会安全指标</th>
					                      <th class="text-center">社会舆情指标</th>
					                      <th class="text-center">建筑物分级指标</th>
					                      <th class="text-center">操作</th>
			                          </tr>
			                      </thead>
			                      <tbody>
								  <c:forEach items="${cityList}" var="City" varStatus="id">
			                          <tr >
			                              <td><input class="institutionInfoCheckBox" type="checkbox" ng-click="updateSelection($event,institutionInfo.institutionNo)"></td>			                              
				                          <td>${City.name}</td>
									      <td>${City.name}</td>
									      <td></td>
									      <td></td>
									      <td></td>
									      <td></td>
									      <td></td>
									      <td></td>
		                                  <td></td>
		                                  <td class="text-center">
		                                 	  <button type="button" class="btn bg-olive btn-xs" >修改</button>
											  <button type="button" class="btn bg-primary btn-xs" >详情</button>
										  </td>
			                          </tr>
								  </c:forEach>
			                      </tbody>
			                  </table>
			                  <!--数据列表/--> 
			                  <!--分页 paginationConf -->
							<div style="text-align: center">
								<ul class="pagination">
									<li class="page-item">
										<a class="page-link" href="#" aria-label="Previous">
											<span aria-hidden="true">&laquo;</span>
											<span class="sr-only">Previous</span>
										</a>
									</li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item">
										<a class="page-link" href="#" aria-label="Next">
											<span aria-hidden="true">&raquo;</span>
											<span class="sr-only">Next</span>
										</a>
									</li>
								</ul>
							</div>
							  
                        </div>
                        <!-- 数据表格 /-->
                     </div>
                    <!-- /.box-body -->
	            <!-- 分页 -->
				
				                
<!-- 编辑窗口 -->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" >
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3 id="myModalLabel">机构信息编辑</h3>
		</div>
		<div class="modal-body">							
			
			<table class="table table-bordered table-striped"  width="800px">
				<tbody>
		      	<tr>
		      		<td>城市名称</td>
		      		<td><input  class="form-control" placeholder="城市名称" ng-model="entity.logno">  </td>
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
			<button class="btn btn-default" data-dismiss="modal" aria-hidden="true">关闭</button>
		</div>
	  </div>
	</div>
</div>


<!-- 修改窗口 -->
<div class="modal fade" id="changeModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" >
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3 id="myModalLabel">机构信息修改</h3>
		</div>
		<div class="modal-body">							
			<!-- width="800px" -->
			<table class="table table-bordered table-striped"  width="800px">
				<tbody>
		      	<tr>
		      		<td>流水号</td>
		      		<td><input  class="form-control" placeholder="流水号" ng-model="entity.logno" disabled="disabled">  </td>
		      	</tr>
		      	<tr>
		      		<td>机构编号</td>
		      		<td><input  class="form-control" placeholder="机构编号" ng-model="entity.institutionNo" ng-blur="checkOrgNo(entity.institutionNo)">  </td>
		      	</tr>
		      	<tr>
		      		<td>机构名称</td>
		      		<td><input  class="form-control" placeholder="机构名称" ng-model="entity.institutionName">  </td>
		      	</tr>	
		      	<tr>
		      		<td>机构类型</td>
		      		<td><input  class="form-control" placeholder="机构类型" ng-model="entity.institutionType">  </td>
		      	</tr>	
		      	<tr>
		      		<td>机构状态</td>
		      		<td><input  class="form-control" placeholder="机构状态" ng-model="entity.institutionState">  </td>
		      	</tr>	
		      	<tr>
		      		<td>商户号</td>
		      		<td><input  class="form-control" placeholder="商户号" ng-model="entity.instId">  </td>
		      	</tr>	
		      	<tr>
		      		<td>内部账号</td>
		      		<td><input  class="form-control" placeholder="内部账号" ng-model="entity.instAcct">  </td>
		      	</tr>	
		      	<tr>
		      		<td>内部户名</td>
		      		<td><input  class="form-control" placeholder="内部户名" ng-model="entity.instAcctname">  </td>
		      	</tr>
			    <tr>
		      		<td>渠道标志</td>
		      		<td><input  class="form-control" placeholder="渠道标志" ng-model="entity.channelFlag">  </td>
		      	</tr>
		      	<tr>
		      		<td>参数设置ID</td>
		      		<td><input  class="form-control" placeholder="参数设置ID" ng-model="entity.paramSetId">  </td>
		      	</tr>		      
		      	<tr>
		      		<td>路由参数</td>
		      		<td><input  class="form-control" placeholder="路由参数" ng-model="entity.routeParam">  </td>
		      	</tr>		      
		      	<tr>
		      		<td>参数名称</td>
		      		<td><input  class="form-control" placeholder="参数名称" ng-model="entity.paramName">  </td>
		      	</tr>		      
		      	<tr>
		      		<td>FTP地址</td>
		      		<td><input  class="form-control" placeholder="FTP地址" ng-model="entity.ftpAddress">  </td>
		      	</tr>
		      	<tr>
		      		<td>FTP端口</td>
		      		<td><input  class="form-control" placeholder="FTP端口" ng-model="entity.ftpPort">  </td>
		      	</tr>		      
		      	<tr>
		      		<td>FTP路径</td>
		      		<td><input  class="form-control" placeholder="FTP路径" ng-model="entity.ftpPath">  </td>
		      	</tr>		      
		      	<tr>
		      		<td>FTP用户</td>
		      		<td><input  class="form-control" placeholder="FTP用户" ng-model="entity.ftpUser">  </td>
		      	</tr>		      
		      	<tr>
		      		<td>FTP密码</td>
		      		<td><input  class="form-control" placeholder="FTP密码" ng-model="entity.ftpPassword">  </td>
		      	</tr>
		      	<tr>
		      		<td>字符编码</td>
		      		<td><input  class="form-control" placeholder="字符编码" ng-model="entity.encoding">  </td>
		      	</tr>
		      	<tr>
		      		<td>传输协议</td>
		      		<td><input  class="form-control" placeholder="传输协议" ng-model="entity.transProtocol">  </td>
		      	</tr>			      
		      	<tr>
		      		<td>回调地址</td>
		      		<td><input  class="form-control" placeholder="回调地址" ng-model="entity.callbackAddress">  </td>
		      	</tr>
		      	<tr>
		      		<td>额度指派层级</td>
		      		<td><input  class="form-control" placeholder="额度指派层级" ng-model="entity.designateLevel">  </td>
		      	</tr>		      
		      	<tr>
		      		<td>额度分配方式</td>
		      		<td><input  class="form-control" placeholder="额度分配方式" ng-model="entity.distribPattern">  </td>
		      	</tr>			      
		      	<tr>
		      		<td>预留字段1</td>
		      		<td><input  class="form-control" placeholder="预留字段1" ng-model="entity.reserve1">  </td>
		      	</tr>		      
		      	<tr>
		      		<td>预留字段2</td>
		      		<td><input  class="form-control" placeholder="预留字段2" ng-model="entity.reserve2">  </td>
		      	</tr>		      
		      	</tbody>
			 </table>				
			
		</div>
		<div class="modal-footer">						
			<button class="btn btn-success" data-dismiss="modal" aria-hidden="true" ng-click="update()">保存</button>
			<button class="btn btn-default" data-dismiss="modal" aria-hidden="true">关闭</button>
		</div>
	  </div>
	</div>
</div>


<!-- 消息提示框 -->
<div class="modal fade" id="infoModal" tabindex="-1" role="dialog" aria-labelledby="infoModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm" >
	<div class="modal-content">
	<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<strong>
					提示信息
				</strong>
			</div>
			<div class="modal-body">
				
				 <h4>{{message}}</h4>
				
			</div>
		<div class="modal-footer">						
			
			<button class="btn btn-default" data-dismiss="modal" aria-hidden="true">确定</button>
		</div>
	</div>
  </div>
</div>

<!-- 删除确认框 -->
<div class="modal fade" id="confirmModal" tabindex="-1" role="dialog" aria-labelledby="confrimModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm" >
	<div class="modal-content">
	<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<strong>
					确认框
				</strong>
			</div>
			<div class="modal-body" ng-if="selectinstitutionNos!=null && selectinstitutionNos!=''">
				 <h4>确定删除选中的信息吗？</h4>
			</div>
			<div class="modal-body" ng-if="selectinstitutionNos==null || selectinstitutionNos==''">
				 <h4>请选中</h4>
			</div>
		<div class="modal-footer">						
			
			<button class="btn btn-default" data-dismiss="modal" aria-hidden="true" ng-click="remove()">确定</button>
			<button class="btn btn-default" data-dismiss="modal" aria-hidden="true">关闭</button>
		</div>
	</div>
  </div>
</div>




<!-- <div class="alert alert-success" id="successMessage" aria-hidden="true">
  <strong>{{message}}</strong>
</div> -->
</body>

</html>