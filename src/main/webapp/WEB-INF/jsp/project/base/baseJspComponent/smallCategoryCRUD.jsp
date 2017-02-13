<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/jsp/project/base/page/header.jsp"%>
<title>Small Category</title>
</head>
<body>

	<!-- 表格 -->
	<%@include file="/WEB-INF/jsp/project/base/component/grid.jsp"%>
	<div id="smallCategoryCRUDGrid" class="base-main-grid"
		style="display: none"></div>

	<script type="text/javascript"
		src="${ctx }/static/project/base/js/baseJspComponent/smallCategoryCRUD.js"></script>

	<%@include file="/WEB-INF/jsp/project/base/page/footer.jsp"%>

</body>
</html>