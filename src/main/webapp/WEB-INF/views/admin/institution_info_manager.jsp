<%@ page import="com.complexdata.model.City" %>
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
<%--    <script src="/SocialRisk/plugins/angularjs/angular.min.js"></script>--%>
<%--    <script src="/SocialRisk/plugins/angularjs/angular-route.min.js"></script>--%>

<%--	<script src="https://cdn.jsdelivr.net/npm/vue@2/dist/vue.js"></script>--%>
    
    <!-- 引入分页插件 -->
    <!-- 分页样式 -->
    <link rel="stylesheet" href="/SocialRisk/plugins/angularjs/pagination.css">
    <script src="/SocialRisk/plugins/angularjs/pagination.js"></script>
    
    <script src="/SocialRisk/js/base_pagination.js"></script>
    <script src="/SocialRisk/js/controller/institutionInfoController.js"></script>
   
    
	<script src="/SocialRisk/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="/SocialRisk/plugins/bootstrap/js/bootstrap.min.js"></script>

<%--	文件上传--%>

	<link href="/SocialRisk/plugins/bootstrapfileinput/css/fileinput.css"  rel="stylesheet" type="text/css"/>
	<script src="/SocialRisk/plugins/bootstrapfileinput/js/fileinput.js" type="text/javascript"></script>
	<script src="/SocialRisk/plugins/bootstrapfileinput/js/locales/zh-TW.js" type="text/javascript"></script>


</head>
<% City city = new City();%>
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
                                        <button type="button" class="btn btn-default " title="导入" data-toggle="modal" data-target="#excelInfoImport" ng-click="entity={}"><i class="fa fa-file-o"></i> 导入</button>
                                        <button type="button" class="btn btn-default" title="删除" data-toggle="modal" data-target="#confirmModal"><i class="fa fa-trash-o"></i> 删除</button>
<%--										<button  class="btn btn-default"  onclick="downloadTemplate()" ><i class="fa fa-refresh"></i>模板</button>--%>
										<a type="button" class="btn btn-default" title="刷新" href="/SocialRisk/institutionInfo/getTemplate.shtml"><i class="fa fa-refresh"></i> 模板</a>
                                        <a type="button" class="btn btn-default" title="刷新" href="/SocialRisk/institutionInfo/doInstitutionInfoManagerUI/1.shtml"><i class="fa fa-refresh"></i> 刷新</a>

                                    </div>
                                </div>
                            </div>
                            <div class="box-tools pull-right">
								<form action="http://localhost:8080/SocialRisk/institutionInfo/seleteCityByName.shtml">
									<div class="has-feedback">
										<%--							        <input ng-model="logno" placeholder="流水号"> --%>
										<input ng-model="institutionNo" placeholder="城市名称" name="name">
										<button class="btn btn-default btn-search" ng-click="  ">查询</button>
									</div>
								</form>
                            </div>
                            <!--工具栏/-->

			                  <!--数据列表-->
			                  <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
			                      <thead>
			                          <tr>
			                              <th class="" style="padding-right:0px">
<%--											<button class="btn-sm primary">全选</button>--%>
										  <input id="checkAll"  type="checkbox"   >
			                              </th>
										  <th class="sorting">城市</th>
										  <th class="sorting">风险等级</th>
										  <th class="sorting">社会保障指标</th>
									      <th class="sorting">协调发展指标</th>
									      <th class="sorting">社会公平指标</th>
									      <th class="sorting">社会秩序指标</th>
									      <th class="sorting">社会安全指标</th>

										  <th class="text-center">风险等级查询</th>
					                      <th class="text-center">操作</th>
			                          </tr>
			                      </thead>
			                      <tbody>
								  <c:forEach items="${cityList}" var="City" varStatus="id">
			                          <tr >
			                              <td><input class="institutionInfoCheckBox" type="checkbox" name="checkDelete" value="${cityList.get(id.index).id}"></td>
<%--										  <td>${City.id}</td>--%>
										  <td>${City.name}</td>
										  <td>${City.unemploymentRate}</td>
										  <td>${City.endowmentInsuranceCoverage}</td>
										  <td>${City.maternityInsuranceCoverage}</td>
										  <td>${City.industrialInjuryInsuranceCoverage}</td>
										  <td>${City.medicalInsuranceCoverage}</td>
										  <td>${City.unemploymentInsuranceCoverage}</td>
										  <td class="text-center">
											  <a type="button" class="btn bg-olive btn-xs " href="/SocialRisk/institutionInfo/seleteCityRisk/${cityList.get(id.index).id}.shtml">查询</a>
										  </td>
										  <td class="text-center">
											  <a type="button" class="btn bg-olive btn-xs " href="/SocialRisk/institutionInfo/toCityInfo/${cityList.get(id.index).id}.shtml" >修改</a>
											  <a type="button" class="btn bg-primary btn-xs"  href= "/SocialRisk/institutionInfo/toCityInfochakan/${cityList.get(id.index).id}.shtml" >详情</a>
										  </td>
			                          </tr>
								  </c:forEach>
			                      </tbody>
			                  </table>
			                  <!--数据列表/--> 
			                  <!--分页 paginationConf -->
							<c:set var="pageNum" value="${pageNum}"></c:set>
							<c:if test="${totalPageNum>0}">
							<div style="text-align: center" >
								<ul class="pagination">
									<li class="page-item">
										<a class="page-link" href="${isHasPre?pageNum-1:1}.shtml" aria-label="Previous">
											<span aria-hidden="true">&laquo;</span>
											<span class="sr-only">Previous</span>
										</a>
									</li>
									<li class="page-item"><a class="page-link">共<jsp:text>${totalPageNum}</jsp:text>页</a></li>
									<li class="page-item">
										<a class="page-link" href="${isHasNext?pageNum+1:totalPageNum}.shtml" aria-label="Next">
											<span aria-hidden="true">&raquo;</span>
											<span class="sr-only">Next</span>
										</a>
									</li>
								</ul>

							</div>
							</c:if>
                        </div>
                        <!-- 数据表格 /-->
                     </div>
                    <!-- /.box-body -->
	            <!-- 分页 -->

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
		<div class="modal-footer">						
			
			<button class="btn btn-default" data-dismiss="modal" aria-hidden="true" onclick="deleteCheckedRecord()">确定</button>
			<button class="btn btn-default" data-dismiss="modal" aria-hidden="true">关闭</button>
		</div>
	</div>
  </div>
</div>


  <div class="modal fade" id="excelInfoImport" tabindex="-1" role="dialog" aria-labelledby="excelLabel" aria-hidden="true">
	  <div class="modal-dialog" >
		  <div class="modal-content">
			  <div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				  <h3 id="excelLabel">excel信息导入</h3>
			  </div>
			  <div class="modal-body">
				  <form enctype="multipart/form-data">
					  <div class="file-loading">
						  <input id="uploadFile" name="uploadFile" type="file"  >
					  </div>
				  </form>
<%--				<form id="upload-form" action="receiveFile.shtml" method="post" enctype="multipart/form-data" >--%>
<%--					　　　<input type="file" id="upload" name="uploadFile" /> <br />--%>
<%--					　　　<input type="submit" value="上传" />--%>
<%--				</form>--%>

			  </div>
			  <div class="modal-footer">
<%--				  <button class="btn btn-success" data-dismiss="modal" aria-hidden="true" ng-click="update()">上传</button>--%>
				  <button class="btn btn-default" data-dismiss="modal" aria-hidden="true">关闭</button>
			  </div>
		  </div>
	  </div>
  </div>



</body>

<style>
	ul.pagination3 {
		display: inline-block;
		padding: 0;
		margin: 0;
	}

	ul.pagination3 li {display: inline;}

	ul.pagination3 li a {
		color: black;
		float: left;
		padding: 8px 16px;
		text-decoration: none;
		transition: background-color .3s;
		border: 1px solid #ddd;
		font-size: 18px;
	}
	ul.pagination3 li sapn {
		color: black;
		float: left;
		padding: 8px 16px;
		text-decoration: none;
		transition: background-color .3s;
		border: 1px solid #ddd;
		font-size: 18px;
	}

	ul.pagination3 li a:hover:not(.active) {background-color: #ddd}
</style>

<script>
	<%--function detailsClick(i){--%>
	<%--	console.log(i)--%>
	<%--	var city =  "${cityList.get(i)}";--%>
	<%--	"${city =  cityList.get(i)}"--%>
	<%--	console.log(city)--%>
	<%--}--%>
</script>
<script type="text/javascript">
	$(function(){
		$('#uploadFile').fileinput({
			theme : 'explorer-fas',
			language: 'zh',
			uploadAsync: true, //默认异步上传
			showUpload: true,  //是否显示上传按钮
			showRemove :true, //显示移除按钮
			showPreview: true, // 显示预览信息： true 显示 , false 不显示
			showCancel:false,   //是否显示文件上传取消按钮。默认为true。只有在AJAX上传过程中，才会启用和显示
			showCaption: true, // 显示标题：true 显示 , false 不显示
			uploadUrl: '/SocialRisk/institutionInfo/receiveFile.shtml', // 上传文件的url
			allowedFileExtensions: ['xls', 'xlsx'], // 允许文件扩展名
			browseClass: "btn btn-primary ",
			// uploadExtraData: {kvId: '10'}, // 额外传输的参数
			dropZoneEnabled: true,//是否显示拖拽区域
			dropZoneTitle: '文件拖到这里即可上传！', // 拖拽区域提示内容
		});
		$('#uploadFile').fileinput("reset");

		// // fileuploaded 此事件仅针对ajax上传完成后触发， 可用于图片文件回显
		// $('#uploadFile').on('fileuploaded', function(event, data, previewId, index) {
		// 	var imgArray = data.response.result ;
		// 	for(var x = 0 ; x < imgArray.length ; x++ ){
		// 		$("#img").attr("src","/SocialRisk/plugins/bootstrap-fileinput-master"+imgArray[x]);
		// 		var _ele="<img src='/SocialRisk/plugins/bootstrap-fileinput-master"+imgArray[x]+"' height='300' width='200' />";
		// 		$("#img_show").append(_ele);
		// 	}
		// });
	});
	function getResult(response, status){
		if(status==="success"){
			alert("删除成功");
			location.reload()
		}else{
			alert("删除失败，请稍后重试");
		}
		$('input[name="checkDelete"]:checked').each(function (){
			$(this).prop("checked",false);
		})
	}
	function  deleteCheckedRecord(){
		var check_values = [];
		var checkValuesList = {};
		var passData = ""
		$('input[name="checkDelete"]:checked').each(function (){
			check_values.push($(this).val())
			passData+=$(this).val();
			passData+=";"
		})
		if(check_values.length==0){
			alert("请选中需要删除相关记录")
			return;
		}


		$.post({
					url:"/SocialRisk/institutionInfo/deleteRecords.shtml",
					contentType:"application/x-www-form-urlencoded;charset=UTF-8",
					data:{
						// check_values:JSON.stringify(check_values)
						check_values:passData
					},
					dataType : "json",
					success:getResult,
			}
		);
	};

	function downloadTemplate() {
		console.log("hahha");
		$.get({
					url:"/SocialRisk/institutionInfo/getTemplate.shtml",
					contentType:"application/x-www-form-urlencoded;charset=UTF-8",
					// data:{
					// 	// check_values:JSON.stringify(check_values)
					// 	check_values:passData
					// },
					dataType : "json",
					// success:getResult,
				}
		);
	}

	function checkClickFunc () {
		console.log("enter click!")
		// var status = thi
		console.log($("#checkAll").is(':checked'))
		if($("#checkAll").is(':checked'))
			$("input[name='checkDelete']:checkbox").each(function() { //遍历所有的name为selectFlag的 checkbox
				$(this).attr("checked", true);
			})
		else
			$("input[name='checkDelete']:checkbox").each(function() { //遍历所有的name为selectFlag的 checkbox
				$(this).attr("checked", false);
			})
	}
	$("#checkAll").click(function() {
		if (this.checked) {
			$("input[name='checkDelete']:checkbox").each(function() { //遍历所有的name为selectFlag的 checkbox
				console.log("处理每一个checkbox")
				$(this).attr("checked", true);

			})
		} else {   //反之 取消全选
			$("input[name='checkDelete']:checkbox").each(function() { //遍历所有的name为selectFlag的 checkbox
				$(this).attr("checked", false);
				//alert("f");
			})
		}
	})

</script>
</html>