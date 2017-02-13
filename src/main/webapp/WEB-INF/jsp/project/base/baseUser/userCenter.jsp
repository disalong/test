<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/jsp/project/base/page/header.jsp"%>

<link rel="stylesheet"
	href="${ctx }/static/project/base/style/css/${fgConfig.defaultTheme }/baseUser/userCenter.css"></link>
<link rel="stylesheet"
	href="${ctx }/static/project/base/style/css/${fgConfig.defaultTheme }/component/imageCut.css"></link>

</head>
<body>

	<input type="hidden" id="N.userCenter"
		value='<spring:message code="N.userCenter"/>' />

	<input type="hidden" id="B.User.userNickname"
		value='<spring:message code="B.User.userNickname"/>' />
	<input type="hidden" id="E.User.userNickname"
		value='<spring:message code="E.User.userNickname"/>' />
	<input type="hidden" id="B.User.userFax"
		value='<spring:message code="B.User.userFax"/>' />
	<input type="hidden" id="E.User.userFax"
		value='<spring:message code="E.User.userFax"/>' />
	<input type="hidden" id="B.User.userMailingAddress"
		value='<spring:message code="B.User.userMailingAddress"/>' />
	<input type="hidden" id="E.User.userMailingAddress"
		value='<spring:message code="E.User.userMailingAddress"/>' />
	<input type="hidden" id="B.User.userGender"
		value='<spring:message code="B.User.userGender"/>' />
	<input type="hidden" id="E.User.userGender"
		value='<spring:message code="E.User.userGender"/>' />
	<input type="hidden" id="B.User.userAge"
		value='<spring:message code="B.User.userAge"/>' />
	<input type="hidden" id="E.User.userAge"
		value='<spring:message code="E.User.userAge"/>' />
	<input type="hidden" id="B.User.userIntroduce"
		value='<spring:message code="B.User.userIntroduce"/>' />
	<input type="hidden" id="E.User.userAge"
		value='<spring:message code="E.User.userIntroduce"/>' />


	<input type="hidden" id="N.editor.bold"
		value='<spring:message code="N.editor.bold"/>' />
	<input type="hidden" id="N.editor.italic"
		value='<spring:message code="N.editor.italic"/>' />
	<input type="hidden" id="N.editor.underline"
		value='<spring:message code="N.editor.underline"/>' />
	<input type="hidden" id="N.editor.strikethrough"
		value='<spring:message code="N.editor.strikethrough"/>' />
	<input type="hidden" id="N.editor.superscript"
		value='<spring:message code="N.editor.superscript"/>' />
	<input type="hidden" id="N.editor.subscript"
		value='<spring:message code="N.editor.subscript"/>' />
	<input type="hidden" id="N.editor.justifyCenter"
		value='<spring:message code="N.editor.justifyCenter"/>' />
	<input type="hidden" id="N.editor.justifyLeft"
		value='<spring:message code="N.editor.justifyLeft"/>' />
	<input type="hidden" id="N.editor.justifyRight"
		value='<spring:message code="N.editor.justifyRight"/>' />
	<input type="hidden" id="N.editor.justifyFull"
		value='<spring:message code="N.editor.justifyFull"/>' />
	<input type="hidden" id="N.editor.insertUnorderedList"
		value='<spring:message code="N.editor.insertUnorderedList"/>' />
	<input type="hidden" id="N.editor.insertOrderedList"
		value='<spring:message code="N.editor.insertOrderedList"/>' />
	<input type="hidden" id="N.editor.indent"
		value='<spring:message code="N.editor.indent"/>' />
	<input type="hidden" id="N.editor.outdent"
		value='<spring:message code="N.editor.outdent"/>' />
	<input type="hidden" id="N.editor.createLink"
		value='<spring:message code="N.editor.createLink"/>' />
	<input type="hidden" id="N.editor.unlink"
		value='<spring:message code="N.editor.unlink"/>' />
	<input type="hidden" id="N.editor.insertImage"
		value='<spring:message code="N.editor.insertImage"/>' />
	<input type="hidden" id="N.editor.insertFile"
		value='<spring:message code="N.editor.insertFile"/>' />
	<input type="hidden" id="N.editor.insertHtml"
		value='<spring:message code="N.editor.insertHtml"/>' />
	<input type="hidden" id="N.editor.fontName"
		value='<spring:message code="N.editor.fontName"/>' />
	<input type="hidden" id="N.editor.fontNameInherit"
		value='<spring:message code="N.editor.fontNameInherit"/>' />
	<input type="hidden" id="N.editor.fontSize"
		value='<spring:message code="N.editor.fontSize"/>' />
	<input type="hidden" id="N.editor.fontSizeInherit"
		value='<spring:message code="N.editor.fontSizeInherit"/>' />
	<input type="hidden" id="N.editor.formatBlock"
		value='<spring:message code="N.editor.formatBlock"/>' />
	<input type="hidden" id="N.editor.formatting"
		value='<spring:message code="N.editor.formatting"/>' />
	<input type="hidden" id="N.editor.style"
		value='<spring:message code="N.editor.style"/>' />
	<input type="hidden" id="N.editor.viewHtml"
		value='<spring:message code="N.editor.viewHtml"/>' />
	<input type="hidden" id="N.editor.overwriteFile"
		value='<spring:message code="N.editor.overwriteFile"/>' />
	<input type="hidden" id="N.editor.imageWebAddress"
		value='<spring:message code="N.editor.imageWebAddress"/>' />
	<input type="hidden" id="N.editor.imageAltText"
		value='<spring:message code="N.editor.imageAltText"/>' />
	<input type="hidden" id="N.editor.fileWebAddress"
		value='<spring:message code="N.editor.fileWebAddress"/>' />
	<input type="hidden" id="N.editor.fileTitle"
		value='<spring:message code="N.editor.fileTitle"/>' />
	<input type="hidden" id="N.editor.linkWebAddress"
		value='<spring:message code="N.editor.linkWebAddress"/>' />
	<input type="hidden" id="N.editor.linkText"
		value='<spring:message code="N.editor.linkText"/>' />
	<input type="hidden" id="N.editor.linkToolTip"
		value='<spring:message code="N.editor.linkToolTip"/>' />
	<input type="hidden" id="N.editor.linkOpenInNewWindow"
		value='<spring:message code="N.editor.linkOpenInNewWindow"/>' />
	<input type="hidden" id="N.editor.dialogInsert"
		value='<spring:message code="N.editor.dialogInsert"/>' />
	<input type="hidden" id="N.editor.dialogUpdate"
		value='<spring:message code="N.editor.dialogUpdate"/>' />
	<input type="hidden" id="N.editor.dialogCancel"
		value='<spring:message code="N.editor.dialogCancel"/>' />
	<input type="hidden" id="N.editor.createTable"
		value='<spring:message code="N.editor.createTable"/>' />
	<input type="hidden" id="N.editor.addColumnLeft"
		value='<spring:message code="N.editor.addColumnLeft"/>' />
	<input type="hidden" id="N.editor.addColumnRight"
		value='<spring:message code="N.editor.addColumnRight"/>' />
	<input type="hidden" id="N.editor.addRowAbove"
		value='<spring:message code="N.editor.addRowAbove"/>' />
	<input type="hidden" id="N.editor.addRowBelow"
		value='<spring:message code="N.editor.addRowBelow"/>' />
	<input type="hidden" id="N.editor.deleteRow"
		value='<spring:message code="N.editor.deleteRow"/>' />
	<input type="hidden" id="N.editor.deleteColumn"
		value='<spring:message code="N.editor.deleteColumn"/>' />
	<input type="hidden" id="N.editor.imageWidth"
		value='<spring:message code="N.editor.imageWidth"/>' />
	<input type="hidden" id="N.editor.imageHeight"
		value='<spring:message code="N.editor.imageHeight"/>' />
	<input type="hidden" id="N.editor.cleanFormatting"
		value='<spring:message code="N.editor.cleanFormatting"/>' />
	<input type="hidden" id="N.editor.print"
		value='<spring:message code="N.editor.print"/>' />
	<input type="hidden" id="N.editor.backColor"
		value='<spring:message code="N.editor.backColor"/>' />
	<input type="hidden" id="N.editor.foreColor"
		value='<spring:message code="N.editor.foreColor"/>' />



	<div class='base-fadeIn k-content'>
		<form action="" id="userCenterForm">

			<!-- 左侧楼梯导航 -->
			<div id="bdms_floor_menu" class="sidecate nav  t10-fix">
				<ul mon="area=floor_anchor" id="sticky-panel"
					style="left: auto; top: auto; margin-right: 0px; margin-left: 0px; margin-top: 0px;">
					<li class="current"><a href="#section-floor-1"><span
							id="left-panel-1" class="inner-ico fa fa-street-view"></span><span
							class="inner-text"><spring:message code="N.normalInfo" /></span></a></li>
					<li><a href="#section-floor-2"><span id="left-panel-2"
							class="inner-ico fa fa-graduation-cap"></span><span
							class="inner-text"><spring:message code="N.depAndRole" /></span></a></li>
					<li><a href="#section-floor-5"><span id="left-panel-5"
							class="inner-ico fa fa-lock"></span><span class="inner-text"><spring:message
									code="N.userStatus" /></span></a></li>
					<li><a href="#section-floor-3"><span id="left-panel-3"
							class="inner-ico fa fa-address-card-o"></span><span
							class="inner-text"><spring:message code="N.introduce" /></span></a></li>
					<li><a href="#section-floor-4"><span id="left-panel-4"
							class="inner-ico fa fa-user-circle"></span><span
							class="inner-text"><spring:message code="N.headerSet" /></span></a></li>
				</ul>
			</div>

			<!-- 各楼层 -->
			<div class="base-user-edit-content" id="section-floor-1">
				<div class="base-panel">
					<div class="panel-head">
						<span class='fa fa-street-view'></span><span class='title'><spring:message
								code="N.normalInfo" /></span>
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
							<div class='edit-div' id='accountSetting'>
								<span class='fa fa-edit'></span><span class='text'><spring:message
										code="N.accountSet" /></span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="base-user-edit-content" id="section-floor-2">
				<div class="base-panel">
					<div class="panel-head">
						<span class='fa fa-graduation-cap'></span><span class='title'><spring:message
								code="N.depAndRole" /></span>
					</div>
					<div class="panel-body">
						<div class='department-area text-panel'>
							<div class='label-div'>
								<span class='label'><spring:message code="N.department" />
									: </span>
							</div>
							<div class='text-div'>
								<span class='text' id='department-text'></span>
							</div>
						</div>
						<div class='role-area text-panel'>
							<div class='label-div'>
								<span class='label'><spring:message code="N.roles" /> :
								</span>
							</div>
							<div class='text-div'>
								<span class='text' id='role-text'></span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="base-user-edit-content" id="section-floor-5">
				<div class="base-panel">
					<div class="panel-head">
						<span class='fa fa-lock'></span><span class='title'><spring:message
								code="N.userStatus" /></span>
					</div>
					<div class="panel-body">
						<div class='userStatus-area text-panel'>
							<div class='label-div'>
								<span class='label'><spring:message
										code="B.User.userStatus" /> : </span>
							</div>
							<div class='text-div'>
								<span class='text' id='userStatus'></span>
							</div>
						</div>
						<div class='userLockReason-area text-panel'>
							<div class='label-div'>
								<span class='label'><spring:message
										code="B.User.userLockReason" /> : </span>
							</div>
							<div class='text-div'>
								<span class='text' id='userLockReason'></span>
							</div>
						</div>
						<div class='userLoginDate-area text-panel'>
							<div class='label-div'>
								<span class='label'><spring:message
										code="B.User.userLoginDate" /> : </span>
							</div>
							<div class='text-div'>
								<span class='text' id='userLoginDate'></span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="base-user-edit-content" id="section-floor-3">
				<div class="base-panel">
					<div class="panel-head">
						<span class='fa fa-address-card-o'></span><span class='title'><spring:message
								code="N.introduce" /></span>
					</div>
					<div class="panel-body"></div>
				</div>
			</div>
			<div class="base-user-edit-content" id="section-floor-4">
				<div class="base-panel">
					<div class="panel-head">
						<span class='fa fa-user-circle'></span><span class='title'><spring:message
								code="N.headerSet" /></span>
					</div>
					<div class="imgcut-label">头像上传</div>
					<div class="panel-body"></div>
				</div>
			</div>

		</form>
	</div>
</body>
</html>

<!-- 上传控件 -->
<%@include file="/WEB-INF/jsp/project/base/component/upload.jsp"%>
<!-- 弹出编辑窗口 -->
<%@include file="/WEB-INF/jsp/project/base/component/editWin.jsp"%>
<script type="text/javascript"
	src="${ctx}/static/project/base/js/baseUser/userCenter.js"></script>
<%@include file="/WEB-INF/jsp/project/base/page/footer.jsp"%>