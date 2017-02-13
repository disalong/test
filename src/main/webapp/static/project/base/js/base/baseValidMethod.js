/**
* baseUtil.validateAttr()方法中有一个validMethod参数，这里放置一些
* window的方法供这个参数引用与重用。
* 
* ！！！！！使用这些方法前先要检查你的页面是否引入和方法中需要的多语言。
*/

/**
 * 验证新密码是否符合系统的密码规则，最早用在修改用户密码。
 */
window.accountSettingVerifyNewPassword = function(input) {
	var value = input.val();
	var errorMsg = "";
	if (value.length < passwordMinLength) {
		errorMsg = errorMsg + ", " + baseUtil.val("N.minLength")
				+ passwordMinLength;
	}
	if (baseUtil.getAlphaCharLength(value) < passwordMinAlphaCharLength) {
		errorMsg = errorMsg + ", " + baseUtil.val("N.minAlphaCharLength")
				+ passwordMinAlphaCharLength;
	}
	if (baseUtil.getNumLength(value) < passwordMinMunberCharLength) {
		errorMsg = errorMsg + ", " + baseUtil.val("N.minMunberCharLength")
				+ passwordMinMunberCharLength;
	}
	if (baseUtil.getSpecialCharLength(value) < passwordMinSpacialCharLength) {
		errorMsg = errorMsg + ", " + baseUtil.val("N.minSpacialCharLength")
				+ passwordMinSpacialCharLength;
	}
	if ("Y" == passwordConstantBigAndSmall
			&& !baseUtil.containBigAndSmall(value)) {
		errorMsg = errorMsg + ", " + baseUtil.val("N.constantBigAndSmall");
	}
	if (errorMsg) {
		input.attr("validationMessage", baseUtil.val("N.newPasswordLimit")
				+ ": " + baseUtil.val("E.User.userPassword") + errorMsg);
		return false;
	}
	input.attr("validationMessage", baseUtil.val("N.newPasswordLimit") + ": "
			+ baseUtil.val("E.User.userPassword"));
	return true;
};

/**
 * 验证账号是否已经存在并且账号格式是否正确，最早用在用户注册。
 */
window.loginCheckAccountExist = function(input) {
	var value = input.val();
	var errorMsg = "";
	if (!value.mth(baseConstant.pattern.accountCheck)) {
		errorMsg = errorMsg + ", " + baseUtil.val("N.accountCheck");
	}
	baseUtil.AJpost(ctx + "/baseUserWS/loginCheckAccountExist", {
		"p_o_account" : value
	}, function(data) {
		if (data["exist"] && "Y" == data["exist"]) {
			errorMsg = errorMsg + ", " + baseUtil.val("E.accountExist");
		}
	});
	if (errorMsg) {
		input.attr("validationMessage", baseUtil.val("E.acountRequired")
				+ errorMsg);
		return false;
	}
	input.attr("validationMessage", baseUtil.val("E.acountRequired"));
	return true;
};

/**
 * 验证账号是否不存在，最早用在找回密码的第一步。
 */
window.findPasswordCheckAccountExist = function(input) {
	var value = input.val();
	var errorMsg = "";
	baseUtil.AJpost(ctx + "/baseUserWS/loginCheckAccountExist", {
		"p_o_account" : value
	}, function(data) {
		if (!(data["exist"] && "Y" == data["exist"])) {
			errorMsg = errorMsg + ", " + baseUtil.val("E.accountNotExist");
		}
	});
	if (errorMsg) {
		input.attr("validationMessage", baseUtil.val("E.acountRequired")
				+ errorMsg);
		return false;
	}
	input.attr("validationMessage", baseUtil.val("E.acountRequired"));
	return true;
};

/**
 * 检查邮箱地址是否正确，最早用在邮箱快登。
 */
window.loginCheckUserEmail = function(input) {
	var value = input.val();
	var errorMsg = "";
	if (0 != value.length && 100 < value.length) {
		errorMsg = errorMsg + ", " + baseUtil.val("E.User.userEmail");
	}
	if (!value.mth(baseConstant.pattern.emailCheck)) {
		errorMsg = errorMsg + ", " + baseUtil.val("N.emailFormatError");
	}
	if (errorMsg) {
		input.attr("validationMessage", baseUtil.val("E.emailRequired")
				+ errorMsg);
		return false;
	}
	input.attr("validationMessage", baseUtil.val("E.emailRequired"));
	return true;
};

/**
 * 检查手机号格式是否正确，最早用在手机快登。
 */
window.loginCheckUserMobilePhone = function(input) {
	var value = input.val();
	var errorMsg = "";
	if (0 != value.length && 11 != value.length) {
		errorMsg = errorMsg + ", " + baseUtil.val("E.mobileLength");
	}
	if (!value.mth("\\d+")) {
		errorMsg = errorMsg + ", " + baseUtil.val("E.numberOnly");
	}
	if (errorMsg) {
		input.attr("validationMessage", baseUtil.val("E.mobileRequired")
				+ errorMsg);
		return false;
	}
	input.attr("validationMessage", baseUtil.val("E.mobileRequired"));
	return true;
};

/**
 * 检查手机号格式是否正确并且是否已经存在，最早用在用户注册。
 */
window.registerCheckUserMobileExist = function(input) {
	var value = input.val();
	var errorMsg = "";
	baseUtil.AJpost(ctx + "/baseUserWS/registerCheckUserMobileExist", {
		"p_o_mobile" : value
	}, function(data) {
		if (data["exist"] && "Y" == data["exist"]) {
			errorMsg = errorMsg + ", " + baseUtil.val("E.mobileExist");
		}
	});
	if (0 != value.length && 11 != value.length) {
		errorMsg = errorMsg + ", " + baseUtil.val("E.mobileLength");
	}
	if (!value.mth("\\d+")) {
		errorMsg = errorMsg + ", " + baseUtil.val("E.numberOnly");
	}
	if (errorMsg) {
		input.attr("validationMessage", baseUtil.val("E.mobileRequired")
				+ errorMsg);
		return false;
	}
	input.attr("validationMessage", baseUtil.val("E.mobileRequired"));
	return true;
};
