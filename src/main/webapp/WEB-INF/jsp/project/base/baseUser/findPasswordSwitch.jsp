<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/jsp/project/base/page/header.jsp"%>

<link rel="stylesheet"
	href="${ctx }/static/project/base/style/css/${fgConfig.defaultTheme }/baseUser/findPasswordSwitch.css"></link>

</head>
<body>

	<input type="hidden" id="findPasswordMobile"
		value='${findPasswordMobile }' />
	<input type="hidden" id="findPasswordEmail"
		value='${findPasswordEmail }' />
	<input type="hidden" id="N.noBound"
		value='<spring:message code="N.noBound"/>' />

	<div class='base-fadeIn k-content'>

		<div class="about-text-area">
			<div class="about-text">
				<span class="text1"><spring:message
						code="N.yourFindPwdAccount" /> </span><span class="text2">${findPasswordAccount}</span>
				<span class="text3"> <spring:message
						code="N.plsCheckFindPwdWay" /></span>
			</div>
		</div>
		<!-- 各楼层 -->
		<div class="base-user-edit-content" id="section-floor-1">
			<div class="base-panel">
				<div class="panel-head">
					<span class='fa fa-mobile-phone'></span><span class='title'><spring:message
							code="N.mobileFindPwd" /></span>
				</div>
				<form action="">
					<div class="panel-body">
						<div class="desc-div">
							<span class="text"><spring:message
									code="N.mobileFindPwdMsg" /><span class='text-userInfo'></span></span>
						</div>
						<a href="${ctx }/baseUserWS/findPasswordMobile">
							<div
								class='k-button k-button-icontext k-primary base-grid-edit-update mobileBtn'
								href='#' data-role='button' role='button' aria-disabled='false'
								tabindex='0'>
								<div class='text'>
									<span class='fa fa-sign-in'></span> <span class='btn-text'><spring:message
											code="N.goValidate" /></span>
								</div>
							</div>
						</a>
					</div>
				</form>
			</div>
		</div>
		<div class="base-user-edit-content" id="section-floor-2">
			<div class="base-panel">
				<div class="panel-head">
					<span class='fa fa-envelope'></span><span class='title'><spring:message
							code="N.emailFindPwd" /></span>
				</div>
				<form action="">
					<div class="panel-body">
						<div class="desc-div">
							<span class="text"><spring:message
									code="N.emailFindPwdMsg" /><span class='text-userInfo'></span></span>
						</div>
						<a href="${ctx }/baseUserWS/findPasswordEmail">
							<div
								class='k-button k-button-icontext k-primary base-grid-edit-update mobileBtn'
								href='#' data-role='button' role='button' aria-disabled='false'
								tabindex='0'>
								<div class='text'>
									<span class='fa fa-sign-in'></span> <span class='btn-text'><spring:message
											code="N.goValidate" /></span>
								</div>
							</div>
						</a>
					</div>
				</form>
			</div>
		</div>
		<div class="base-user-edit-content" id="section-floor-3">
			<div class="base-panel">
				<div class="panel-head">
					<span class='fa fa-question'></span><span class='title'><spring:message
							code="N.questionFindPwd" /></span>
				</div>
				<form action="">
					<div class="panel-body">
						<div class="desc-div">
							<span class="text"><spring:message
									code="N.questionFindPwdMsg" /></span>
						</div>
						<div
							class='k-button k-button-icontext k-primary base-grid-edit-update mobileBtn'
							href='#' data-role='button' role='button' aria-disabled='false'
							tabindex='0'>
							<div class='text'>
								<span class='fa fa-sign-in'></span> <span class='btn-text'><spring:message
										code="N.goValidate" /></span>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="base-user-edit-content" id="section-floor-4">
			<div class="base-panel">
				<div class="panel-head">
					<span class='fa fa-user'></span><span class='title'><spring:message
							code="N.manualFindPwd" /></span>
				</div>
				<form action="">
					<div class="panel-body">
						<div class="desc-div">
							<span class="text"><spring:message
									code="N.manualFindPwdMsg" /></span>
						</div>
						<div
							class='k-button k-button-icontext k-primary base-grid-edit-update mobileBtn'
							href='#' data-role='button' role='button' aria-disabled='false'
							tabindex='0'>
							<div class='text'>
								<span class='fa fa-sign-in'></span> <span class='btn-text'><spring:message
										code="N.goValidate" /></span>
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
	src="${ctx}/static/project/base/js/baseUser/findPasswordSwitch.js"></script>
<%@include file="/WEB-INF/jsp/project/base/page/footer.jsp"%>