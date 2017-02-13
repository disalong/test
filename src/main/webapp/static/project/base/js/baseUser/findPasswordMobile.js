$(function() {

	$("title").text(baseUtil.val(baseUtil.val("N.sendSmsVCode")));

	var findPasswordContent = $("#section-floor-1 .panel-body");
	base.editWin.editWinInput(baseUtil.val("B.User.userMobilePhone"),
			"userMobilePhone", "userMobilePhone", findPasswordContent, null,
			"338px", null);
	$("#userMobilePhone").val(baseUtil.val("findPasswordMobile"));
	baseUtil.fangReadOnly($("#userMobilePhone"));
	base.editWin.editWinInput(baseUtil.val("N.mobileVCode"), "mobileVCode",
			"mobileVCode", findPasswordContent, baseUtil.validateAttr("true",
					null, null, baseUtil.val("E.mobileVCodeRequired")),
			"160px", baseUtil.val("N.mobileVCode"));
	baseWidget
			.button("sendMobileVCode", baseUtil.val("N.sendSmsVCode"), baseUtil
					.val("N.sendSmsVCode"), findPasswordContent
					.find(".k-edit-field.mobileVCode"), "sendMobileVCode", null);
	baseWidget.blueButtonHtml(baseUtil.val("N.submit"), findPasswordContent,
			"fa fa-check", "findPassSubmitBtn", "findPassSubmitBtn");
	var keyPairPass = "";
	baseUtil.AJpost(ctx + "/baseUserWS/getKeyPair", null, function(data) {
		keyPairPass = data["BASE_keyPair"];
	});
	$("#sendMobileVCode").bind(
			"click",
			function() {
				//给按钮添加disabled属性的时候，按钮莫名进行偏移，最后解决办法是在top属性中加!important
				$("#sendMobileVCode").attr("disabled", "disabled");
				var setMobileVCodeUrl = ctx
						+ "/baseUserWS/sendFindPasswordMobileVCode";
				baseUtil.AJpost(setMobileVCodeUrl, {}, function(data) {
					var mvt = mobileVCodeRetryTime;
					$("#sendMobileVCode i").text(
							baseUtil.val("N.sent") + "," + (mvt -= 1)
									+ baseUtil.val("N.secondRetry"));
					window.tidLoginMobile = setInterval(function() {
						if (mvt >= 1) {
							$("#sendMobileVCode i").text(
									baseUtil.val("N.sent") + "," + (mvt -= 1)
											+ baseUtil.val("N.secondRetry"));
						} else {
							clearTimeout(tidLoginMobile);
							$("#sendMobileVCode").removeAttr("disabled");
							$("#sendMobileVCode i").text(
									baseUtil.val("N.reSend"));
						}
					}, 1000);
				});
			});
	baseUtil.simpleSubmitForm($("#section-floor-1"), $("#findPassSubmitBtn"),
			function() {
				baseUtil.AJpost(ctx
						+ "/baseUserWS/checkFindPasswordMobileVCode", {
					"p_o_mobileVCode" : baseUtil.encryptPasswordByPPK($.trim($(
							"#mobileVCode").val()), keyPairPass)
				}, function(data) {
					location.href = ctx + "/baseUserWS/findPasswordChangePwd";
				});
			});
});
