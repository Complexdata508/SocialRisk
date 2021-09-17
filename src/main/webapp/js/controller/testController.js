/*****
 * 定义一个controller
 * 发送HTTP请求从后台获取数据
 ****/
app.controller("testController",function($scope,$http,$log){
	
	$scope.exist = false;
	$scope.checkInstitutionNo=function(institutionNo){
		if(institutionNo!=''){
			$http({
				method: 'GET',
		        url: '/itfin_manager_ui/institutionInfo/getByInstitutionNo.shtml?institutionNo='+institutionNo    
			}).then(function successCallback(response) {
				if(response.data!='' && response.data!=null){
					$scope.exist = true;
					$scope.message = '该机构号已存在';
					$('#infoModal').modal();
				}else{
					$scope.exist = false;
				}
	        }, function errorCallback(response) {
	        	
	        });
		}
	}
	
	 /***
     * 分页控件配置
     * currentPage:当前页
     * totalItems:共有多少条记录
     * itemsPerPage:每页显示多少条
     * perPageOptions:每页多少条选项条
     * onChange:参数发生变化时执行
     * */
    $scope.paginationConf = {
        currentPage: 1,
        totalItems: 0,
        itemsPerPage: 10,
        perPageOptions: [5, 10, 20, 30, 40],
        onChange: function(){
            $scope.reloadList();//重新加载
        }
    };
    
	$scope.institutionNo="";
	$scope.searchFlag = false;
    //分页获取信息
	$scope.getPage=function(page,size){
		$http({
	        method: 'GET',
	        url: 'getPage.shtml?pageNum='+page+'&size='+size+"&institutionNo="+$scope.institutionNo
	    }).then(function successCallback(response) {
	    		//集合数据
	            $scope.institutionInfoObject=response.data
	            //分页数据
	            $scope.paginationConf.totalItems=response.data.total;
	            $scope.searchFlag = true;
	        }, function errorCallback(response) {
	        	//console.log(response)
	    });
	}
	
	 //重新加载
    $scope.reloadList=function(){
    	if($scope.searchFlag){
    		$scope.getPage($scope.paginationConf.currentPage,$scope.paginationConf.itemsPerPage);
    	}
    }
		
	$scope.toAdd=function(){
		$scope.entity={};
		window.location.href="doInstitutionInfoAddUI.shtml";
	}
	//增加资金端信息
	$scope.save=function(){
		if($scope.exist){
			$scope.message = '该机构号已存在';
			$('#infoModal').modal();
			return;
		}
		//如果为产品层，清空额度分配方式
		console.log($scope.entity.distribPattern);
		if($scope.entity.designateLevel=='2'){
			$scope.entity.distribPattern='';
		}
		console.log($scope.entity.distribPattern);
		
		$http({
	        method: 'POST',
	        url: '/itfin_manager_ui/institutionInfo/addInstitutionInfo.shtml',
	        data:$scope.entity
	        
	    }).then(function successCallback(response) {
	            //添加成功
	    		if(response.data.success==true){
	    			$scope.message=response.data.message
	    			$('#infoModal').modal();
	    			$scope.entity={};
	    		}else{
	    			$scope.message=response.data.message
	    			$('#infoModal').modal();
	    		}
	        }, function errorCallback(response) {
	            // 请求失败执行代码
	    });	
	}
	
	
	//实现全选全不选
	$scope.selectAll=function(list){
		//判断表头checkbox状态
		if($('#institutionInfoAll').prop("checked")==true){
			//全选
			//将所有checkbox状态改为选中
			$('.institutionInfoCheckBox').prop("checked",true)
			//console.log(list);
			//循环将所有产品代码和机构号存入$scope.selectinstitutionNos中
			for(var i = 0;i<list.length;i++){
				$scope.selectinstitutionNos.push(list[i].institutionNo);
			}
			//console.log($scope.selectinstitutionNos)
		}else{
			//全不选
			$('.institutionInfoCheckBox').prop("checked",false)
			//将所有产品代码和机构号从$scope.selectinstitutionNos中清空
			$scope.selectinstitutionNos=[];
			//console.log($scope.selectinstitutionNos)
		}
		
	}

	//定义一个变量，用于存储要删除的资金端信息机构号
    $scope.selectinstitutionNos=new Array();
    //判断当前点击是否要删除对应资金端信息
    $scope.updateSelection=function($event,institutionNo){
        //判断当前操作是否是选中复选框
        if($event.target.checked){
            //如果选中复选框，则将该机构号增加到数组中去
            $scope.selectinstitutionNos.push(institutionNo);
        }else{
            //取消删除，则从数组中移除该机构号
            var idx = $scope.selectinstitutionNos.indexOf(institutionNo);   //获取机构号对应的下标
            $scope.selectinstitutionNos.splice(idx, 1);//删除对应下标的数据，1表示删除的数量
        }
        //console.log($scope.selectinstitutionNos);
    }
	
	//根据机构号删除选中的资金端信息
	$scope.remove=function(){
		
		if($scope.selectinstitutionNos.length==0){
			return;
		}
		
		$http({
			method: 'DELETE',
	        url: '/itfin_manager_ui/institutionInfo/deleteByInstitutionNo.shtml',
	        data:$scope.selectinstitutionNos
		}).then(function successCallback(response) {
			//删除结果
    		//console.log(response)
			if(response.data.success==true){
    			$scope.message=response.data.message
    			$('#infoModal').modal();
    			$scope.selectinstitutionNos=[];//清空数组
    			$scope.reloadList();//重新加载
    			//alert(response.data.message)
    		}else{
    			$scope.message=response.data.message
    			$('#infoModal').modal();
    			//alert(response.data.message)
    		}
        }, function errorCallback(response) {
        	
        });
	}
	
	//根据机构号修改资金端信息
	$scope.update=function(){
		//如果为产品层，清空额度分配方式
		console.log($scope.entity.distribPattern);
		if($scope.entity.designateLevel=='2'){
			$scope.entity.distribPattern='';
		}
		console.log($scope.entity.distribPattern);
		
		$http({
			method: 'PUT',
	        url: '/itfin_manager_ui/institutionInfo/updateByInstitutionNo.shtml',
	        data:$scope.entity
		}).then(function successCallback(response) {
			//修改提示
    		//console.log(response)
			if(response.data.success==true){
				$scope.message=response.data.message
    			$('#infoModal').modal();
    			$scope.reloadList();//重新加载
    			//alert(response.data.message)
    		}else{
    			$scope.message=response.data.message
    			$('#infoModal').modal();
    			//alert(response.data.message)
    		}
        }, function errorCallback(response) {
        	
        });
	}
	
	//根据机构号查询资金端信息
	$scope.findByInstitutionNo=function(institutionNo){
		$http({
			method: 'GET',
	        url: '/itfin_manager_ui/institutionInfo/getByInstitutionNo.shtml?institutionNo='+institutionNo
	        
		}).then(function successCallback(response) {
			$scope.entity=response.data
        }, function errorCallback(response) {
        	
        });
	}

});