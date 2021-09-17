/*****
 * 定义一个controller
 * 发送HTTP请求从后台获取数据
 ****/
app.controller("inputSelectController",function($scope,$http,$log){
	
	$scope.zcInstitutionNos = [];
	$scope.zcInstitutionNames = [];
	$scope.hidden = true;
	$scope.tempdatas = [];
	$scope.searchField = '';//文本框数据
	
	$scope.testNums=['111','222','333','444'];
	
	$(function(){
		
		/*$.ajax({
		    url: '/itfin_manager_ui/institutionInfo/getZCInstitutionInfos.shtml',
		    async: false,
		    success: function(response) {
		    	$scope.zc= response;
		    	var select = $("#slpk");
				select.html("");
				select.append("<option value=''>---请选择---</option>");
		    	for(var i = 0;i<$scope.zc.length;i++){
					$scope.zcInstitutionNos.push($scope.zc[i].institutionNo);
					$scope.zcInstitutionNames.push($scope.zc[i].institutionName);
					select.append("<option value='"+i+"'>"
							+ $scope.zc[i].institutionNo + "</option>");
				}
				$('#slpk').selectpicker('val', '');
				$('#slpk').selectpicker('refresh');
				$('#slpk').selectpicker('render');
				$('#slpk').on('changed.bs.select', function() {
					var value = $('#slpk').val();
					
					console.log(value)
					//$("#zcName").val(value)
					if($scope.zc[value].institutionState=='1'){
						$("#state").val('0');
					}else{
						$("#state").val('1');
					}
				});
		    }
		});*/
	
		$http({
			method : 'GET',
			url : '/itfin_manager_ui/institutionInfo/getZCInstitutionInfos.shtml'
		}).then(function successCallback(response) {
			$scope.zc= response.data;
			var zcNo = $("#zcNo");
			zcNo.html("");
			zcNo.append("<option value=''>---请选择---</option>");
			
			var zcName = $("#zcName");
			zcName.html("");
			zcName.append("<option value=''>---请选择---</option>");
			for(var i = 0;i<$scope.zc.length;i++){
				$scope.zcInstitutionNos.push($scope.zc[i].institutionNo);
				$scope.zcInstitutionNames.push($scope.zc[i].institutionName);
				
				zcNo.append("<option value='"+i+"'>"+ $scope.zc[i].institutionNo + "</option>");
				zcName.append("<option value='"+i+"'>"+ $scope.zc[i].institutionName + "</option>");
			}
			$scope.tempdatas = $scope.zcInstitutionNos;
			
			zcNo.selectpicker('val', '');
			zcNo.selectpicker('refresh');
			zcNo.selectpicker('render');
			
			zcName.selectpicker('val', '');
			zcName.selectpicker('refresh');
			zcName.selectpicker('render');
			
			$('#zcNo').on('changed.bs.select', function() {
				var index = $('#zcNo').val()
				console.log(index);
				//资产
				$('#zcName').val(index);
				$('#zcName').selectpicker('refresh');
				if($scope.zc[index].institutionState=='1'){
					$("#status").val('0');
				}else{
					$("#status").val('1');
				}
				console.log($scope.zcName);
			});
			$('#zcName').on('changed.bs.select', function() {
				var index = $('#zcName').val();
				console.log(index);
				//资产
				$('#zcNo').val(index);
				$('#zcNo').selectpicker('refresh');
				
				if($scope.zc[index].institutionState=='1'){
					$("#status").val('0');
				}else{
					$("#status").val('1');
				}
			});
		}, function errorCallback(response) {
			console.log(response);
		});
	});
	
	/*function selectOnchang(obj){
		alert(obj.selectedIndex);
	}*/
	
	//只有效一次
	/*$scope.slpkChnage = function(obj){
		console.log($('#slpk').val()+"="+$('#slpk').selectpicker('text'));
		$('#slpk').selectpicker('refresh');
		$('#slpk').selectpicker('render');//刷新插件
	}*/
	
	$scope.entity = {
			
	}
	//将下拉选的数据值赋值给文本框
	$scope.change = function(x) {
		console.log("change"+x);
		$scope.entity.assetOrgNo = x;
		$scope.selectZCAssetOrgNo(x);
		$scope.hidden = true;
	}

	//获取的数据值与下拉选逐个比较，如果包含则放在临时变量副本，并用临时变量副本替换下拉选原先的数值，如果数据为空或找不到，就用初始下拉选项副本替换
	$scope.changeKeyValue = function(v) {
		var newDate = []; //临时下拉选副本
		//如果包含就添加
		angular.forEach($scope.zcInstitutionNos, function(data, index, array) {
			if (data.indexOf(v) >= 0) {
				newDate.unshift(data);
			}
		});
		//用下拉选副本替换原来的数据
		$scope.zcInstitutionNos = newDate;
		//下拉选展示
		$scope.hidden = false;
		//如果不包含或者输入的是空字符串则用初始变量副本做替换
		if ($scope.zcInstitutionNos.length == 0 || '' == v) {
			$scope.zcInstitutionNos = $scope.tempdatas;
		}
		console.log($scope.zcInstitutionNos);
	}
	
	
	
	//资产
	$scope.selectZCAssetOrgNo = function(assetOrgNo){
		
		var index = -1;
		for(var i = 0;i<$scope.zcInstitutionNos.length;i++){
			if($scope.zcInstitutionNos[i]==assetOrgNo){
				index = i;
				console.log("选中"+i+"="+assetOrgNo)
				break;
			}
		}
		if(index!=-1){
			console.log("选中"+index+"="+assetOrgNo)
			$scope.checkProductStatus(index);
			$scope.entity.assetOrgName = $scope.zcInstitutionNames[index];	
		}
	}
	//资产index
	$scope.selectZCAssetOrgNoIndex = function(index){
		
	}
	$scope.selectZCAssetOrgName = function(assetOrgName){
		console.log("选中"+"="+assetOrgName)
		var index = -1;
		for(var i = 0;i<$scope.zcInstitutionNames.length;i++){
			if($scope.zcInstitutionNames[i]==assetOrgName){
				index = i;
				
				break;
			}
		}
		if(index == -1){
			$scope.checkProductStatus(index);
			$scope.entity.assetOrgNo = "";
		}else{
			$scope.checkProductStatus(index);
			$scope.entity.assetOrgNo = $scope.zcInstitutionNos[index];
		}
	}
	
	$scope.blur =function(assetOrgNo){
		var index = -1;
		for(var i = 0;i<$scope.zcInstitutionNos.length;i++){
			if($scope.zcInstitutionNos[i]==assetOrgNo){
				index = i;
				break;
			}
		}
		
		$scope.checkProductStatus(index);
		$scope.entity.assetOrgName = $scope.zcInstitutionNames[index];
	
	}
	
	$scope.click =function(assetOrgNo){
		console.log("click"+assetOrgNo);
		var index = -1;
		for(var i = 0;i<$scope.zcInstitutionNos.length;i++){
			if($scope.zcInstitutionNos[i]==assetOrgNo){
				index = i;
				break;
			}
		}
		$scope.checkProductStatus(index);
		$scope.entity.assetOrgName = $scope.zcInstitutionNames[index];
		$scope.hidden = !$scope.hidden;
	}
	
	$scope.checkProductStatus=function(index){
		if(index==-1){
			$scope.entity.productStatus="-1";
		}else{
			if($scope.zc[index].institutionState=='1'){
				$scope.entity.productStatus='0';
			}else{
				$scope.entity.productStatus='1';
			}
		}
	}

});