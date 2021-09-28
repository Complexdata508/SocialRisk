<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
	<title>登录页面</title>


    <link rel="stylesheet" type="text/css" href="css/webbase.css" />
    <link rel="stylesheet" type="text/css" href="css/pages-login-manage.css" />
</head>

<body>
	<div class="loginmanage">
		<div class="py-container">
			<h4 class="manage-title" style="color:red">社会风险指数模型管理系统</h4>
			<div class="loginform">

				<ul class="sui-nav nav-tabs tab-wraped">
					
					<li class="active" >
							<h3>账户登录</h3>
					</li>
				</ul>
				<div class="tab-content tab-wraped">
					
					<div id="profile" class="tab-pane  active" >
						<form class="sui-form" action="doLogin.shtml" method="post">
							<div class="input-prepend"><span class="add-on loginname"></span>
								<input id="prependedInput" type="text" placeholder="用户名" class="span2 input-xfat"  required="required" name="username">
							</div>
							<div class="input-prepend"><span class="add-on loginpwd"></span>
								<input id="prependedInput" type="password" placeholder="请输入密码" class="span2 input-xfat"  required="required" name="password">
							</div>
							<div class="logined">

								<button class="sui-btn btn-block btn-xlarge btn-primary" type="submit" target="_blank">登&nbsp;&nbsp;录</button>
								<a class="sui-btn btn-block btn-xlarge btn-success" href="toRegister.shtml" target="_blank">注&nbsp;&nbsp;册</a>
							</div>
						</form> 

					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>


	<!--foot-->
	<div class="py-container copyright">
		<ul>
			<li>关于我们</li>
			<li>联系我们</li>
			<li>联系客服</li>

		</ul>
		<div class="address">地址：深圳福田xxxxxx  邮编：xxxxxxxx 电话：0755-xxxxxxxxxxx 传真：xxx-xxxxxx</div>
		<div class="beian">xxxxxxxxxxxxxxxxxxxxxxx
		</div>
	</div>



</body>
<style>
	loginname{
		background-image:url(./img/bussiness-man.png);background-position:-10px -201px
	}
</style>
<script type="text/javascript">
	window.onload=function(){
		console.log("1233123")
		var status = "${sessionScope.status}";
		<%--status ="${status}"--%>
		console.log(status)
		if (status) {
			alert("用户名或密码错误，请重试！");
			<%--alert("${sessionScope.message}")--%>
			 "${sessionScope.clear()}";
		}
	}
</script>
</html>