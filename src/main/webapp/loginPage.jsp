<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>登陆</title>
	<link rel="stylesheet" href="./assets/libs/particles/css/style.css">
	<link rel="stylesheet" href="./assets/css/base.css">
	<link rel="stylesheet" href="./assets/css/login.css" />
</head>
<body>
	<!-- particles.js container -->
	<div id="particles-js"></div>
	<div id="wrapper">
		<div>
			<h4 class="manage-title" style="color:rgb(15,136,235)">社会风险指数管理系统</h4>
			<!-- <img src="../assets/img/zhihu_logo.png" /> -->
			<h2>城市风险预防与管理</h2>
		</div>
		<nav class="switch_nav">
			<a href="toRegister.shtml" id="switch_signup" class="switch_btn">注册</a>
			<a href="/SocialRisk" id="switch_login" class="switch_btn on">登陆</a>
			<div class="switch_bottom" id="switch_bottom"></div>
		</nav>
		<div id="login">
			<form method="post" action="doLogin.shtml">
				<ul class="group_input">
					<li>
						<input type="text" class="mobile required" id="mobile" placeholder="用户名" name="username" />
					</li>
					<li>
						<input type="password" class="psd required" id="psd" placeholder="密码"  name="password"/>
					</li>
				</ul>
				<button type="submit" class="submit_btn" id="btnSubmit">登陆</button>
			</form>
			<!-- <div class="states">
				<span class="left"><a href="javascript:;">手机验证码登陆</a></span>
				<span class="right"><a href="javascript:;">无法登陆？</a></span>
			</div> -->
			<!-- <div class="states">
				<a href="javascript:;" class="social_account">社交账号登陆</a>
				<div class="states three_MinIcon">
					<a href="javascript:;" class="MinIcon_weixin"><img src="../assets/img/icon_weixin.jpg" style="width:20px;height:18px" /></a>
					<a href="javascript:;" class="MinIcon_weibo"><img src="../assets/img/icon_weibo.jpg" style="width:20px;height:18px" /></a>
					<a href="javascript:;" class="MinIcon_qq"><img src="../assets/img/icon_qq.jpg" style="width:20px;height:18px" /></a>
				</div>
			</div> -->
		</div>
		<!-- <div class="QRcode_btn">
			<div type="submit" class="submit_btn download_btn">下载知乎App</div>
			<div class="QRcode">
				<img src="../assets/img/QRcode.png" alt="QRcode" />
				<div class="box"></div>
			</div>

		</div> -->
		<div id="footer">
			<span>&copy;2020</span><span>·</span><a href="javascript:;">登录</a><span>·</span><a href="javascript:;">发现</a><span>·</span><a href="javascript:;">移动应用</a><span>·</span><a href="javascript:;">使用机构账号登录</a><span>·</span><a href="javascript:;">联系我们</a><span>·</span><a href="javascript:;">加入我们</a><br />
			<span>·</span><a href="javascript:;">京ICP证xxxxx号</a><span>·</span><span>京公网安备11010xxxx2010035号</span><span>·</span><a href="javascript:;">出版物经营许可证</a>
		</div>
	</div>
	<script src="./assets/libs/jquery-1.12.4/jquery.min.js"></script>
	<script src="./assets/libs/particles/particles.min.js"></script>
	<script src="./assets/libs/particles/js/app.js"></script>
	<!-- <script src="../assets/libs/particles/js/lib/stats.js"></script> -->
	<script>
		var count_particles, stats, update;
		stats = new Stats;
		stats.setMode(0);
		stats.domElement.style.position = 'absolute';
		stats.domElement.style.left = '0px';
		stats.domElement.style.top = '0px';
		document.body.appendChild(stats.domElement);
		count_particles = document.querySelector('.js-count-particles');
		update = function() {
			stats.begin();
			stats.end();
			if (window.pJSDom[0].pJS.particles && window.pJSDom[0].pJS.particles.array) {
				count_particles.innerText = window.pJSDom[0].pJS.particles.array.length;
			}
			requestAnimationFrame(update);
		};
		requestAnimationFrame(update);
	</script>
	<script>
		$(".download_btn").click(function(){
			if($(".QRcode").css("display")=="none"){
				$(".QRcode").show();
				$(".download_btn").text("关闭二维码");
			}else{
				$(".QRcode").hide();
				$(".download_btn").text("下载知乎App");
			}
		});	
	</script>
	<script>
		$(function(){
		//为表单的必填文本框添加提示信息（选择form中的所有后代input元素）
        // $("form :input.required").each(function () {
        //     //通过jquery api：$("HTML字符串") 创建jquery对象
        //     var $required = $("<strong class='high'>*</strong>");
        //     //添加到this对象的父级对象下
        //     $(this).parent().append($required);
        // });
			// var errorMsg = $(".error-msg").text();
		//为表单元素添加失去焦点事件
		$("form :input").blur(function(){
			var $parent = $(this).parent();
			$parent.find(".msg").remove(); //删除以前的提醒元素（find()：查找匹配元素集中元素的所有匹配元素）		
			//验证手机号
			if($(this).is("#mobile")){
				var mobileVal = $.trim(this.value);
				// var regMobile = /^1[3|4|5|7|8][0-9]{9}$/;
				if(mobileVal == ""){
					var errorMsg = " 请输入用户名！";
					$parent.append("<span class='msg onError'>" + errorMsg + "</span>");
				} else{
					var okMsg=" 输入正确";
                    $parent.append("<span class='msg onSuccess'>" + okMsg + "</span>");
				}
			}
			//验证密码
            if($(this).is("#psd")){
                var psdVal = $.trim(this.value);
                // var regPsd = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$/;
                if(psdVal== "" || !regPsd.test(psdVal)){
                    var errorMsg = " 请输入密码！";
                    $parent.append("<span class='msg onError'>" + errorMsg + "</span>");
                }
                else{
                    var okMsg=" 输入正确";
                    $parent.append("<span class='msg onSuccess'>" + okMsg + "</span>");
                }
            }
		}).keyup(function(){
			//triggerHandler 防止事件执行完后，浏览器自动为标签获得焦点
			$(this).triggerHandler("blur"); 
		}).focus(function(){
			$(this).triggerHandler("blur");
		});

				//点击重置按钮时，通过trigger()来触发文本框的失去焦点事件
		$("#btnSubmit").click(function(){
    		//trigger 事件执行完后，浏览器会为submit按钮获得焦点
    		$("form .required:input").trigger("blur"); 
    		var numError = $("form .onError").length;
    		if(numError){
    			return false;
    		}
    		alert('登陆成功！')

    	});
		})


		<%--window.onload=function(){--%>
		<%--	// console.log("1233123")--%>
		<%--	var status = "${sessionScope.status}";--%>

		<%--	&lt;%&ndash;status ="${status}"&ndash;%&gt;--%>
		<%--	console.log(status)--%>
		<%--	if (status) {--%>
		<%--		alert("用户名或密码错误，请重试！");--%>
		<%--		&lt;%&ndash;alert("${sessionScope.message}")&ndash;%&gt;--%>
		<%--		// window.location.href="http://localhost:8080/SocialRisk/"--%>
		<%--		var test = "${sessionScope.status = false}"--%>
		<%--		"${sessionScope.clear()}";--%>
		<%--	}--%>
		<%--}--%>

	</script>
	<style>
	 .manage-title {
    width: 420px;
    margin: 0 auto;
    font-size: 30px;
    color: #fff;
    letter-spacing: 5px;
    text-shadow: 2px 2px 0 #646464;
	text-align: start;
}
	</style>
</body>
</html>
