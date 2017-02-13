$(function() {
	/**
	 * 网页渐现，提高体验。网页脚部尽量控制在网页内容出来之后才加载，
	 * 否则比如表格这些，我没加base-fadeIn，结果就是头尾先出来了，然后
	 * 中间的内容出来，弄得网页突然由矮变高。
	 */
	baseUtil.fadeIn(".base-fadeIn:not(.base-footer-context)", 1);
	baseUtil.fadeIn(".base-footer-context", 2);

	/**
	 * 密码过期前提醒，并且必须是登录成功之后的页面才提醒
	 */
	if (passwordExpireRemind && loginToken_user) {
		baseUtil.alertI(baseUtil.val("E.passwordExpireMsg")
				+ passwordExpireRemind + ". <a href='" + ctx
				+ "/baseUserWS/accountSetting'>"
				+ baseUtil.val("N.changePassword") + "</a>");
		baseUtil.AJpost(ctx + "/baseUserWS/cleanPasswordExpireRemind", null,
				null, null, null, null);
	}

	/**
	 * 发送心跳请求
	 */
	setInterval(function() {
		baseUtil.AJpost(ctx + "/heartBeat", {
			"hbUrl" : location.href.split("?")[0]
		}, null, null, null, baseUtil.val("E.otherPalaceLogin"));
	}, heartBeatSeconds * 1000);

});
