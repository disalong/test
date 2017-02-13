<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/jsp/project/base/page/header.jsp"%>

<link rel="stylesheet"
	href="${ctx }/static/project/base/style/css/${fgConfig.defaultTheme }/baseUser/forgetPassword.css"></link>

</head>
<body>

	<input type="hidden" id="E.acountRequired"
		value='<spring:message code="E.acountRequired"/>' />
	<input type="hidden" id="N.phoneMailName"
		value='<spring:message code="N.phoneMailName"/>' />
	<input type="hidden" id="E.accountNotExist"
		value='<spring:message code="E.accountNotExist"/>' />


	<div class='base-fadeIn k-content'>

		<!-- 各楼层 -->
		<div class="base-user-edit-content" id="section-floor-1">
			<div class="base-panel">
				<div class="panel-head">
					<span class='fa fa-key'></span><span class='title'><spring:message
							code="N.retrievePass" /></span>
				</div>
				<form action="">
					<div class="panel-body">
						<div class='findPassword-area'>
							<div class='label'>
								<span class='fa fa-exclamation-circle'></span><span class='text'><spring:message
										code="N.accountYouFind" /></span>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>

<!-- 弹出编辑窗口 -->
<%@include file="/WEB-INF/jsp/project/base/component/editWin.jsp"%>
<script type="text/javascript"
	src="${ctx}/static/project/base/js/baseUser/forgetPassword.js"></script>
<%@include file="/WEB-INF/jsp/project/base/page/footer.jsp"%>