$(function() {

	$("title").text(baseUtil.val(baseUtil.val("N.sendEmailVCode")));

	var findPasswordContent = $("#section-floor-1 .panel-body");
	base.editWin.editWinInput(baseUtil.val("B.User.userEmail"),
			"userEmailEmail", "userEmailEmail", findPasswordContent, null,
			"338px", null);
	$("#userEmailEmail").val(baseUtil.val("findPasswordEmail"));
	baseUtil.fangReadOnly($("#userEmailEmail"));
	base.editWin.editWinInput(baseUtil.val("N.emailVCode"), "emailVCode",
			"emailVCode", findPasswordContent, baseUtil.validateAttr("true",
					null, null, baseUtil.val("E.emailVCodeRequired")), "160px",
			baseUtil.val("N.emailVCode"));
	baseWidget.button("sendEmailVCode", baseUtil.val("N.sendEmailVCode"),
			baseUtil.val("N.sendEmailVCode"), findPasswordContent
					.find(".k-edit-field.emailVCode"), "sendEmailVCode", null);
	baseWidget.blueButtonHtml(baseUtil.val("N.submit"), findPasswordContent,
			"fa fa-check", "findPassSubmitBtn", "findPassSubmitBtn");
	var keyPairPass = "";
	baseUtil.AJpost(ctx + "/baseUserWS/getKeyPair", null, function(data) {
		keyPairPass = data["BASE_keyPair"];
	});
	$("#sendEmailVCode").bind(
			"click",
			function() {
				//给按钮添加disabled属性的时候，按钮莫名进行偏移，最后解决办法是在top属性中加!important
				$("#sendEmailVCode").attr("disabled", "disabled");
				var setEmailVCodeUrl = ctx
						+ "/baseUserWS/sendFindPasswordEmailVCode";
				baseUtil.AJpost(setEmailVCodeUrl, {}, function(data) {
					var mvt = mobileVCodeRetryTime;
					$("#sendEmailVCode i").text(
							baseUtil.val("N.sent") + "," + (mvt -= 1)
									+ baseUtil.val("N.secondRetry"));
					window.tidLoginEmail = setInterval(function() {
						if (mvt >= 1) {
							$("#sendEmailVCode i").text(
									baseUtil.val("N.sent") + "," + (mvt -= 1)
											+ baseUtil.val("N.secondRetry"));
						} else {
							clearTimeout(tidLoginEmail);
							$("#sendEmailVCode").removeAttr("disabled");
							$("#sendEmailVCode i").text(
									baseUtil.val("N.reSend"));
						}
					}, 1000);
				});
			});
	baseUtil.simpleSubmitForm($("#section-floor-1"), $("#findPassSubmitBtn"),
			function() {
				baseUtil.AJpost(
						ctx + "/baseUserWS/checkFindPasswordEmailVCode", {
							"p_o_emailVCode" : baseUtil.encryptPasswordByPPK($
									.trim($("#emailVCode").val()), keyPairPass)
						}, function(data) {
							location.href = ctx
									+ "/baseUserWS/findPasswordChangePwd";
						});
			});
});
