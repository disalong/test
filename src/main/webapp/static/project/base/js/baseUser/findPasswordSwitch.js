$(function() {

	/**
	 * 如果用户有绑定手机或者邮箱等等，按钮显示“立即验证”，否则显示灰色的“未绑定”按钮，
	 * 告诉用户未绑定这些内容是无法通过他们找回账户的。
	 */
	var findPasswordMobile = baseUtil.val("findPasswordMobile");
	var findPasswordEmail = baseUtil.val("findPasswordEmail");
	if (findPasswordMobile) {
		$("#section-floor-1 .text-userInfo").text(
				"(" + findPasswordMobile + ")");
	} else {
		$("#section-floor-1 .mobileBtn").addClass("k-state-disabled");
		$("#section-floor-1 .btn-text").text(baseUtil.val("N.noBound"));
	}
	if (findPasswordEmail) {
		$("#section-floor-2 .text-userInfo")
				.text("(" + findPasswordEmail + ")");
	} else {
		$("#section-floor-2 .mobileBtn").addClass("k-state-disabled");
		$("#section-floor-2 .btn-text").text(baseUtil.val("N.noBound"));
	}

});
