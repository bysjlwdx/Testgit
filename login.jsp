<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>电子书后台管理系统</title>
		<link rel="stylesheet" type="text/css" href="jsp/Assets/css/reset.css" />
		<link rel="stylesheet" type="text/css"
			href="jsp/Assets/css/common.css" />
		<link rel="stylesheet" type="text/css" href="jsp/Assets/css/thems.css" />
		<script type="text/javascript" src="jsp/Assets/js/jquery-1.8.3.min.js"></script>
		<!--框架高度设置-->
		<script type="text/javascript">
	$(function() {
		//自适应屏幕宽度
		window.onresize = function() {
			location = location
		};

		var w_height = $(window).height();
		$('.bg_img').css('height', w_height + 'px');

		var bg_wz = 1920 - $(window).width();
		$('.bg_img img').css('margin-left', '-' + bg_wz / 2 + 'px')

		$('.language .lang').click(function() {
			$(this).siblings('.lang_ctn').toggle();
		});
	})
</script>
		<!--框架高度设置-->
	</head>

	<body>

		<!--登录-->
		<div class="login">
			<form action="LoginSuccess" method="post" id="fromLogin">
				<div class="login_m">
					<ul>
						<li class="wz">
							用户名
						</li>
						<li>
							<input name="" type="text" id="name" name="name"
								placeholder="输入用户名">
						</li>
						<li class="wz">
							密码
						</li>
						<li>
							<input name="" type="password" id="pwd" name="pwd"
								placeholder="输入用户密码">
						</li>
						<li class="l_btn">
							<a href="javascript:void(0)" onclick=login();>登录</a>
						</li>
					</ul>

				</div>
			</form>
		</div>
		<!--登录-->

	</body>

	<script type="text/javascript">
	function login() {

		var name = document.getElementById("name").value;
		var pwd = document.getElementById("pwd").value;

		if (name.length == 0) {
			alert("用户名不能为空!");
		} else {
			if (pwd.length == 0) {
				alert("密码不能为空!");
			} else {
				if (pwd.length < 6) {
					alert("密码长度必须大于等于6位!");
				} else {
					//提交表单
					$.ajax( {
						type : "POST",//方法类型
						url : "Login",//url
						dataType : "text",//预期服务器返回的数据类型
						async : false,//设置为同步传输  
						data : {
							name : name,
							pwd : pwd
						},
						success : function(data) {
							if (data == "1") {
							    window.location.href = "jsp/index.jsp";  
							} else {
								alert(data);
							}

						},
						error : function() {
							alert("网络异常，请重试！");
						}
					});
				}

			}
		}

	}
</script>
</html>
