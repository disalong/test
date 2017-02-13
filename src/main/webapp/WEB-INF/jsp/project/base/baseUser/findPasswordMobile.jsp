<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/jsp/project/base/page/header.jsp"%>

<link rel="stylesheet"
	href="${ctx }/static/project/base/style/css/${fgConfig.defaultTheme }/baseUser/findPasswordMobile.css"></link>

</head>
<body>

	<input type="hidden" id="findPasswordMobile"
		value='${findPasswordMobile }' />
	<input type="hidden" id="E.mobileVCodeRequired"
		value='<spring:message code="E.mobileVCodeRequired"/>' />
	<input type="hidden" id="B.User.userMobilePhone"
		value='<spring:message code="B.User.userMobilePhone"/>' />


	<div class='base-fadeIn k-content'>

		<div class="findpwd-step">
			<div class="step-div step-1">
				<span class="step-fa fa fa-circle"></span> <span class="step">1</span>
				<span class="step-text"><spring:message code="N.setVCode" /></span>
			</div>
			<div class="step-line"></div>
			<div class="step-div">
				<span class="step-fa fa fa-circle not-activity"></span> <span
					class="step step-2">2</span> <span class="step-text not-activity"><spring:message
						code="N.changePassword" /></span>
			</div>
			<div class="step-line"></div>
			<div class="step-div">
				<span class="step-fa fa fa-circle not-activity"></span> <span
					class="step step-3">√</span> <span class="step-text not-activity"><spring:message
						code="N.ok" /></span>
			</div>
		</div>

		<!-- 各楼层 -->
		<div class="base-user-edit-content" id="section-floor-1">
			<div class="base-panel">
				<div class="panel-head">
					<span class='fa fa-key'></span><span class='title'><spring:message
							code="N.sendSmsVCode" /></span>
				</div>
				<form action="">
					<div class="panel-body">
						<div class='findPassword-area'>
							<div class='label'>
								<span class='fa fa-exclamation-circle'></span><span class='text'><span
									class="account-text">${findPasswordAccount }</span>,<spring:message
										code="N.findPwdSendVCode" /></span>
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
	src="${ctx}/static/project/base/js/baseUser/findPasswordMobile.js"></script>
<%@include file="/WEB-INF/jsp/project/base/page/footer.jsp"%>