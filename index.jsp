<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page isELIgnored="false"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta name="viewport"
			content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
		<meta name="renderer" content="webkit|ie-comp|ie-stand">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<title>电子书后台管理系统</title>

		<link rel="stylesheet" href="common/css/sccl.css">
		<link rel="stylesheet" type="text/css"
			href="common/skin/qingxin/skin.css" id="layout-skin" />

	</head>

	<body>
		<div class="layout-admin">
			<header class="layout-header">
			<span class="header-logo">欢迎使用电子书后台管理系统</span>
			<a class="header-menu-btn" href="javascript:;"><i
				class="icon-font">&#xe600;</i>
			</a>
			<ul class="header-bar">
				<li class="header-bar-role">
					<a href="javascript:;">超级管理员</a>
				</li>
				<li class="header-bar-nav">
					<a href="javascript:;">${ user.realName }<i class="icon-font"
						style="margin-left: 5px;">&#xe60c;</i>
					</a>
					<ul class="header-dropdown-menu">
						<li>
							<a href="../LoginOut">退出</a>
						</li>
					</ul>
				</li>
				<li class="header-bar-nav">
					<a href="javascript:;" title="换肤"><i class="icon-font">&#xe608;</i>
					</a>
					<ul class="header-dropdown-menu right dropdown-skin">
						<li>
							<a href="javascript:;" data-val="qingxin" title="清新">清新</a>
						</li>
						<li>
							<a href="javascript:;" data-val="blue" title="蓝色">蓝色</a>
						</li>
						<li>
							<a href="javascript:;" data-val="molv" title="墨绿">墨绿</a>
						</li>

					</ul>
				</li>
			</ul>
			</header>
			<aside class="layout-side">
			<ul class="side-menu">

			</ul>
			</aside>

			<div class="layout-side-arrow">
				<div class="layout-side-arrow-icon">
					<i class="icon-font">&#xe60d;</i>
				</div>
			</div>

			<section class="layout-main">
			<div class="layout-main-tab">
				<button class="tab-btn btn-left">
					<i class="icon-font">&#xe60e;</i>
				</button>
				<nav class="tab-nav">
				<div class="tab-nav-content">
					<a href="javascript:;" class="content-tab active"
						data-id="home.jsp">首页</a>
				</div>
				</nav>
				<button class="tab-btn btn-right">
					<i class="icon-font">&#xe60f;</i>
				</button>
			</div>
			<div class="layout-main-body">
				<iframe class="body-iframe" name="iframe0" width="100%" height="99%"
					src="home.html" frameborder="0" data-id="home.jsp" seamless></iframe>
			</div>
			</section>
		</div>
		<script type="text/javascript"
			src="common/lib/jquery-1.9.0.min.js"></script>
		<script type="text/javascript" src="common/js/sccl.js"></script>
		<script type="text/javascript" src="common/js/sccl-util.js"></script>
	</body>
</html>