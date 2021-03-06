<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>首页</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
	name="viewport">


<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="plugins/bootstrap/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="plugins/adminLTE/css/AdminLTE.css">
<link rel="stylesheet"
	href="plugins/adminLTE/css/skins/_all-skins.min.css">
<link rel="stylesheet" href="css/style.css">
<!-- 引入angularjs -->
<script src="plugins/angularjs/angular.min.js"></script>
<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="plugins/bootstrap/js/bootstrap.min.js"></script>

<script src="plugins/adminLTE/js/app.min.js"></script>


<script type="text/javascript">
	function SetIFrameHeight() {
		var iframeid = document.getElementById("iframe"); //iframe id
		if (document.getElementById) {
			iframeid.height = document.documentElement.clientHeight;
		}
	}
</script>




</head>

<body class="hold-transition skin-blue sidebar-mini">

	<div class="wrapper">

		<!-- 页面头部 -->
		<header class="main-header"> <!-- Logo --> <a href="#"
			class="logo"> <!-- mini logo for sidebar mini 50x50 pixels --> <span
			class="logo-mini"><b>管理</b></span> <!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b>社会风险指数模型</b></span>
		</a> <!-- Header Navbar: style can be found in header.less --> <nav
			class="navbar navbar-static-top"> <!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
			role="button"> <span class="sr-only">切换导航</span>
		</a>

		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
<%--				<!-- Messages: style can be found in dropdown.less-->--%>
<%--				<li class="dropdown messages-menu"><a href="#"--%>
<%--					class="dropdown-toggle" data-toggle="dropdown"> <i--%>
<%--						class="fa fa-envelope-o"></i> <span class="label label-success">4</span>--%>
<%--				</a>--%>
<%--					<ul class="dropdown-menu">--%>
<%--						<li class="header"></li>--%>
<%--						<li>--%>
<%--							<!-- inner menu: contains the actual data -->--%>
<%--							<ul class="menu">--%>
<%--								<li>--%>
<%--									<!-- start message --> <a href="#"> </a>--%>
<%--								</li>--%>
<%--								<!-- end message -->--%>
<%--								<li><a href="#"> </a></li>--%>
<%--								<li><a href="#"> </a></li>--%>
<%--								<li><a href="#"> </a></li>--%>
<%--								<li><a href="#"> </a></li>--%>
<%--							</ul>--%>
<%--						</li>--%>
<%--						<li class="footer"><a href="#"></a></li>--%>
<%--					</ul></li>--%>
<%--				<!-- Notifications: style can be found in dropdown.less -->--%>
<%--				<li class="dropdown notifications-menu"><a href="#"--%>
<%--					class="dropdown-toggle" data-toggle="dropdown"> <i--%>
<%--						class="fa fa-bell-o"></i> <span class="label label-warning">10</span>--%>
<%--				</a>--%>
<%--					<ul class="dropdown-menu">--%>
<%--						<li class="header"></li>--%>
<%--						<li>--%>
<%--							<!-- inner menu: contains the actual data -->--%>
<%--							<ul class="menu">--%>
<%--								<li><a href="#"> </a></li>--%>
<%--								<li><a href="#"> </a></li>--%>
<%--								<li><a href="#"> </a></li>--%>
<%--								<li><a href="#"> </a></li>--%>
<%--								<li><a href="#"> </a></li>--%>
<%--							</ul>--%>
<%--						</li>--%>
<%--						<li class="footer"><a href="#"></a></li>--%>
<%--					</ul></li>--%>
<%--				<!-- Tasks: style can be found in dropdown.less -->--%>
<%--				<li class="dropdown tasks-menu"><a href="#"--%>
<%--					class="dropdown-toggle" data-toggle="dropdown"> <i--%>
<%--						class="fa fa-flag-o"></i> <span class="label label-danger">9</span>--%>
<%--				</a>--%>
<%--					<ul class="dropdown-menu">--%>
<%--						<li class="header"></li>--%>
<%--						<li>--%>
<%--							<!-- inner menu: contains the actual data -->--%>
<%--							<ul class="menu">--%>
<%--								<li>--%>
<%--									<!-- Task item --> <a href="#"> </a>--%>
<%--								</li>--%>
<%--								<!-- end task item -->--%>
<%--								<li>--%>
<%--									<!-- Task item --> <a href="#"> </a>--%>
<%--								</li>--%>
<%--								<!-- end task item -->--%>
<%--								<li>--%>
<%--									<!-- Task item --> <a href="#"> </a>--%>
<%--								</li>--%>
<%--								<!-- end task item -->--%>
<%--								<li>--%>
<%--									<!-- Task item --> <a href="#"> </a>--%>
<%--								</li>--%>
<%--								<!-- end task item -->--%>
<%--							</ul>--%>
<%--						</li>--%>
<%--						<li class="footer"><a href="#"></a></li>--%>
<%--					</ul></li>--%>
<%--				<!-- User Account: style can be found in dropdown.less -->--%>
				<li class="dropdown user user-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <img
						src="img/user2-160x160.jpg" class="user-image" alt="User Image">
						<span class="hidden-xs" ><jsp:text>${sessionScope.loginUser.username}</jsp:text></span>
				</a>
					<ul class="dropdown-menu">
						<!-- User image -->
						<li class="user-header"><img src="img/user2-160x160.jpg"
							class="img-circle" alt="User Image">
							</li>
						<!-- Menu Footer-->
						<li class="user-footer">
<%--							<div class="pull-left">--%>
<%--								<a href="#" class="btn btn-default btn-flat">修改密码</a>--%>
<%--							</div>--%>
							<div class="pull-right">
								<a href="logout.shtml" class="btn btn-default btn-flat">注销</a>
							</div>
						</li>
					</ul></li>

			</ul>
		</div>
		</nav> </header>
		<!-- 页面头部 /-->

		<!-- 导航侧栏 -->
		<aside class="main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar"> <!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="img/user2-160x160.jpg" class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p><jsp:text>${sessionScope.loginUser.username}</jsp:text></p>
				<a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
			</div>
		</div>

		<!-- /.search form --> <!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">菜单</li>
			<li id="admin-index"><a href="doIndexUI.shtml"><i
					class="fa fa-dashboard"></i> <span>首页</span></a></li>

			<!-- 菜单 -->
			<li class="treeview">
				<a href="#"> <i class="fa fa-info"></i>
					<span>社会风险指数管理</span> <span class="pull-right-container">
						<i class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
				<ul class="treeview-menu">

					<li id="admin-login"><a
						href="institutionInfo/doInstitutionInfoManagerUI/1.shtml"
						target="iframe"> <i class="fa fa-exclamation-triangle"></i>城市风险信息管理
						</a>
					</li>
					
				</ul>
			</li>
				
			<li class="treeview">
				<a href="#">
					<i class="fa fa-users"></i>
					<span>用户管理</span>
					<span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i></span>
				</a>
				<ul class="treeview-menu" style="display: none;">
					<li class="">
						<a href="institutionInfo/doUserInfoManagerUI/1.shtml" target="iframe">
							<i class="fa fa-circle-o"></i>用户列表
						</a>
					</li>

				</ul>
			</li>

<!--
			 <li class="treeview"><a href="#"> <i class="fa fa-share"></i>
					<span>多级菜单</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu" style="display: none;">
					<li><a href="#"><i class="fa fa-circle-o"></i> 一级菜单</a></li>
					<li class="">
						<a href="#"><i class="fa fa-circle-o"></i>一级菜单 
							<span class="pull-right-container"> 
								<i class="fa fa-angle-left pull-right"></i>
							</span> 
						</a>
						<ul class="treeview-menu" style="display: none;">
							<li><a href="#"><i class="fa fa-circle-o"></i> 二级菜单</a></li>
							<li class=""><a href="#"><i class="fa fa-circle-o"></i>
									二级菜单 <span class="pull-right-container"> <i
										class="fa fa-angle-left pull-right"></i>
								</span> </a>
								<ul class="treeview-menu" style="display: none;">
									<li><a href="#"><i class="fa fa-circle-o"></i> 三级菜单</a></li>
									<li><a href="#"><i class="fa fa-circle-o"></i> 三级菜单</a></li>
								</ul></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-circle-o"></i> 一级菜单</a></li>
				</ul></li> -->
			<!-- 菜单 /-->

		</ul>
		</section> <!-- /.sidebar --> </aside>
		<!-- 导航侧栏 /-->

		<!-- 内容区域 -->
		<div class="content-wrapper">
			<iframe width="100%" id="iframe" name="iframe"
				onload="SetIFrameHeight()" frameborder="0" src="doHomeUI.shtml"></iframe>

		</div>
		<!-- 内容区域 /-->

		<!-- 底部导航 -->
		<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<b>Version</b> 1.0.0
		</div>
		<strong>Copyright &copy; 2018——至今 <a
			href="http://www.itcast.cn">XXXXXX</a>.
		</strong> All rights reserved. </footer>
		<!-- 底部导航 /-->

	</div>

</body>

</html>