<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/project/base/reference.jsp"%>
<link rel="stylesheet"
	href="${ctx }/static/project/base/style/css/${fgConfig.defaultTheme }/page/header.css"></link>

<!-- 为网页title添加图标 -->
<link rel="icon"
	href="${ctx }/static/project/base/style/image/base-favicon.ico"
	type="image/x-icon" />
<link rel="shortcut icon"
	href="${ctx }/static/project/base/style/image/base-favicon.ico"
	type="image/x-icon" />
<title>${bgConfig.siteName }</title>

<!-- 位于系统最上方的放置系统logo和用户头像的地方 -->
<div class="base-fadeIn base-head-content">
	<div class="base-head-bar">
		<a href="${ctx }/"><img id="baseLogo"
			title="<spring:message code="N.homePage" />"
			src="${ctx }/static/project/base/style/image/base-logo.png" /> </a>
		<div id="loginUrl">
			<a href="${ctx }/login?action=LOGIN" class="login-link"><spring:message
					code="N.login" /></a> <a href="${ctx }/login?action=REGISTER"
				class="register-link"><spring:message code="N.register" /></a>
		</div>
		<div id="userOprationDiv">
			<ul id="userOprationUl">
				<li class="userNameLi">
					<ul>
						<li>
							<div id="logout-btn-div">
								<div id="s_user_name_menu"
									class="s-isindex-wrap s-user-set-menu menu-top"
									style="right: 148.5px; display: block">
									<div>
										<a href="${ctx }/baseUserWS/userCenter" target="_blank"
											data-tid="1000"><spring:message code="N.userCenter" /></a> <a
											href="${ctx }/baseUserWS/accountSetting" data-tid="1001"
											target="_blank"><spring:message code="N.accountSet" /></a> <a
											class="quit" style="overflow: hidden" href="#"
											onclick="return false;" id="logoutButton"><spring:message
												code="N.logout" /></a>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</li>
			</ul>
			<img class="base-head-pic"
				src="${ctx }/static/project/base/style/image/base-userHeader-test.jpg" />
		</div>
	</div>
	<!-- 位于页面上方的模块主菜单 -->
	<div id="topMenuDiv">
		<ul id="topMenu"></ul>
	</div>
</div>

<script type="text/javascript"
	src="${ctx }/static/project/base/js/page/header.js"></script>
