$(function() {
	$("title").text(baseUtil.val("N.userCenter"));
	/**
	 * 网页左侧楼层导航条跟随滚动
	 */
	$("#sticky-panel").css("margin-top", (screenHeight / 3) + "px");
	baseWidget.scrollMenu($("#sticky-panel"), 700);

	/**
	 * 基本资料
	 */
	baseWidget.giveHeadImg($("#head-img-area-img"),
			loginToken_user["userHeadImg"]);
	base.editWin.editWinInput(baseUtil.val("B.User.userNickname"),
			"userNickname", "userNickname", $("#section-floor-1 .panel-body"),
			baseUtil.validateAttr("false", ".{0,100}", null, baseUtil
					.val("E.User.userNickname")), "260px", "");
	base.editWin.editWinInput(baseUtil.val("B.User.userFax"), "userFax",
			"userFax", $("#section-floor-1 .panel-body"), baseUtil
					.validateAttr("false", ".{0,400}", null, baseUtil
							.val("E.User.userFax")), "260px", "");
	base.editWin.editWinInput(baseUtil.val("B.User.userMailingAddress"),
			"userMailingAddress", "userMailingAddress",
			$("#section-floor-1 .panel-body"), baseUtil
					.validateAttr("false", ".{0,400}", null, baseUtil
							.val("E.User.userMailingAddress")), "260px", "");
	base.editWin.editWinLocalSelect(baseUtil.val("B.User.userGender"),
			"userGender", "userGender", baseSelectItems["userGenderItems"],
			$("#section-floor-1 .panel-body"), null, null, "259px", "");
	base.editWin.editWinNumericInput(baseUtil.val("B.User.userAge"), "userAge",
			"userAge", $("#section-floor-1 .panel-body"), null, null, "260px",
			baseUtil.validateAttr("false", ".{0,3}&&\d+", null, baseUtil
					.val("E.User.userAge")));
	base.editWin.editWinEditor(baseUtil.val("B.User.userIntroduce"),
			"userIntroduce", "userIntroduce",
			$("#section-floor-3 .panel-body"), baseUtil.validateAttr("false",
					"", null, baseUtil.val("E.User.userIntroduce")), "720px",
			"");
	baseWidget.imageCut("userHeadImg", $("#section-floor-4 .panel-body"), [ {
		width : 100,
		height : 100
	}, {
		width : 80,
		height : 80
	}, {
		width : 32.7,
		height : 32.7
	} ]);
	baseUtil.jsonToForm(JSON.stringify(loginToken_user), $("#userCenterForm"));

	/**
	 * 部门与角色
	 */
	baseUtil.AJpost(ctx
			+ "/baseUserWS/UserReadService/findDepartmentNamesByUserId", {
		"p_o_userId" : loginToken_user["userId"]
	}, function(data) {
		$("#department-text").text(data.join(","));
	});
	baseUtil.AJpost(ctx + "/baseUserWS/UserReadService/findRoleNamesByUserId",
			{
				"p_o_userId" : loginToken_user["userId"]
			}, function(data) {
				$("#role-text").text(data.join(","));
			});
	/**
	 * 用户状态
	 */
	$("#userStatus").text(
			baseUtil.getLabel($("#userStatus").text(),
					baseSelectItems.userStatusItems));
	/**
	 * 跳转到账户设置
	 */
	$("#accountSetting").click(function() {
		location.href = ctx + "/baseUserWS/accountSetting";
	});

});
