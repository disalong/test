<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/jsp/project/base/page/header.jsp"%>
<link rel="stylesheet"
	href="${ctx }/static/project/base/style/css/${fgConfig.defaultTheme }/baseUser/menuCRUD.css"></link>
<title></title>
</head>
<body>

	<input type="hidden" id="B.Menu"
		value='<spring:message code="B.Menu"/>' />

	<input type="hidden" id="targetFieldPropertiesJSON"
		value='${targetFieldPropertiesJSON}' />

	<input type="hidden" id="B.Menu.menuParentId"
		value='<spring:message code="B.Menu.menuParentId"/>' />
	<input type="hidden" id="B.Menu.menuNonLeafMenuLabel"
		value='<spring:message code="B.Menu.menuNonLeafMenuLabel"/>' />
	<input type="hidden" id="B.Menu.i18nGenerate"
		value='<spring:message code="B.Menu.i18nGenerate"/>' />

	<input type="hidden" id="B.TemplateProperties.editI18n"
		value='<spring:message code="B.TemplateProperties.editI18n"/>' />


	<!-- 表格，因为表格展现的时候有样式调整，所以用户会看到表格调整的过程，不太舒服，所以先把表格display=none，调整完成后再展示出来 -->
	<%@include file="/WEB-INF/jsp/project/base/component/grid.jsp"%>
	<div id="menuCRUDGrid" style="display: none" class="base-main-grid"></div>

	<script type="text/javascript"
		src="${ctx}/static/project/base/js/baseUser/menuCRUD.js"></script>

	<%@include file="/WEB-INF/jsp/project/base/page/footer.jsp"%>

</body>
</html>

