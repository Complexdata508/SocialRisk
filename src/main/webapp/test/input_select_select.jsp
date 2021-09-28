<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>机构产品关系添加</title>
<meta
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
	name="viewport">
<link rel="stylesheet"
	href="/itfin_manager_ui/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/itfin_manager_ui/plugins/bootstrap/css/bootstrap-select.min.css">
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
	src="input_select_selectController.js"></script>


<script src="/itfin_manager_ui/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="/itfin_manager_ui/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="/itfin_manager_ui/plugins/bootstrap/js/bootstrap-select.js"></script>

</head>
<body class="hold-transition skin-red sidebar-mini" ng-app="itfin" ng-controller="inputSelectController">
	<div class="register-box-body">
	
		<h3 class="text-center">机构产品关系增加</h3>

		<div class=" biaodan col-lg-12 col-md-12 col-sm-12 col-xs-12">

			<form name="feedback" method="post" enctype="multipart/form-data">
				
				<div class="form-group col-md-6 col-sm-6">
					<label class="col-sm-4 control-label">资产机构编号</label>
					<div class="col-sm-8">
						<input  ng-change="changeKeyValue(entity.assetOrgNo)" 
 							ng-model="entity.assetOrgNo" class="form-control" ng-blur="blur(entity.assetOrgNo)"
 							ng-click = 'click(entity.assetOrgNo)' value="{{entity.assetOrgNo}}" /></input>
						 <div ng-hide="hidden">
   							<select class="form-control" ng-click="change(x)" ng-model="x"
   								ng-options="item for item in zcInstitutionNos" multiple>
   							</select> 
 						</div>
					</div>
				</div>
				<div class="form-group col-md-6 col-sm-6 ">
					<label class="col-sm-4 control-label">资产机构名称</label>
					<div class="col-sm-8">
						<select class="form-control" 
						  	ng-model="entity.assetOrgName" ng-options="item for item in zcInstitutionNames"
						  	ng-change="selectZCAssetOrgName(entity.assetOrgName)">
						  	<option value="">请选中</option>
						 </select>
					</div>
				</div> 
				
				<div class="form-group col-md-12 col-sm-12">
					<label class="col-sm-4 control-label">产品状态</label>
					<div class="col-sm-8">
					   <select class="form-control" ng-model="entity.productStatus">
					   		<option value="-1">请选中</option>
							<option value="0">启用</option>
							<option value="1">停用</option>
						</select>
					</div>
				</div>
				
			</form>
			<hr>
			<h3>selectpicker</h3>
			<div class="form-group col-md-6 col-sm-6">
					<label class="col-sm-4 control-label">资产机构编号</label>
					<div class="col-sm-8">
						 <div><!-- 设置multiple时多选   multiple data-live-search="true"
						  onchange="selectOnchang(this)" data-live-search="true"
						 -->
   							<select id="zcNo" class="selectpicker" data-live-search="true" ng-model="zcNo">
							                  
							</select> 
 						</div>
					</div>
				</div>
				<div class="form-group col-md-6 col-sm-6 ">
					<label class="col-sm-4 control-label">资产机构名称</label>
					<div class="col-sm-8">
						<select id="zcName" class="selectpicker" data-live-search="true" ng-model="zcName">
						</select>
					</div>
				</div> 
				
				<div class="form-group col-md-6 col-sm-6">
					<label class="col-sm-4 control-label">产品状态</label>
					<div class="col-sm-8">
					   <select id="status" class="form-control" ng-model="status">
					   		<option value="-1">请选中</option>
							<option value="0">启用</option>
							<option value="1">停用</option>
						</select>
					</div>
				</div>
		</div>
	</div>
			
</body>
<script type="text/javascript">

</script>
</html>