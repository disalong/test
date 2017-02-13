<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/jsp/project/base/page/header.jsp"%>

<link rel="stylesheet"
	href="${ctx }/static/project/base/style/css/${fgConfig.defaultTheme }/baseUser/changeLoginPassword.css"></link>

</head>
<body>

	<input type="hidden" id="N.accountSet"
		value='<spring:message code="N.accountSet"/>' />
	<input type="hidden" id="E.retryPassword"
		value='<spring:message code="E.retryPassword"/>' />


	<div class='base-fadeIn k-content'>

		<form action="${ctx }/baseUserWS/changePassword"
			id="changePasswordForm">

			<!-- 各楼层 -->
			<div class="base-user-edit-content" id="section-floor-1">
				<div class="base-panel">
					<div class="panel-head">
						<span class='fa fa-shield'></span><span class='title'><spring:message
								code="N.changePassword" /></span>
					</div>
					<div class="panel-body">
						<div class='updatePassword-area'>
							<div class='label'>
								<span class='fa fa-key'></span><span class='text'><spring:message
										code="N.changePassword" /></span> <span class='pwd-limit'></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>

	</div>
</body>
</html>

<!-- 弹出编辑窗口 -->
<%@include file="/WEB-INF/jsp/project/base/component/editWin.jsp"%>
<script type="text/javascript"
	src="${ctx}/static/project/base/js/baseUser/changeLoginPassword.js"></script>
<%@include file="/WEB-INF/jsp/project/base/page/footer.jsp"%>