$(function() {

	$("title").text(baseUtil.val(baseUtil.val("N.retrievePass")));

	var findPasswordContent = $("#section-floor-1 .panel-body");
	base.editWin.editWinInput(baseUtil.val("N.acount"), "userAcount",
			"userAcount", findPasswordContent, baseUtil.validateAttr("true",
					null, "findPasswordCheckAccountExist", baseUtil
							.val("E.acountRequired")), "338px", baseUtil
					.val("N.phoneMailName"));
	base.editWin.editWinSlideVerifyCode(findPasswordContent, 338,
			"findPasswordContent", ctx
					+ "/baseSessionWS/checkVerifyCodeFindPassword");
	base.editWin.editWinSlideVerifyCode.refreshVerify("findPasswordContent",
			function() {
			});
	baseWidget.blueButtonHtml(baseUtil.val("N.submit"), findPasswordContent,
			"fa fa-check", "findPassSubmitBtn", "findPassSubmitBtn");
	var keyPairPass = "";
	baseUtil.AJpost(ctx + "/baseUserWS/getKeyPair", null, function(data) {
		keyPairPass = data["BASE_keyPair"];
	});
	baseUtil.simpleSubmitForm($("#section-floor-1"), $("#findPassSubmitBtn"),
			function() {
				baseUtil.AJpost(ctx + "/baseUserWS/findPasswordAccountSave", {
					"p_o_userAcount" : baseUtil.encryptPasswordByPPK($.trim($(
							"#userAcount").val()), keyPairPass)
				}, function(data) {
					location.href = ctx + "/baseUserWS/findPasswordSwitch"
				});
			});
});
