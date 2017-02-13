<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/jsp/project/base/page/header.jsp"%>

<link rel="stylesheet"
	href="${ctx }/static/project/base/style/css/${fgConfig.defaultTheme }/baseUser/accountSetting.css"></link>

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
								code="N.accountSet" /></span>
					</div>
					<div class="panel-body">
						<div class='readonly-area'>
							<div class='head-img-area'>
								<img
									src="${ctx }/static/project/base/style/image/base-userHeader-test.jpg"
									id='head-img-area-img'></img>
							</div>
							<div class='contact-area'>
								<div class='userName-area'>
									<span class='fa fa-user'
										title='<spring:message code="B.User.userName"/>'></span><span
										id='userName' class='text'></span>
								</div>
								<div class='userMobilePhone-area'>
									<span class='fa fa-mobile'
										title='<spring:message code="B.User.userMobilePhone"/>'></span><span
										id='userMobilePhone' class='text'></span>
								</div>
								<div class='userEmail-area'>
									<span class='fa fa-envelope'
										title='<spring:message code="B.User.userEmail"/>'></span><span
										id='userEmail' class='text'></span>
								</div>
							</div>
							<div class='edit-div' id="profileSet">
								<span class='fa fa-edit'></span><span class='text'><spring:message
										code="N.profileSet" /></span>
							</div>
						</div>
						<div class="safe-area">
							<div class="safe-floot">
								<div class="title">
									<spring:message code="N.loginPassword" />
								</div>
								<div class="desc change-pwd">
									<spring:message code="N.loginPasswordPleaceholder" />
								</div>
								<div class="btn">
									<div class="status-div">
										<span class="status-fa fa fa-check-circle"></span> <span
											class="status-text"><spring:message code="N.hadSet" /></span>
									</div>
									<div class="status-update-div">
										<a href="${ctx }/baseUserWS/changeLoginPassword"><span
											class="status-update"><spring:message code="N.update" /></span></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>

	</div>
</body>
</html>

<!-- <span class="status-fa fa fa-exclamation-circle"></span> -->

<!-- 弹出编辑窗口 -->
<%@include file="/WEB-INF/jsp/project/base/component/editWin.jsp"%>
<script type="text/javascript"
	src="${ctx}/static/project/base/js/baseUser/accountSetting.js"></script>
<%@include file="/WEB-INF/jsp/project/base/page/footer.jsp"%>