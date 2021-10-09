<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>后台管理系统</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport"> 
	
    <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="css/style.css">
	<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
</head>
 
<body class="hold-transition skin-blue sidebar-mini">

   <!-- 内容区域 -->


            <!-- 内容头部 -->
            <section class="content-header">
                <h1>
                    控制面板
                    <small>首页</small>
                </h1>
<%--                <ol class="breadcrumb">--%>
<%--                    <li><a href="doIndexUI.shtml"><i class="fa fa-dashboard"></i> 首页</a></li>--%>
<%--                </ol>--%>
            </section>
            <!-- 内容头部 /-->

            <!-- 正文区域 -->
            <section class="content">


                <!-- 统计数值 -->
                <div class="row">
                    <div class="col-lg-3 col-xs-5">
                        <!-- small box -->
                        <div class="small-box bg-aqua">
                            <div class="inner">
                                <h4>存储记录条数：<jsp:text>${cityCount}</jsp:text></h4>
                                <p>城市信息</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                            </div>
                            <a href="institutionInfo/doInstitutionInfoManagerUI/1.shtml" class="small-box-footer">详细 <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <c:if test="${getUser.admin==1}">
                        <div class="col-lg-3 col-xs-5">
                            <!-- small box -->
                            <div class="small-box bg-green">
                                <div class="inner">
                                    <h4>注册用户：<jsp:text>${userCount}</jsp:text></h4>
                                    <p>用户信息</p>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-bag"></i>
                                </div>
                                <a href="institutionInfo/doUserInfoManagerUI/1.shtml" class="small-box-footer">详细 <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    </c:if>

                    <!-- ./col -->
<%--                    <div class="col-lg-3 col-xs-6">--%>
<%--                        <!-- small box -->--%>
<%--                        <div class="small-box bg-green">--%>
<%--                            <div class="inner">--%>
<%--                                <h3>53<sup style="font-size: 20px">%</sup></h3>--%>

<%--                                <p>风险等级</p>--%>
<%--                            </div>--%>
<%--                            <div class="icon">--%>
<%--                                <i class="ion ion-stats-bars"></i>--%>
<%--                            </div>--%>
<%--                            <a href="#" class="small-box-footer">详细 <i class="fa fa-arrow-circle-right"></i></a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
                </div>
                <!-- /.row -->
            </section>
            <!-- 正文区域 /-->

        <!-- 内容区域 /-->
</body>

</html>