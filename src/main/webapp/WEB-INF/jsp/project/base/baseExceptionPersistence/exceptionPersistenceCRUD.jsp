<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/jsp/project/base/page/header.jsp"%>
<link rel="stylesheet"
	href="${ctx}/static/project/base/style/css/${fgConfig.defaultTheme}/baseExceptionPersistence/exceptionPersistenceCRUD.css"></link>
<title></title>
</head>
<body>

	<input type="hidden" id="B.ExceptionPersistence"
		value='<spring:message code="B.ExceptionPersistence"/>' />

	<input type="hidden" id="targetFieldPropertiesJSON"
		value='${targetFieldPropertiesJSON}' />

	<!-- 表格，因为表格展现的时候有样式调整，所以用户会看到表格调整的过程，不太舒服，所以先把表格display=none，调整完成后再展示出来 -->
	<%@include file="/WEB-INF/jsp/project/base/component/grid.jsp"%>
	<div id="exceptionPersistenceCRUDGrid" style="display: none"
		class="base-main-grid"></div>

	<script type="text/javascript"
		src="${ctx}/static/project/base/js/baseExceptionPersistence/exceptionPersistenceCRUD.js"></script>

	<%@include file="/WEB-INF/jsp/project/base/page/footer.jsp"%>

</body>
</html>

