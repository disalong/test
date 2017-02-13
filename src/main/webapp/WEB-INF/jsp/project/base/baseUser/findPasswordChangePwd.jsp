<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/jsp/project/base/page/header.jsp"%>

<link rel="stylesheet"
	href="${ctx }/static/project/base/style/css/${fgConfig.defaultTheme }/baseUser/findPasswordChangePwd.css"></link>

</head>
<body>

	<input type="hidden" id="N.changePwd"
		value='<spring:message code="N.changePwd"/>' />
	<input type="hidden" id="E.retryPassword"
		value='<spring:message code="E.retryPassword"/>' />
	<input type="hidden" id="N.newPasswordLimit"
		value='<spring:message code="N.newPasswordLimit"/>' />
	<input type="hidden" id="N.minLength"
		value='<spring:message code="N.minLength"/>' />
	<input type="hidden" id="N.minAlphaCharLength"
		value='<spring:message code="N.minAlphaCharLength"/>' />
	<input type="hidden" id="N.minMunberCharLength"
		value='<spring:message code="N.minMunberCharLength"/>' />
	<input type="hidden" id="N.minSpacialCharLength"
		value='<spring:message code="N.minSpacialCharLength"/>' />
	<input type="hidden" id="N.constantBigAndSmall"
		value='<spring:message code="N.constantBigAndSmall"/>' />
	<input type="hidden" id="E.User.userPassword"
		value='<spring:message code="E.User.userPassword"/>' />

	<div class='base-fadeIn k-content'>

		<div class="findpwd-step">
			<div class="step-div step-1">
				<span class="step-fa fa fa-circle"></span> <span class="step">1</span>
				<span class="step-text"><spring:message code="N.setVCode" /></span>
			</div>
			<div class="step-line finish"></div>
			<div class="step-div">
				<span class="step-fa fa fa-circle"></span> <span class="step step-2">2</span>
				<span class="step-text"><spring:message
						code="N.changePassword" /></span>
			</div>
			<div class="step-line"></div>
			<div class="step-div">
				<span class="step-fa fa fa-circle not-activity"></span> <span
					class="step step-3">√</span> <span class="step-text not-activity"><spring:message
						code="N.ok" /></span>
			</div>
		</div>

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
								<span class='fa fa-key'></span><span class='text'><span
									class='account-text'>${findPasswordAccount }</span>,<spring:message
										code="N.changePwd" /></span>
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
	src="${ctx}/static/project/base/js/baseUser/findPasswordChangePwd.js"></script>
<%@include file="/WEB-INF/jsp/project/base/page/footer.jsp"%>