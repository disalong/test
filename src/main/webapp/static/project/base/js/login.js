$(function() {

	/**
	 * 当未登录时访问权限路径，显示无权限提示。
	 */
	var loginToken_noPermission_message = $.trim($(
			".loginToken_noPermission_message").val());
	if (loginToken_noPermission_message) {
		baseUtil.alertE(baseUtil.val("E.noPermissionAction") + ":["
				+ loginToken_noPermission_message + "], "
				+ baseUtil.val("N.plsLogin"));
	}

	/**
	 * 登录tab组
	 */
	var tabstripUserLoginData = $("#tabstrip-userLogin").kendoTabStrip({
		select : function(e) {
			var tabId = $(e.item).attr("aria-controls");
			loginTypeController(tabId);
		},
		animation : {
			open : {
				effects : "fadeIn"
			}
		},
		dataTextField : "text",
		dataContentField : "content",
		dataSpriteCssClass : "spriteCssClass",
		dataSource : [ {
			text : baseUtil.val("N.anyiAcount"),
			spriteCssClass : "fa fa-user",
			content : "<form><div id='baseAccountContent'></div></form>"
		}, {
			text : baseUtil.val("N.emailFast"),
			spriteCssClass : "fa fa-envelope",
			content : "<form><div id='baseEmailContent'></div></form>"
		}, {
			text : baseUtil.val("N.mobileFast"),
			spriteCssClass : "fa fa-mobile-phone",
			content : "<form><div id='baseMobileContent'></div></form>"
		} ]
	}).data("kendoTabStrip");

	/**
	 * 获取登录框中“下次自动登录”以及往下的Html内容。
	 */
	function getLoginButtonContextHtml(submitBtnId, submitBtnText, linkToWhere,
			linkToWhereText) {
		if (!submitBtnText) {
			submitBtnText = baseUtil.val("N.login");
		}
		if (!linkToWhere) {
			linkToWhere = ctx + "/login?action=REGISTER";
		}
		if (!linkToWhereText) {
			linkToWhereText = baseUtil.val("N.toRegister");
		}
		return "<div class='k-edit-buttons k-state-default'>"
				+ "<div class='base-checkbox' >" + "<div class='k-edit-field'>"
				+ "<input id='"
				+ submitBtnId
				+ "-remenberme' class='k-checkbox' type='checkbox'></input><label class='k-checkbox-label' for='"
				+ submitBtnId
				+ "-remenberme' title='"
				+ baseUtil.val("N.nextAutoLogin")
				+ "'></label></div>"
				+ "<div class='base-remenberme-div' ><label class='base-remenberme' for='"
				+ submitBtnId
				+ "-remenberme'>"
				+ baseUtil.val("N.nextAutoLogin")
				+ "</label></div>"
				+ "</div>"
				+ "<div class='base-goto-register changeToRegister' >"
				+ "<span class='fa fa-sign-in'></span>"
				+ "<span><a href='"
				+ linkToWhere
				+ "'>"
				+ linkToWhereText
				+ "</a></span>"
				+ "</div>"
				+ "<div class='k-button k-button-icontext k-primary base-grid-edit-update' href='#' data-role='button' role='button' aria-disabled='false' tabindex='0'>"
				+ "<div id='"
				+ submitBtnId
				+ "'><span class='login-text'>"
				+ submitBtnText
				+ "</span><span class='login-status-icon fa fa-spinner fa-pulse'></span></div>"
				+ "</div>"
				+ "<div class='base-login-text-area'>"
				+ "<div class='base-login-other'>"
				+ "<a href='#' class='fa fa-qq'></a><a href='#' class='fa fa-weibo'></a><span>"
				+ baseUtil.val("N.otherWay") + "</span></div></div>" + "</div>";
	}
	/**
	 * 当输入框出现之后，鼠标点击输入框，边框变蓝。
	 */
	function foucsonInput() {
		$(".k-content input.k-input.base-baseWidget").bind("focusin",
				function() {
					$(".k-edit-label." + this.id).addClass("base-active");
				}).bind("focusout", function() {
			$(".k-edit-label." + this.id).removeClass("base-active");
		});
	}
	/**
	 * 初始化安亿账号登录输入框。
	 */
	var finishInitLoginUserAccount = false;
	function initLoginAcount() {
		var baseAccountContent = $("#baseAccountContent");
		baseAccountContent
				.append("<div class='base-login-logo-div'><img class='base-login-logo' src='"
						+ ctx
						+ "/static/project/base/style/image/base-userHeader-test.jpg'/></div>");
		baseAccountContent
				.append("<div class='base-login-name-div'><span class='base-login-name'></span></div>");
		baseAccountContent
				.append("<div class='base-login-load-icon'><span class='fa fa-spinner fa-pulse'></span></div>");
		base.editWin.editWinInput("<span class='fa fa-user'></span>",
				"userAcount", "userAcount", baseAccountContent, baseUtil
						.validateAttr("true", null, null, baseUtil
								.val("E.acountRequired")), "310px", baseUtil
						.val("N.phoneMailName"));
		baseWidget.autoComplete($("#userAcount"), "emailSuffix", ctx
				+ "/baseUserWS/getEmailSuffix");
		base.editWin.editWinInput("<span class='fa fa-key'></span>",
				"userPassword", "userPassword", baseAccountContent, baseUtil
						.validateAttr("true", null, "", baseUtil
								.val("E.passwordRequired")), "310px", baseUtil
						.val("N.password"), true);
		base.editWin.editWinSlideVerifyCode(baseAccountContent, 338,
				"baseAccountContent", ctx
						+ "/baseSessionWS/checkVerifyCodeAccount");
		baseAccountContent.append(getLoginButtonContextHtml("login"));
		baseAccountContent.find(".base-login-text-area").append(
				"<div class='base-forget-pass'><span class='forget-pass-text'><a href='"
						+ ctx + "/baseUserWS/forgetPassword'>"
						+ baseUtil.val("N.ifForgetPwd") + "</a></span></div>")
	}
	/**
	 * 安亿账号登录
	 */
	var finishLoginUserAccount = false;
	var keyPairAcc;
	function loginUserAccount() {
		baseUtil.AJpost(ctx + "/baseUserWS/getKeyPair", null, function(data) {
			$(".tabstrip-transparent-background .fa").hide();
			keyPairAcc = data["BASE_keyPair"];
			initLoginAcount();
		});
		foucsonInput();
		var acountLoginRemenbermeName = "acountLoginRemenbermeName";
		var acountLoginRemenbermePassword = "acountLoginRemenbermePassword";
		var acountLoginRemenberme = "acountLoginRemenberme";
		var acountLoginRemenbermeVal = $.cookie(acountLoginRemenberme);
		var acountLoginRemenbermeNameVal = $.cookie(acountLoginRemenbermeName);
		var acountLoginRemenbermePasswordVal = $
				.cookie(acountLoginRemenbermePassword);
		if ("Y" == acountLoginRemenbermeVal) {
			$("#login-remenberme")[0].checked = true;
			$("#userAcount").val(acountLoginRemenbermeNameVal);
			$("#userPassword").val(acountLoginRemenbermePasswordVal);
		}
		var getAcountLoginPassword = function(keyPairAcc) {
			if ("Y" == acountLoginRemenbermeVal) {
				return p_o_userPassword = $("#userPassword").val();
			} else {
				return baseUtil.encryptPasswordByPPK($.trim($("#userPassword")
						.val()), keyPairAcc);
			}
		};
		//不论是否记住密码，只要用户编辑过了密码框，p_o_acountLoginRemenbermeVal就提交N，并且密码重新用秘钥加密提交。
		$("#userPassword").change(function() {
			acountLoginRemenbermeVal = "N";
		});
		//必须有这个格式才整齐。
		if (true) {
			baseUtil.simpleSubmitForm($("#tabstrip-userLogin-1"), $("#login")
					.parent(), function() {
				baseUtil.saveAJ(ctx + "/baseUserWS/loginUserAcount", {
					"p_o_userAcount" : baseUtil.encryptPasswordByPPK($.trim($(
							"#userAcount").val()), keyPairAcc),
					"p_o_userPassword" : getAcountLoginPassword(keyPairAcc),
					"p_o_acountLoginRemenbermeVal" : acountLoginRemenbermeVal
				}, function(data) {
					finishLoginUserAccount = true;
					if ($("#login-remenberme")[0].checked) {
						acountLoginRemenbermeNameVal = $
								.cookie(acountLoginRemenbermeName);
						acountLoginRemenbermePasswordVal = $
								.cookie(acountLoginRemenbermePassword);
						if (acountLoginRemenbermeNameVal != $.trim($(
								"#userAcount").val())) {
							$.cookie(acountLoginRemenbermeName, $.trim($(
									"#userAcount").val()), cookieParams);
						}
						if (acountLoginRemenbermePasswordVal != $.trim($(
								"#userPassword").val())
								&& acountLoginRemenbermePasswordVal != baseUtil
										.encryptPasswordByPPK($.trim($(
												"#userPassword").val()),
												keyPairAcc)) {
							$.cookie(acountLoginRemenbermePassword,
									baseUtil
											.encryptPasswordByPPK($.trim($(
													"#userPassword").val()),
													keyPairAcc), cookieParams);
						}
						$.cookie(acountLoginRemenberme, "Y", cookieParams);
					} else {
						$.cookie(acountLoginRemenberme, "N", cookieParams);
					}
					//登录验证成功之后将用户名和密码输入框变成一个头像，目的是为了防止登录验证成功后，出来验证码，
					//用户再次修改用户名密码打算登录，这样的操作加上“记住密码”功能，逻辑上就很复杂了。qq登录就是这么
					//干的，淘宝登录更无聊，登录验证成功后，出现验证码的同时，清空密码让用户再次输入。
					$(".userAcount").css("visibility", "hidden");
					$(".userPassword").css("visibility", "hidden");
					window.slidSuccAccount = function() {
						if ("Y" == data["passwordExpire"]) {
							location.href = ctx + "/baseUserWS/accountSetting";
						} else if (data["loginToken_beforeLoginUrl"]
								&& data["loginToken_beforeLoginUrl"]
										.endWith("/accountSetting")) {
							//意思是防止修改完 密码，loginToken_beforeLoginUrl记录的是修改密码的页面，然后登陆后又跳转到修改密码。
							location.href = ctx + "/";
						} else {
							location.href = data["loginToken_beforeLoginUrl"];
						}
					};
					var load = function() {
						$(".base-login-load-icon").hide();
						$(".userAcount").hide();
						$(".userPassword").hide();
						baseUtil.fadeIn(".base-login-logo-div");
						$(".base-login-name").text(data["userNickname"]);
						baseUtil.fadeIn(".base-login-name-div");
						base.editWin.editWinSlideVerifyCode.refreshVerify(
								"baseAccountContent", slidSuccAccount);
					};
					if (data["userHeadImg"]) {
						baseWidget.giveHeadImg(
								$("#baseAccountContent .base-login-logo"),
								data["userHeadImg"]);
						$(".base-login-logo")[0].onload = load;
					} else {
						$(".base-login-load-icon").show();
						load();
					}
				});
			});
		}
		finishInitLoginUserAccount = true;
	}

	/**
	 * 初始化邮箱登录输入框。
	 */
	var finishInitLoginUserEmail = false;
	function initLoginEmail() {
		var baseEmailContent = $("#baseEmailContent");
		baseEmailContent
				.append("<div class='email-login-tips'><span class='fa fa-exclamation-circle'></span><span class='tips-title'>"
						+ baseUtil.val("N.emailLogin")
						+ ":</span><span class='tips-content'>"
						+ baseUtil.val("N.valifyIsLogin") + "</span></div>");
		base.editWin.editWinInput("<span class='fa fa-envelope'></span>",
				"userEmail", "userEmail", baseEmailContent, baseUtil
						.validateAttr("true", null, "loginCheckUserEmail",
								baseUtil.val("E.emailRequired")), "310px",
				baseUtil.val("N.email"));
		baseWidget.autoComplete($("#userEmail"), "emailSuffix", ctx
				+ "/baseUserWS/getEmailSuffix");
		base.editWin
				.editWinSlideVerifyCode(baseEmailContent, 338,
						"baseEmailContent", ctx
								+ "/baseSessionWS/checkVerifyCodeEmail");
		baseEmailContent.append(getLoginButtonContextHtml("emailLogin"));
	}
	/**
	 * 邮箱登录
	 */
	var hasEmailInitVerifyCode = false;
	var keyPairEmail;
	function loginUserEmail() {
		initLoginEmail();
		foucsonInput();
		$("#tabstrip-userLogin-2 #emailLogin-remenberme").attr("id",
				"emailLogin-agree");
		var agreementCheckboxLabel = $(
				"#tabstrip-userLogin-2 #emailLogin-agree").next();
		agreementCheckboxLabel.attr("for", "emailLogin-agree");
		agreementCheckboxLabel.attr("title", baseUtil.val("N.agreement"));
		var agreementLabel = $("#tabstrip-userLogin-2 .base-remenberme");
		agreementLabel.attr("for", "emailLogin-agree");
		agreementLabel.text(baseUtil.val("N.agreement"));
		agreementLabel.addClass("base-agreement");
		agreementLabel.attr("id", "base-agreement-label");
		$("#tabstrip-userLogin-2 .login-text")
				.text(baseUtil.val("N.sendEmail"));
		$("#tabstrip-userLogin-2 #emailLogin-agree").attr({
			"kendo_required" : true,
			"validationMessage" : baseUtil.val("N.plsChecked")
		});
		$("#base-agreement-label").click(
				function() {
					base.editWin.showWin(edit_win1_kendo, baseUtil
							.val("N.protocol"), edit_win1_form_validator,
							edit_win1_dom);
				});
		window.slidSuccEmail = function() {
			baseUtil.disabled("#tabstrip-userLogin-2");
			$("#tabstrip-userLogin-2 .login-status-icon").show();
			baseUtil.saveAJ(ctx + "/baseUserWS/saveEmail", {
				"p_o_userEmail" : baseUtil.encryptPasswordByPPK($.trim($(
						"#userEmail").val()), keyPairEmail)
			}, function(data) {
				var mvt = mobileVCodeRetryTime;
				$("#tabstrip-userLogin-2 .login-status-icon").removeClass(
						"fa-spinner fa-pulse").addClass("fa-check");
				$("#tabstrip-userLogin-2 .login-text").text(
						baseUtil.val("N.emailSent") + "," + (mvt -= 1)
								+ baseUtil.val("N.secondRetry"));
				window.tidLoginEmail = setInterval(function() {
					if (mvt >= 1) {
						$("#tabstrip-userLogin-2 .login-text").text(
								baseUtil.val("N.emailSent") + "," + (mvt -= 1)
										+ baseUtil.val("N.secondRetry"));
					} else {
						clearTimeout(tidLoginEmail);
						$("#tabstrip-userLogin-2 .login-status-icon").hide();
						$("#tabstrip-userLogin-2 .login-status-icon")
								.removeClass("fa-check").addClass(
										"fa-spinner fa-pulse");
						baseUtil.notDisabled("#tabstrip-userLogin-2");
						$("#tabstrip-userLogin-2 .login-text").text(
								baseUtil.val("N.reSend"));
					}
				}, 1000);
			});
		};
		baseUtil.AJpost(ctx + "/baseUserWS/getKeyPair", null, function(data) {
			keyPairEmail = data["BASE_keyPair"];
			baseUtil.simpleSubmitForm($("#tabstrip-userLogin-2"), $(
					"#emailLogin").parent(), function() {
				base.editWin.editWinSlideVerifyCode.refreshVerify(
						"baseEmailContent", slidSuccEmail);
				hasEmailInitVerifyCode = true;
			});
		});
		finishInitLoginUserEmail = true;
	}
	/**
	 * 弹出注册协议
	 */
	base.editWin.init("base-login-content", 1, "agreementWin", null,
			function() {

			}, null, null, 600);
	window.edit_win1_kendo = window["agreementWin_edit_win1_kendo"];
	window.edit_win1_dom = window["agreementWin_edit_win1_dom"];
	window.edit_win1_form = edit_win1_dom.find("form");
	window.edit_win1_form_validator = window["agreementWin_edit_win1_form_validator"];
	//为了控制弹出框的高度，让弹出框中的内容出现纵向滚动条，我们将所有的编辑输入框都放到弹出框的form下面的class=k-grid-content的div中。
	var edit_win1_scroll_content = edit_win1_form.find(".k-grid-content");
	edit_win1_scroll_content.css("height", "710px");
	edit_win1_scroll_content.append($("#base-agreedment-text-zh_CN"));

	/**
	 * 初始化手机登录输入框。
	 */
	var finishInitLoginMobile = false;
	function initLoginMobile() {
		var baseMobileContent = $("#baseMobileContent");
		baseMobileContent
				.append("<div class='mobile-login-tips'><span class='fa fa-exclamation-circle'></span><span class='tips-title'>"
						+ baseUtil.val("N.mobileLogin")
						+ ":</span><span class='tips-content'>"
						+ baseUtil.val("N.valifyIsLogin") + "</span></div>");
		base.editWin.editWinInput("<span class='fa fa-mobile-phone'></span>",
				"userMobilePhone", "userMobilePhone", baseMobileContent,
				baseUtil.validateAttr("true", null,
						"loginCheckUserMobilePhone", baseUtil
								.val("E.mobileRequired")), "310px", baseUtil
						.val("N.mobile"));
		base.editWin.editWinInput("<span class='fa fa-commenting-o'></span>",
				"mobileVCode", "mobileVCode", baseMobileContent, baseUtil
						.validateAttr("true", null, null, baseUtil
								.val("E.mobileVCodeRequired")), "140px",
				baseUtil.val("N.mobileVCode"));
		baseWidget.button("sendMobileVCode", baseUtil.val("N.sendSmsVCode"),
				baseUtil.val("N.sendSmsVCode"), baseMobileContent
						.find(".k-edit-field.mobileVCode"), "sendMobileVCode",
				null);
		var userMobilePhoneValidator = baseUtil
				.simpleValidator("#userMobilePhone");
		var slidInputbaseMobileContentValidator = null;
		base.editWin.editWinSlideVerifyCode(baseMobileContent, 338,
				"baseMobileContent", ctx
						+ "/baseSessionWS/checkVerifyCodeMobile");
		window.slidSuccMobile = function() {
			//给按钮添加disabled属性的时候，按钮莫名进行偏移，最后解决办法是在top属性中加!important
			$("#sendMobileVCode").attr("disabled", "disabled");
			baseUtil.fangReadOnly($("#userMobilePhone"));
			baseUtil.AJpost(ctx + "/baseUserWS/sendMobileVCode", {
				"p_o_userMobilePhone" : baseUtil.encryptPasswordByPPK($.trim($(
						"#userMobilePhone").val()), keyPairMobile)
			}, function(data) {
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
						baseUtil.notFangReadOnly($("#userMobilePhone"));
						$("#sendMobileVCode").removeAttr("disabled");
						$("#sendMobileVCode i").text(baseUtil.val("N.reSend"));
					}
				}, 1000);
			});
		};
		$("#sendMobileVCode")
				.bind(
						"click",
						function() {
							if (userMobilePhoneValidator.validate()) {
								if (!hasMobileInitVerifyCode) {
									base.editWin.editWinSlideVerifyCode
											.refreshVerify("baseMobileContent",
													slidSuccMobile);
									slidInputbaseMobileContentValidator = baseUtil
											.simpleValidator("#slidInputbaseMobileContent");
									hasMobileInitVerifyCode = true;
								} else {
									if ("Y" == $("#slidInputbaseMobileContent")
											.val()) {
										base.editWin.editWinSlideVerifyCode
												.refreshVerify(
														"baseMobileContent",
														slidSuccMobile);
									} else {
										slidInputbaseMobileContentValidator
												.validate();
									}
								}
							}
						});
		baseMobileContent.append(getLoginButtonContextHtml("mobileLogin"));
	}
	/**
	 * 手机登录
	 */
	var hasMobileInitVerifyCode = false;
	var keyPairMobile;
	function loginUserMobile() {
		initLoginMobile();
		foucsonInput();
		$("#tabstrip-userLogin-3 #mobileLogin-remenberme").attr("id",
				"mobileLogin-agree");
		var agreementCheckboxLabel = $(
				"#tabstrip-userLogin-3 #mobileLogin-agree").next();
		agreementCheckboxLabel.attr("for", "mobileLogin-agree");
		agreementCheckboxLabel.attr("title", baseUtil.val("N.agreement"));
		var agreementLabel = $("#tabstrip-userLogin-3 .base-remenberme");
		agreementLabel.attr("for", "mobileLogin-agree");
		agreementLabel.text(baseUtil.val("N.agreement"));
		agreementLabel.addClass("base-agreement");
		agreementLabel.attr("id", "base-agreement-label");
		$("#tabstrip-userLogin-3 #mobileLogin-agree").attr({
			"kendo_required" : true,
			"validationMessage" : baseUtil.val("N.plsChecked")
		});
		$("#base-agreement-label").click(
				function() {
					base.editWin.showWin(edit_win1_kendo, baseUtil
							.val("N.protocol"), edit_win1_form_validator,
							edit_win1_dom);
				});
		baseUtil.AJpost(ctx + "/baseUserWS/getKeyPair", null, function(data) {
			keyPairMobile = data["BASE_keyPair"];
			baseUtil.simpleSubmitForm($("#tabstrip-userLogin-3"), $(
					"#mobileLogin").parent(), function() {
				baseUtil.saveAJ(ctx + "/baseUserWS/loginUserMobilePhone", {
					"p_o_userMobilePhone" : baseUtil.encryptPasswordByPPK($
							.trim($("#userMobilePhone").val()), keyPairMobile),
					"p_o_verifyCode" : baseUtil.encryptPasswordByPPK($.trim($(
							"#mobileVCode").val()), keyPairMobile)
				}, function(data) {
					location.href = data["loginToken_beforeLoginUrl"];
				});
			});
		});
		finishInitLoginMobile = true;
	}

	/**
	 * 当用户选择不同的tab的标签头的时候，会出发tabstrip的select事件，这个事件中调用这个方法，
	 * 传tab的id过来，根据这个id，我们会判断当前用户选择用哪种方式登录。
	 * 为什么用户选择不同的tab，我们都要初始化一下相应的登录界面？
	 * 因为每个登录界面初始化的时候，会请求后台拿keyPair，后台将keyPair放到session中，两者对应
	 * 上才能正确的将密码加解密。否则如果一开始每个tab都分别请求keyPair，那么session中只会存放
	 * 最后一个请求的keyPair，那么除了最后一个能正常登陆之外，其他tab都不能登陆。
	 */
	function loginTypeController(tabId) {
		if (tabId == "tabstrip-userLogin-1") {
			$("#tabstrip-userLogin").show();
			//当用户已经登陆成功了，在输入验证码的过程中按别的tab再按回来时，不需要重新获取keyPair
			if (finishLoginUserAccount) {
				base.editWin.editWinSlideVerifyCode.refreshVerify(
						"baseAccountContent", slidSuccAccount);
				return;
			}
			//当用户没有登录成功，但是tab已经初始化时，需要重新获取keyPair，因为按到其他tab，session中的keyPair已经修改了。
			if (finishInitLoginUserAccount) {
				baseUtil.AJpost(ctx + "/baseUserWS/getKeyPair", null, function(
						data) {
					keyPairAcc = data["BASE_keyPair"];
				});
				return;
			}
			$(".tabstrip-transparent-background .fa").show();
			setTimeout(function() {
				loginUserAccount();
			}, 1500);
		} else if (tabId == "tabstrip-userLogin-2") {
			//因为当一个页面同时出现两个或以上的滑动验证码，就会出现混乱，
			//比如登录的几个tab都需要滑动验证，当验证码出来之后，我们如果
			//切换到另一个tab，让它的验证码也出来，然后又切换回原来的tab,
			//原来的验证码就受影响了，所以判断，当tab已经出现验证码了，
			//我们切换回该tab的时候应该刷新一下验证码。
			//注意，同一时间不能也没必要让用户看到两个滑动验证条。
			//!!!!
			//发送邮件成功后，点击别的tab又点击回来，需要重新获取keyPair，
			//否则切换到别的tab的时候，keyPair已经改变了，那你前端使用原来
			//email的keyPair加密发送到后台，是解密失败的。不同于账号登录，
			//因为登录成功之后不需要再发送账号密码到后台。所以不能if的最后return;
			if (hasEmailInitVerifyCode) {
				base.editWin.editWinSlideVerifyCode.refreshVerify(
						"baseEmailContent", slidSuccEmail);
				if ("undefined" != typeof tidLoginEmail) {
					clearTimeout(tidLoginEmail);
				}
				$("#tabstrip-userLogin-2 .login-status-icon").hide();
				$("#tabstrip-userLogin-2 .login-status-icon").removeClass(
						"fa-check").addClass("fa-spinner fa-pulse");
				baseUtil.notDisabled("#tabstrip-userLogin-2");
				$("#tabstrip-userLogin-2 .login-text").text(
						baseUtil.val("N.sendEmail"));
			}
			//当用户已经初始化过登录输入框一次了，就不需要再初始化了。
			if (finishInitLoginUserEmail) {
				baseUtil.AJpost(ctx + "/baseUserWS/getKeyPair", null, function(
						data) {
					keyPairEmail = data["BASE_keyPair"];
				});
				return;
			}
			loginUserEmail();
		} else if (tabId == "tabstrip-userLogin-3") {
			//因为当一个页面同时出现两个或以上的滑动验证码，就会出现混乱，
			//比如登录的几个tab都需要滑动验证，当验证码出来之后，我们如果
			//切换到另一个tab，让它的验证码也出来，然后又切换回原来的tab,
			//原来的验证码就受影响了，所以判断，当tab已经出现验证码了，
			//我们切换回该tab的时候应该刷新一下验证码。
			//注意，同一时间不能也没必要让用户看到两个滑动验证条。
			//!!!!
			//发送短信成功后，点击别的tab又点击回来，需要重新获取keyPair，
			//否则切换到别的tab的时候，keyPair已经改变了，那你前端使用原来
			//mobile的keyPair加密发送到后台，是解密失败的。不同于账号登录，
			//因为登录成功之后不需要再发送账号密码到后台。所以不能if的最后return;
			if (hasMobileInitVerifyCode) {
				base.editWin.editWinSlideVerifyCode.refreshVerify(
						"baseMobileContent", slidSuccMobile);
				if ("undefined" != typeof tidLoginMobile) {
					clearTimeout(tidLoginMobile);
				}
				baseUtil.notFangReadOnly($("#userMobilePhone"));
				$("#sendMobileVCode").removeAttr("disabled");
				$("#sendMobileVCode i").text(baseUtil.val("N.sendSmsVCode"));
			}
			//当用户已经初始化过登录输入框一次了，就不需要再初始化了。
			if (finishInitLoginMobile) {
				baseUtil.AJpost(ctx + "/baseUserWS/getKeyPair", null, function(
						data) {
					keyPairMobile = data["BASE_keyPair"];
				});
				return;
			}
			loginUserMobile();
		}
	}

	/**
	 * 初始化用户注册表单
	 */
	var initAccountRegister = function() {
		var userRegisterContent = $("#tabstrip-userRegister-content");
		base.editWin.editWinInput("<span class='fa fa-user'></span>",
				"userAcountRegister", "userAcountRegister",
				userRegisterContent, baseUtil.validateAttr("true", null,
						"loginCheckAccountExist", baseUtil
								.val("E.acountRequired")), "310px", baseUtil
						.val("N.accountRegisterPleaseholder"));
		baseWidget.autoComplete($("#userAcountRegister"), "emailSuffix", ctx
				+ "/baseUserWS/getEmailSuffix");
		base.editWin.editWinInput("<span class='fa fa-mobile-phone'></span>",
				"userMobilePhoneRegister", "userMobilePhoneRegister",
				userRegisterContent, baseUtil.validateAttr("true", null,
						"registerCheckUserMobileExist", baseUtil
								.val("E.mobileRequired")), "310px", baseUtil
						.val("N.mobile"));
		base.editWin.editWinInput("<span class='fa fa-commenting-o'></span>",
				"mobileVCodeRegister", "mobileVCodeRegister",
				userRegisterContent, baseUtil.validateAttr("true", null, null,
						baseUtil.val("E.mobileVCodeRequired")), "140px",
				baseUtil.val("N.mobileVCode"));
		baseWidget.button("sendMobileVCodeRegister", baseUtil
				.val("N.sendSmsVCode"), baseUtil.val("N.sendSmsVCode"),
				userRegisterContent.find(".k-edit-field.mobileVCodeRegister"),
				"sendMobileVCodeRegister", null);
		base.editWin.editWinSlideVerifyCode(userRegisterContent, 338,
				"baseMobileRegisterContent", ctx
						+ "/baseSessionWS/checkVerifyCodeMobileRegister");
		base.editWin.editWinInput("<span class='fa fa-key'></span>",
				"userPasswordRegister", "userPasswordRegister",
				userRegisterContent, baseUtil.validateAttr("true", null,
						"accountSettingVerifyNewPassword", baseUtil
								.val("E.passwordRequired")), "310px", baseUtil
						.val("N.password"), true);
		var userMobilePhoneRegisterValidator = baseUtil
				.simpleValidator("#userMobilePhoneRegister");
		var slidInputbaseMobileRegisterContentValidator = null;
		window.slidSuccMobileRegister = function() {
			//给按钮添加disabled属性的时候，按钮莫名进行偏移，最后解决办法是在top属性中加!important
			$("#sendMobileVCodeRegister").attr("disabled", "disabled");
			baseUtil.fangReadOnly($("#userMobilePhoneRegister"));
			var sendMobileVCodeLimitTimeInteval = function() {
				var mvt = mobileVCodeRetryTime;
				$("#sendMobileVCodeRegister i").text(
						baseUtil.val("N.sent") + "," + (mvt -= 1)
								+ baseUtil.val("N.secondRetry"));
				var sendMobileVCodeLimitTimeIntevalFn = function() {
					if (mvt >= 1) {
						$("#sendMobileVCodeRegister i").text(
								baseUtil.val("N.sent") + "," + (mvt -= 1)
										+ baseUtil.val("N.secondRetry"));
					} else {
						clearTimeout(tidAccountRegister);
						baseUtil.notFangReadOnly($("#userMobilePhoneRegister"));
						$("#sendMobileVCodeRegister").removeAttr("disabled");
						$("#sendMobileVCodeRegister i").text(
								baseUtil.val("N.reSend"));
					}
				};
				var tidAccountRegister = setInterval(
						sendMobileVCodeLimitTimeIntevalFn, 1000);
			};
			baseUtil.AJpost(ctx + "/baseUserWS/sendMobileVCode", {
				"p_o_userMobilePhone" : baseUtil.encryptPasswordByPPK($.trim($(
						"#userMobilePhoneRegister").val()),
						keyPairMobileRegister)
			}, sendMobileVCodeLimitTimeInteval);
		};
		var sendMobileVCodeRegisterFn = function() {
			if (userMobilePhoneRegisterValidator.validate()) {
				if (!hasMobileRegisterInitVerifyCode) {
					base.editWin.editWinSlideVerifyCode
							.refreshVerify("baseMobileRegisterContent",
									slidSuccMobileRegister);
					slidInputbaseMobileRegisterContentValidator = baseUtil
							.simpleValidator("#slidInputbaseMobileRegisterContent");
					hasMobileRegisterInitVerifyCode = true;
				} else {
					if ("Y" == $("#slidInputbaseMobileRegisterContent").val()) {
						base.editWin.editWinSlideVerifyCode.refreshVerify(
								"baseMobileRegisterContent",
								slidSuccMobileRegister);
					} else {
						slidInputbaseMobileRegisterContentValidator.validate();
					}
				}
			}
		};
		$("#sendMobileVCodeRegister").bind("click", sendMobileVCodeRegisterFn);
		userRegisterContent.append(getLoginButtonContextHtml("accountRegister",
				baseUtil.val("N.register"), ctx + "/login", baseUtil
						.val("N.toLogin")));
		userRegisterContent.find(".base-login-text-area").remove();
	};

	/**
	 * 注册用户
	 */
	var hasMobileRegisterInitVerifyCode = false;
	var keyPairMobileRegister;
	var accountRegisterInit = function() {
		baseUtil.AJpost(ctx + "/baseUserWS/getKeyPair", null, function(data) {
			keyPairMobileRegister = data["BASE_keyPair"];
			$(".tabstrip-transparent-background .fa").hide();
			initAccountRegister();
		});
		foucsonInput();
		$("#tabstrip-userRegister-content #accountRegister-remenberme").attr(
				"id", "accountRegister-agree");
		var agreementCheckboxLabel = $(
				"#tabstrip-userRegister-content #accountRegister-agree").next();
		agreementCheckboxLabel.attr("for", "accountRegister-agree");
		agreementCheckboxLabel.attr("title", baseUtil.val("N.agreement"));
		var agreementLabel = $("#tabstrip-userRegister-content .base-remenberme");
		agreementLabel.attr("for", "accountRegister-agree");
		agreementLabel.text(baseUtil.val("N.agreement"));
		agreementLabel.addClass("base-agreement");
		agreementLabel.attr("id", "base-agreement-label");
		$("#tabstrip-userRegister-content #accountRegister-agree").attr({
			"kendo_required" : true,
			"validationMessage" : baseUtil.val("N.plsChecked")
		});
		$("#base-agreement-label").click(
				function() {
					base.editWin.showWin(edit_win1_kendo, baseUtil
							.val("N.protocol"), edit_win1_form_validator,
							edit_win1_dom);
				});
		baseUtil.simpleSubmitForm($("#tabstrip-userRegister-div"), $(
				"#accountRegister").parent(), function() {
			baseUtil.saveAJ(ctx + "/baseUserWS/accountRegister", {
				"p_o_userAcountRegister" : baseUtil.encryptPasswordByPPK($
						.trim($("#userAcountRegister").val()),
						keyPairMobileRegister),
				"p_o_userMobilePhoneRegister" : baseUtil.encryptPasswordByPPK($
						.trim($("#userMobilePhoneRegister").val()),
						keyPairMobileRegister),
				"p_o_mobileVCodeRegister" : baseUtil.encryptPasswordByPPK($
						.trim($("#mobileVCodeRegister").val()),
						keyPairMobileRegister),
				"p_o_userPasswordRegister" : baseUtil.encryptPasswordByPPK($
						.trim($("#userPasswordRegister").val()),
						keyPairMobileRegister)
			}, function(data) {
				location.href = data["loginToken_beforeLoginUrl"];
			});
		});
	};

	/**
	 * 调整登录背景。
	 */
	$('.slick-loginBackground').on("init", function() {
		//这里的设置轮播器图片高度的代码需要保留，否则ie下会出现图片切换闪烁。
		var loginBackground = $(".base-login-context .slick-loginBackground");
		loginBackground.css("height", "500px");
		loginBackground.find(".base-login-sli-img").css("height", "500px");
		if ("REGISTER" == $(".action").val()) {
			$(".tabstrip-transparent-background .fa").show();
			setTimeout(function() {
				$("#tabstrip-userRegister-div").show();
				accountRegisterInit();
			}, 1500);
		} else {
			$("#tabstrip-userLogin-div").show();
			tabstripUserLoginData.select(0);
		}
	});
	$('.slick-loginBackground').slick({
		autoplay : true,
		autoplaySpeed : 3000,
		draggable : true,
		arrows : false,
		dots : false,
		fade : true,
		speed : 5000,
		infinite : true,
		easing : 'easeInOutQuint',
		touchThreshold : 100
	});

});