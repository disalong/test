$(function() {
	$("title").text(baseUtil.val("N.changePassword"));

	base.editWin.editWinInput(baseUtil.val("N.newPassword"), "newPassword",
			"newPassword", $("#section-floor-1 .panel-body"), baseUtil
					.validateAttr("true", null,
							"accountSettingVerifyNewPassword", null), "260px",
			"", true);
	//验证两个新密码是否一致。
	window.accountSettingVerifyRetryPassword = function(input) {
		var errorMsg = "";
		if (input.val() != $("#newPassword").val()) {
			errorMsg = errorMsg + ", " + baseUtil.val("E.retryPassword");
		}
		if (errorMsg) {
			input.attr("validationMessage", baseUtil.val("E.required")
					+ errorMsg);
			return false;
		}
		input.attr("validationMessage", baseUtil.val("E.required"));
		return true;
	};
	base.editWin.editWinInput(baseUtil.val("N.retryNewPassword"),
			"retryNewPassword", "retryNewPassword",
			$("#section-floor-1 .panel-body"), baseUtil.validateAttr("true",
					null, "accountSettingVerifyRetryPassword", baseUtil
							.val("E.required")), "260px", "", true);
	baseWidget.submitButton("changePassword", baseUtil.val("N.submit"),
			baseUtil.val("N.submit"), $("#section-floor-1 .panel-body"));

	var keyPair;
	baseUtil.AJpost(ctx + "/baseUserWS/getKeyPair", null, function(data) {
		keyPair = data["BASE_keyPair"];
	});
	/**
	 * 点击修改密码的确认按钮
	 */
	var changePasswordValidate = baseUtil
			.simpleValidator($("#changePasswordForm"));
	$("#changePassword").click(
			function() {
				if (changePasswordValidate.validate()) {
					baseUtil.saveAJ(ctx
							+ "/baseUserWS/findPasswordChangePwdSubmit", {
						"newPassword" : baseUtil.encryptPasswordByPPK($.trim($(
								"#newPassword").val()), keyPair),
						"retryNewPassword" : baseUtil.encryptPasswordByPPK($
								.trim($("#retryNewPassword").val()), keyPair)
					}, function(data) {
						location.href = ctx + "/";
					});
				}
			});
});
