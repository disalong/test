$(function() {
	$("title").text(baseUtil.val("N.accountSet"));
	/**
	 * 基本资料
	 */
	baseWidget.giveHeadImg($("#head-img-area-img"),
			loginToken_user["userHeadImg"]);
	baseUtil.jsonToForm(JSON.stringify(loginToken_user),
			$("#changePasswordForm"));

	//密码修改要求
	$(".safe-area .desc.change-pwd").text(
			$(".safe-area .desc.change-pwd").text()
					+ baseUtil.getPasswordLimit());

	/**
	 * 跳转到个人中心
	 */
	$("#profileSet").click(function() {
		location.href = ctx + "/baseUserWS/userCenter";
	});

});
