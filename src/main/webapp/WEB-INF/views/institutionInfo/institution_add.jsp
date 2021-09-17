<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>机构信息管理</title>
<meta
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
	name="viewport">
<link rel="stylesheet"
	href="/itfin_manager_ui/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/itfin_manager_ui/plugins/adminLTE/css/AdminLTE.css">
<link rel="stylesheet"
	href="/itfin_manager_ui/plugins/adminLTE/css/skins/_all-skins.min.css">
<link rel="stylesheet" href="/itfin_manager_ui/css/style.css">

<!-- 引入angularjs -->
<script src="/itfin_manager_ui/plugins/angularjs/angular.min.js"></script>
<script src="/itfin_manager_ui/plugins/angularjs/angular-route.min.js"></script>

<!-- 引入分页插件 -->
<!-- 分页样式 -->
<link rel="stylesheet"
	href="/itfin_manager_ui/plugins/angularjs/pagination.css">
<script src="/itfin_manager_ui/plugins/angularjs/pagination.js"></script>

<script src="/itfin_manager_ui/js/base_pagination.js"></script>
<script
	src="/itfin_manager_ui/js/controller/testController.js"></script>


<script src="/itfin_manager_ui/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="/itfin_manager_ui/plugins/bootstrap/js/bootstrap.min.js"></script>
<style type="text/css">
#myStyle{
	margin-left: -7px;
}
</style>
</head>
<body class="hold-transition skin-red sidebar-mini" ng-app="itfin" ng-controller="testController">
	<div class="register-box-body">
	
		<h3 class="text-center">机构信息增加</h3>

		<div class=" biaodan col-lg-12 col-md-12 col-sm-12 col-xs-12">

			<form name="feedback" method="post" enctype="multipart/form-data">
				<!-- <input name="enews" type="hidden" value="AddFeedback"> --> 
				
				<!-- <div class="form-group col-md-6 col-sm-6">
					<label class="col-sm-4 control-label">流水号</label>
					<div class="col-sm-8">
						<input  class="form-control" placeholder="流水号" ng-model="entity.logno">
					</div>
				</div> -->
				<div class="form-group col-md-6 col-sm-6">
					<label class="col-sm-4 control-label">机构编号</label>
					<div class="col-sm-8">
						<div>
							<input  class="form-control" placeholder="机构编号" ng-model="entity.institutionNo" ng-blur="checkInstitutionNo(entity.institutionNo)">
						</div>
					</div>
				</div>
				<div class="form-group col-md-6 col-sm-6 ">
					<label class="col-sm-4 control-label">机构名称</label>
					<div class="col-sm-8">
						<input  class="form-control" placeholder="机构名称" ng-model="entity.institutionName">
					</div>
				</div>
				<div class="form-group col-md-6 col-sm-6">
					<label class="col-sm-4 control-label">机构类型</label>
					<div class="col-sm-8">
					   <select class="form-control" name="product" ng-model="entity.institutionType">
							<option value="1">资产端</option>
							<option value="2">资金端</option>
						</select>
					</div>
				</div>
				<div class="form-group col-md-6 col-sm-6">
					<label class="col-sm-4 control-label">机构状态</label>
					<div class="col-sm-8">
						<select class="form-control" name="product" ng-model="entity.institutionState">
							<option value="1">启用</option>
							<option value="2">未启用</option>
						</select>
					</div>
				</div>
				<div class="form-group col-md-6 col-sm-6">
					<label class="col-sm-4 control-label">商户号</label>
					<div class="col-sm-8">
						<input  class="form-control" placeholder="商户号" ng-model="entity.instId">
					</div>
				</div>
				<div class="form-group col-md-6 col-sm-6">
					<label class="col-sm-4 control-label">内部账号</label>
					<div class="col-sm-8">
						<input  class="form-control" placeholder="内部账号" ng-model="entity.instAcct">
					</div>
				</div>
				<div class="form-group col-md-6 col-sm-6 hidden-xs">
					<label  class="col-sm-4 control-label">内部户名</label>
					<div class="col-sm-8">
						<input  class="form-control" placeholder="内部户名" ng-model="entity.instAcctname">
					</div>
				</div>
				<div class="form-group col-md-6 col-sm-6">
					<label class="col-sm-4 control-label">渠道标志</label>
					<div class="col-sm-8">
						<input  class="form-control" placeholder="渠道标志" ng-model="entity.channelFlag">
					</div>
				</div>
				<div class="form-group col-md-6 col-sm-6 hidden-xs">
					<label  class="col-sm-4 control-label">参数设置ID</label>
					<div class="col-sm-8">
						<input  class="form-control" placeholder="参数设置ID" ng-model="entity.paramSetId">
					</div>
				</div>
				<div class="form-group col-md-6 col-sm-6">
					<label class="col-sm-4 control-label">路由参数</label>
					<div class="col-sm-8">
						<input  class="form-control" placeholder="路由参数" ng-model="entity.routeParam">
					</div>
				</div>
				<div class="form-group col-md-6 col-sm-6 hidden-xs">
					<label  class="col-sm-4 control-label">参数名称</label>
					<div class="col-sm-8">
						<input  class="form-control" placeholder="参数名称" ng-model="entity.paramName">
					</div>
				</div>
				<div class="form-group col-md-6 col-sm-6">
					<label class="col-sm-4 control-label">FTP地址</label>
					<div class="col-sm-8">
						<input  class="form-control" placeholder="FTP地址" ng-model="entity.ftpAddress">
					</div>
				</div>
				<div class="form-group col-md-6 col-sm-6 hidden-xs">
					<label  class="col-sm-4 control-label">FTP端口</label>
					<div class="col-sm-8">
						<input  class="form-control" placeholder="FTP端口" ng-model="entity.ftpPort"> 
					</div>
				</div>
				<div class="form-group col-md-6 col-sm-6">
					<label class="col-sm-4 control-label">FTP路径</label>
					<div class="col-sm-8">
						<input  class="form-control" placeholder="FTP路径" ng-model="entity.ftpPath">
					</div>
				</div>
				<div class="form-group col-md-6 col-sm-6 hidden-xs">
					<label  class="col-sm-4 control-label">FTP用户</label>
					<div class="col-sm-8">
						<input  class="form-control" placeholder="FTP用户" ng-model="entity.ftpUser">
					</div>
				</div>
				<div class="form-group col-md-6 col-sm-6">
					<label class="col-sm-4 control-label">FTP密码</label>
					<div class="col-sm-8">
						<input  class="form-control" placeholder="FTP密码" ng-model="entity.ftpPassword">
					</div>
				</div>
				<div class="form-group col-md-6 col-sm-6 hidden-xs">
					<label  class="col-sm-4 control-label">字符集编码</label>
					<div class="col-sm-8">
						<input  class="form-control" placeholder="字符编码" ng-model="entity.encoding">
					</div>
				</div>
				<div class="form-group col-md-6 col-sm-6">
					<label  class="col-sm-4 control-label">传输协议</label>
					<div class="col-sm-8">
						<input  class="form-control" placeholder="传输协议" ng-model="entity.transProtocol">
					</div>
				</div>
				<div class="form-group col-md-6 col-sm-6">
					<label  class="col-sm-4 control-label">回调地址</label>
					<div class="col-sm-8">
						<input  class="form-control" placeholder="回调地址" ng-model="entity.callbackAddress">
					</div>
				</div>
				<div class="form-group col-md-6 col-sm-6">
					<label  class="col-sm-4 control-label">额度指派层级</label>
					<div class="col-sm-8">
						<select class="form-control" name="product" ng-model="entity.designateLevel">
							<option value="1">机构层</option>
							<option value="2">产品层</option>
						</select>
					</div>
				</div>
				<div ng-if="entity.designateLevel==1" class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<label class="col-sm-2 control-label">额度分配方式</label>
					<div id="myStyle" class="col-sm-4">
						<select class="form-control" name="product" ng-model="entity.distribPattern">
							<option value="1">固定比例分配</option>
							<option value="2">按产品最高可贷金额生成比例</option>
							<option value="3">先到先得</option>
						</select>
					</div>
				</div> 
			 
				<!-- <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<label for="inputgsmc" class="col-sm-2 control-label">渠道标志</label>
					<div class="col-sm-10">
						<textarea class="form-control" rows="3" name="content"
							id="content" required="required"></textarea>
					</div>
				</div> -->
				
				<div class="form-group">
					<div class="col-sm-6">
						<button type="submit" name="submit"
							class="btn btn-danger pull-right tb" ng-click="save()">提交</button>
					</div>
					<div class="col-sm-6">
						<button name="reset" type="reset"
							class="btn btn-default pull-left">重置</button>
					</div>
				</div>
				
			</form>
			
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
			
</body>
</html>