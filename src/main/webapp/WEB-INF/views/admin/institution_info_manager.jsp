<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
							        <input ng-model="logno" placeholder="流水号"> 
							        <input ng-model="institutionNo" placeholder="机构编号">	
							        <button class="btn btn-default btn-search" ng-click="getPage(paginationConf.currentPage,paginationConf.itemsPerPage)">查询</button>                                    
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
			                              <th class="sorting">id号</th>
										  <th class="sorting">城市</th>
										  <th class="sorting">风险等级</th>
										  <th class="sorting">xxx指数1</th>
									      <th class="sorting">xxx指数1</th>
									      <th class="sorting">xxx指数1</th>
									      <th class="sorting">xxx指数1</th>
									      <th class="sorting">xxx指数1</th>				                      
					                      <th class="text-center">预留字段1</th>
					                      <th class="text-center">预留字段2</th>
					                      <th class="text-center">操作</th>
			                          </tr>
			                      </thead>
			                      <tbody>
			                          <tr ng-repeat="institutionInfo in institutionInfoObject.list">
			                              <td><input class="institutionInfoCheckBox" type="checkbox" ng-click="updateSelection($event,institutionInfo.institutionNo)"></td>			                              
				                          <td>{{institutionInfo.logno}}</td>
									      <td>{{institutionInfo.institutionNo}}</td>
									      <td>{{institutionInfo.institutionName}}</td>
									      <td>{{institutionInfo.institutionType}}</td>
									      <td>{{institutionInfo.institutionState}}</td>
									      <td>{{institutionInfo.instId}}</td>
									      <td>{{institutionInfo.instAcct}}</td>
									      <td>{{institutionInfo.instAcctname}}</td>
		                                  <td>{{institutionInfo.reserve1}}</td>
		                                  <td>{{institutionInfo.reserve2}}</td>
		                                  <td class="text-center">    <!-- data-target="#changeModal"       -->                                 
		                                 	  <button type="button" class="btn bg-olive btn-xs" data-toggle="modal" data-target="#changeModal" ng-click="findByInstitutionNo(institutionInfo.institutionNo)">修改</button>                                           
		                                  </td>
			                          </tr>
			                      </tbody>
			                  </table>
			                  <!--数据列表/--> 
			                  <!--分页 paginationConf -->
							  <tm-pagination conf="paginationConf"></tm-pagination>
							  
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
		      		<td>流水号</td>
		      		<td><input  class="form-control" placeholder="流水号" ng-model="entity.logno">  </td>
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