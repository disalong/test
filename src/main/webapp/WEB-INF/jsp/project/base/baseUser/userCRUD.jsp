<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/jsp/project/base/page/header.jsp"%>
<link rel="stylesheet"
	href="${ctx }/static/project/base/style/css/${fgConfig.defaultTheme }/baseUser/userCRUD.css"></link>
<link rel="stylesheet"
	href="${ctx }/static/project/base/style/css/${fgConfig.defaultTheme }/component/imageCut.css"></link>
<title></title>
</head>
<body>

	<input type="hidden" id="B.User"
		value='<spring:message code="B.User"/>' />

	<input type="hidden" id="targetFieldPropertiesJSON"
		value='${targetFieldPropertiesJSON}' />


	<input type="hidden" id="B.User.bindingDepartment"
		value='<spring:message code="B.User.bindingDepartment"/>' />
	<input type="hidden" id="B.Department.bindingRole"
		value='<spring:message code="B.Department.bindingRole"/>' />
	<input type="hidden" id="B.User.userHeadImgUpload.placeholder"
		value='<spring:message code="B.User.userHeadImgUpload.placeholder"/>' />
	<input type="hidden" id="N.emailFormatError"
		value='<spring:message code="N.emailFormatError"/>' />
	<input type="hidden" id="E.User.userEmail"
		value='<spring:message code="E.User.userEmail"/>' />
	<input type="hidden" id="E.emailRequired"
		value='<spring:message code="E.emailRequired"/>' />








	<!-- 表格，因为表格展现的时候有样式调整，所以用户会看到表格调整的过程，不太舒服，所以先把表格display=none，调整完成后再展示出来 -->
	<%@include file="/WEB-INF/jsp/project/base/component/grid.jsp"%>
	<div id="userCRUDGrid" style="display: none" class="base-main-grid"></div>

	<script type="text/javascript"
		src="${ctx}/static/project/base/js/baseUser/userCRUD.js"></script>

	<%@include file="/WEB-INF/jsp/project/base/page/footer.jsp"%>

</body>
</html>

