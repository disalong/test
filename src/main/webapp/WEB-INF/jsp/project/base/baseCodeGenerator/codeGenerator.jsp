<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/jsp/project/base/page/header.jsp"%>

</head>
<body>

	<form
		action="${ctx }/baseCodeGeneratorWS/CodeGeneratorWriteService/generatorBaseWSModule"
		method="get">

		<!-- 上传控件 -->
		<%@include file="/WEB-INF/jsp/project/base/component/upload.jsp"%>
		<div id="codeGeneratorUploadDiv" class="base-reserve-max-width"></div>

		<button type="submit" id="submit1">
			<spring:message code="B.CodeGenerator.generatorBaseWSModule" />
		</button>
	</form>


	<script type="text/javascript"
		src="${ctx }/static/project/base/js/baseCodeGenerator/codeGenerator.js"></script>
</body>
</html>