$(function() {
	/**
	 * 登录弹出框
	 */
	base.editWin.init("j-ucLoginList", 1, "login", null, function() {
		var encryptPassword = baseUtil.encryptPasswordByPPK($.trim($(
				"#userPassword").val()), $.trim($("#userPripubKey").val()));
		baseUtil.AJpost(ctx + "/baseUserWS/UserReadService/login", {
			"j_m_o_User_user" : JSON.stringify({
				"userEmail" : $.trim($("#userEmail").val()),
				"userPassword" : $.trim(encryptPassword)
			})
		}, function(data) {
			location.href = data["loginToken_beforeLoginUrl"];
		});
	}, null, null, 600);
	window.edit_win1_kendo = window["login_edit_win1_kendo"];
	window.edit_win1_dom = window["login_edit_win1_dom"];
	window.edit_win1_form = edit_win1_dom.find("form");
	window.edit_win1_form_validator = window["login_edit_win1_form_validator"];
	//为了控制弹出框的高度，让弹出框中的内容出现纵向滚动条，我们将所有的编辑输入框都放到弹出框的form下面的class=k-grid-content的div中。
	var edit_win1_scroll_content = edit_win1_form.find(".k-grid-content");
	edit_win1_scroll_content.css("height", "186px");
	base.editWin.editWinInput("登录邮箱", "userEmail", "userEmail",
			edit_win1_scroll_content,
			"kendo_required=true validationMessage='required'", "190px");
	base.editWin.editWinInput("密码", "userPassword", "userPassword",
			edit_win1_scroll_content,
			"kendo_required=true validationMessage='required'", "190px");
	base.editWin.editWinInput("登录口令", "userPripubKey", "userPripubKey",
			edit_win1_scroll_content,
			"kendo_required=true validationMessage='required'", "190px");
	$("#j-barLoginBtn").click(
			function() {
				base.editWin.showWin(edit_win1_kendo, "您可以通过以下方式登录，或者先注册：",
						edit_win1_form_validator, edit_win1_dom);
			});
	/**
	 * 登录弹出框
	 */
	base.editWin.init("j-ucLoginList", 2, "login", null, function() {
		baseUtil.saveAJ(ctx + "/baseUserWS/UserWriteService/save", {
			"j_m_o_User_user" : JSON.stringify({
				"userEmail" : $.trim($("#userEmailRegiste").val())
			})
		}, function() {
			baseUtil.alertS("动态密码获取成功，请查看邮箱。");
		});
	}, null, null, 600);
	window.edit_win2_kendo = window["login_edit_win2_kendo"];
	window.edit_win2_dom = window["login_edit_win2_dom"];
	window.edit_win2_form = edit_win2_dom.find("form");
	window.edit_win2_form_validator = window["login_edit_win2_form_validator"];
	//为了控制弹出框的高度，让弹出框中的内容出现纵向滚动条，我们将所有的编辑输入框都放到弹出框的form下面的class=k-grid-content的div中。
	var edit_win2_scroll_content = edit_win2_form.find(".k-grid-content");
	edit_win2_scroll_content.css("height", "346px");
	base.editWin.editWinInput("用户名", "userNameRegiste", "userEmailRegiste",
			edit_win2_scroll_content,
			"kendo_required=true validationMessage='required'", "190px");
	base.editWin.editWinInput("邮箱地址", "userEmailRegiste", "userEmailRegiste",
			edit_win2_scroll_content,
			"kendo_required=true validationMessage='required'", "190px");
	base.editWin.editWinInput("验证码", "userVerifyCodeRegiste",
			"userEmailRegiste", edit_win2_scroll_content,
			"kendo_required=true validationMessage='required'", "190px");
	base.editWin.editWinInput("密码", "userPasswordRegiste", "userEmailRegiste",
			edit_win2_scroll_content,
			"kendo_required=true validationMessage='required'", "190px");
	edit_win2_scroll_content.append(base.editWin.editWinCheckbox({
		"label" : "阅读并接受《本地美食网协议》",
		"id" : "isAgree",
		"name" : "isAgree"
	}));
	$("#login_edit_win2 .base-checkbox").css("width", "380px");
	$("#j-barRegBtn").click(
			function() {
				base.editWin.showWin(edit_win2_kendo, "您可以通过以下方式注册，或者直接登录:",
						edit_win2_form_validator, edit_win2_dom);
			});
	/**
	 * 转换登录与注册框。
	 */
	$("#changeToRegister").click(function() {
	});
	$("#changeToLogin").click(function() {
	});
});