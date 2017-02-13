<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="icon"
	href="${ctx }/static/project/base/style/image/base-favicon.ico"
	type="image/x-icon" />
<link rel="shortcut icon"
	href="${ctx }/static/project/base/style/image/base-favicon.ico"
	type="image/x-icon" />
<link rel="stylesheet"
	href="${ctx }/static/project/base/style/css/${fgConfig.defaultTheme }/error/error.css"></link>

<title>系统错误</title>

</head>
<body class="error-page">
	<div id="doc_main">
		<header class="hd-main clearfix" id="header"> <nav
			class="navs">
		<div class="base-logo">
			<img src="${ctx }/static/project/base/style/image/base-logo.png"></img>
		</div>
		<div>
			<a class="def-nav current" href="${ctx }/">主页</a>
		</div>
		</nav>
		<div class="info">
			<ul>
				<li class="info-i default-text"><a class="client-dload"
					href="javascript:alert('功能开发中，敬请期待哦^_^');">客户端下载</a></li>
				<li class="info-i no-separate default-text has-pulldown"><em
					class="f-icon pull-arrow"></em> <span class="more"
					onClick="javascript:alert('功能开发中，敬请期待哦^_^');">更多</span></li>
			</ul>
		</div>
		</header>
		<div class="module-error">
			<div class="error-main clearfix">
				<div class="label"
					style='background: rgba(0, 0, 0, 0) url("/static/project/base/style/image/500.png") no-repeat scroll 0 0;'></div>
				<div class="info">
					<h3 class="title">啊哦，你所访问的页面出错了。</h3>
					<div class="reason">
						<p>系统错误：</p>
						<p>${e.exceptionPersistenceMessage }</p>
					</div>
					<div class="oper">
						<p>
							<a href="javascript:history.go(-1);">返回上一级页面&gt;</a>
						</p>
						<p>
							<a href="${ctx }/">回到网站首页&gt;</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="/WEB-INF/jsp/project/base/page/footer.jsp"%>
</body>
</html>

