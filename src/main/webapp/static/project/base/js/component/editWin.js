window.base.editWin = {
	/**
	 * 初始化一个弹出编辑窗口。 
	 * divId：这个窗口的dom会插入到divId表示的节点的后面，但是它是隐藏的，触发时才弹出。
	 * index:这个弹出编辑框处于页面的第几个编辑弹出框，并且我们会根据这个index来做一些变量名的约定：
	 * 当比如index为1，那么我们会构建一个最外层的div，id为${smallTarget}_edit_win1，这个div的jquery
	 * 对象叫${smallTarget}_edit_win1_dom，这个div会经过kendow的初始化，那么初始化完成的对象叫
	 * ${smallTarget}_edit_win1_kendo，弹出框的form表单（有且只有一个时）校验后的对象叫${smallTarget}_edit_win1_form_validator，
	 * 然后会将editWindowTemplate这个模板的内容嵌入弹出框中，
	 * 到了这里，你可以使用这个div节点获取里面的任何内容。 
	 * submitFn：当点击弹出框的确定按钮，校验成功之后执行的方法。
	 * 当调用此方法初始化弹出框之后，弹出框中的表单已经带上校验了。
	 * formItem：编辑框中统一有一个form表单，调用此方法的时候将jquery元素或表达式代表的表单内元素传入，它们将插入表单中。
	 * method：form的method属性。
	 * action:form的action属性。
	 * width:指定弹出框宽度，单位px.
	 */
	init : function(divId, index, smallTarget, formItem, submitFn, method,
			action, width) {
		var edit_win_id = smallTarget + "_edit_win" + index;
		$("#" + divId).after($("<div id='" + edit_win_id + "' />"));
		var properties = {
			"submitTitle" : baseUtil.val("N.submit"),
			"cancelTitle" : baseUtil.val("N.cancel"),
			"method" : method,
			"action" : action,
			"width" : width
		};
		baseUtil.template("editWinTemplate", properties, "#" + edit_win_id);
		window[smallTarget + "_edit_win" + index + "_dom"] = $("#"
				+ edit_win_id);
		window[smallTarget + "_edit_win" + index + "_kendo"] = base.editWin
				.popuWin(edit_win_id);
		/**
		 * 弹出框表单校验
		 */
		var edit_win_kendo = window[smallTarget + "_edit_win" + index
				+ "_kendo"];
		var edit_win_dom = window[smallTarget + "_edit_win" + index + "_dom"];
		var edit_win_form = edit_win_dom.find("form");
		if (formItem) {
			//如果formItem有内容，一般是弹出框中还要内嵌grid，具体可以查看templateProperties二级弹出框的初始化方式。
			edit_win_form.find(".k-grid-content").remove();
			edit_win_form.prepend($(formItem));
		} else {
			//如果formItem没有内容，一般都是在后期在form中添加编辑输入框，那么此时为了让弹出框的内容控制高度，我们将
			//编辑输入框放置在form下面的class=k-grid-content的div中。这样弹出框内容会出现滚动条。
			edit_win_form.find(".k-grid-content").prepend($(formItem));
		}
		var edit_win_form_validator = baseUtil.simpleValidator(edit_win_form);
		window[smallTarget + "_edit_win" + index + "_form_validator"] = edit_win_form_validator;
		/**
		 * 弹出框的“确定”和“取消”
		 */
		base.editWin.closeEditWinOnClickCancel(edit_win_dom, edit_win_kendo);
		base.editWin.submitEditWinOnClickSubmit(edit_win_dom, edit_win_kendo,
				edit_win_form_validator, submitFn);
		baseUtil.enterToSubmit($("#" + smallTarget + "_edit_win" + index), $(
				"#" + smallTarget + "_edit_win" + index).find(
				".k-button.k-primary"));
	},
	/**
	 * 实例化一个简单的kendo弹出框window. 
	 * divId:弹出框最外层div的id;
	 * title:弹出框标题
	 */
	popuWin : function(divId, title) {
		var dom = $("#" + divId);
		dom.kendoWindow({
			title : title,
			scrollable : false,
			visible : false,
			modal : true,
			resizable : false,
			actions : [ "Close" ]
		});
		dom.css("padding", 0);
		//弹出框的“×”按钮调整往下一些。
		$("#" + divId).closest(".k-window").find(".k-window-action").css(
				"margin-top", "1px");
		return dom.data("kendoWindow");
	},
	/**
	 * 弹出kendo窗口
	 * kendoWin:弹出框的kendo对象；
	 * title：弹出框的标题;
	 * validator:弹出框的form的kendo validation对象;
	 * winDom:弹窗的dom对象。
	 */
	showWin : function(kendoWin, title, validator, winDom) {
		$(".k-tooltip").not(".k-tooltip-validation").parent().hide();
		if (validator) {
			validator.hideMessages();
		}
		kendoWin.title(title);
		kendoWin.toFront();
		kendoWin.center();
		kendoWin.open();
		$(".k-overlay").css("opacity", "0.08");
	},
	/**
	 * 因为上传附件会以弹出框的形式上传，并且附件上传时会记录一些全局变量，这些全局变量在下一次弹出框弹出
	 * 时就应该恢复初始状态，否则就会记录之前上传弹出框的一些数据。
	 */
	cleanUploadData : function(winDom) {
		if (1 == winDom.find(".uploadDiv").length) {
			var uploadDivId = winDom.find(".uploadDiv").attr("uploadDivId");
			window["uploadFileName_uploadId_map" + uploadDivId] = {};
			window["uploadFileName_uploadFileLastmodifyTime_map" + uploadDivId] = {};
			window["currentUploadIds" + uploadDivId] = [];
			//当截图窗口关闭，清空截图结果值。
			window["imageCutResult" + uploadDivId] = {};
			//每次打开弹出框清除"确定√"等的完成状态。
			winDom.find("strong.k-upload-status").remove();
		}
	},
	/**
	 * 关闭弹出的kendo编辑框，默认每个编辑框都有一个Cancle按钮，那么调用此方法后，点击Cancle按钮，弹出框会关闭
	 */
	closeEditWinOnClickCancel : function(winDom, winKendo) {
		winDom.find(".base-grid-edit-cancel").unbind("click").bind("click",
				function() {
					winKendo.close();
					//每当关闭弹出窗口都要检查弹出窗口中是否有上传控件，如果有，清楚该上传控件中的所有全局变量。
					window.base.editWin.cleanUploadData(winDom);
				});
		winDom.closest(".k-window").find(".k-window-action .k-i-close").unbind(
				"click").bind("click", function() {
			winKendo.close();
			//每当关闭弹出窗口都要检查弹出窗口中是否有上传控件，如果有，清楚该上传控件中的所有全局变量。
			window.base.editWin.cleanUploadData(winDom);
		});
	},
	/**
	 * 点击弹出框的“确定”按钮触发提交事件。
	 * edit_win_dom:弹出窗口的jquery对象或表达式。
	 * edit_win_kendo：弹出窗口的kendo对象。
	 * edit_form_validator:弹出窗口的kendo校验器对象。
	 * submitFn：表单校验通过后执行的操作方法。
	 * 
	 * 点击确认，校验不通过，可能是正则表达式或者其他校验条件不通过，检查一下。
	 */
	submitEditWinOnClickSubmit : function(edit_win_dom, edit_win_kendo,
			edit_form_validator, submitFn) {
		$(edit_win_dom).find(".base-grid-edit-update").click(function() {
			if ($(this).is(".k-state-disabled")) {
				return false;
			}
			baseUtil.notReadOnlyForm(edit_win_dom.find("form"));
			if (!edit_form_validator.validate()) {
				return false;
			}
			if (submitFn) {
				if (false == submitFn()) {
					//有可能submitFn执行的时候出现校验错误，那么它会返回false，那么窗口就不进行关闭了。
					return;
				}
			}
			edit_win_kendo.close();
			//每当关闭弹出窗口都要检查弹出窗口中是否有上传控件，如果有，清楚该上传控件中的所有全局变量。
			window.base.editWin.cleanUploadData(edit_win_dom);
		});
	},

	/**
	 * 构建一个放置于弹出编辑窗口的input text框的html。 
	 * label:input text框左边的名字。 
	 * id:input text框的id。 
	 * name:input text框的name。
	 * appendTo：input输入框内嵌于那个dom节点，传jquery对象或表达式。
	 * validate:一些校验信息，包括“kendo_required”，"kendo_pattern"，"kendo_validMethod"，和"validationMessage"，所有校验信息字符串传入，
	 * 将至于编辑控件的属性中。
	 * width：输入框的宽度。
	 * placeholder：输入框的placeholder输入提示。
	 * isPassword:是否是密码输入框，填true或false.
	 */
	editWinInput : function(label, id, name, appendTo, validate, width,
			placeholder, isPassword) {
		if (!validate) {
			validate = "";
		}
		if (!placeholder) {
			placeholder = "";
		}
		if (label) {
			label = "<div class='k-edit-label " + id + "' >" + "<label for='"
					+ id + "'>" + label + "</label></div>";
		}
		var type = "type='text'";
		if (isPassword) {
			type = "type='password'";
		}
		var onfocus = "onfocus='this.select()'";
		if (baseUtil.isChrome()) {
			onfocus = "onclick='this.select()'";
		}
		$(
				label + "<div class='k-edit-field " + id + "' ><input "
						+ validate
						+ " class='k-input k-textbox base-baseWidget' " + type
						+ " id='" + id + "' name='" + name + "' placeholder='"
						+ placeholder + "' title='" + placeholder + "' "
						+ onfocus + "/></div>").appendTo(appendTo);
		base.fixUI.fixEditWinInput(id, width);
	},

	/**
	 * 构建一个放置于弹出编辑窗口的image的html。 
	 * label:imgage框左边的名字。 
	 * id:imgage框的id。 
	 * name:imgage框的name。
	 * appendTo：imgage输入框内嵌于那个dom节点，传jquery对象或表达式。
	 * validate:一些校验信息，包括“kendo_required”，"kendo_pattern"，"kendo_validMethod"，和"validationMessage"，所有校验信息字符串传入，
	 * 将至于编辑控件的属性中。
	 * placeholder：输入框的placeholder输入提示。
	 */
	editWinImage : function(label, id, name, appendTo, validate, placeholder,
			originSrc) {
		if (!validate) {
			validate = "";
		}
		if (!placeholder) {
			placeholder = "";
		}
		if (label) {
			label = "<div class='k-edit-label " + id + "' >" + "<label for='"
					+ id + "'>" + label + "</label></div>";
		}
		$(
				label
						+ "<div class='k-edit-field "
						+ id
						+ "' ><img "
						+ validate
						+ " class='k-input k-textbox base-baseWidget base-image' id='"
						+ id + "' name='" + name + "' alt='" + placeholder
						+ "' title='" + placeholder + "' src='" + originSrc
						+ "'/></div>").appendTo(appendTo);
	},

	/**
	 * 验证码解密的干扰方法
	 */
	d : function(d) {
		var cd = 1, sc = 3, dd = 5, ff;
		if (cd == sc) {
			ff = sc;
		} else {
			cd == 4;
		}
		var rs = baseCode.d(d);
		var cd = 1, sc = 3, dd = 5, ff;
		if (cd == sc) {
			ff = sc;
		} else {
			cd == 4;
		}
		return rs;
	},
	/**
	 * 构建一个放置于弹出编辑窗口的滑块验证输入框。
	 * appendTo:滑动验证码内嵌于那个dom节点，传jquery对象或表达式。
	 * width：滑动验证码宽度。
	 * id：滑动验证码id，因为同一个页面下可能有多个滑动验证码，根据这个id来区分它们。
	 * 
	 * !!!要让验证码出来，调用这个方法：base.editWin.editWinSlideVerifyCode.refreshVerify
	 * verifyUrl:每个验证码最终的验证方法不尽相同，可以从这里指定验证方法的url。
	 * 
	 * 
	 * 因为当一个页面同时出现两个或以上的滑动验证码，就会出现混乱，
	 * 比如登录的几个tab都需要滑动验证，当验证码出来之后，我们如果
	 * 切换到另一个tab，让它的验证码也出来，然后又切换回原来的tab,
	 * 原来的验证码就受影响了，所以判断，当tab已经出现验证码了，
	 * 我们切换回该tab的时候应该刷新一下验证码。
	 * 注意，同一时间不能也没必要让用户看到两个滑动验证条，因为本来验证码
	 * 作为识别机器和人的工具，一个用户的session中只会存放一个，而且，只要
	 * 别人能破解一个，你弄再多的在页面也是没有作用的。
	 */
	editWinSlideVerifyCode : function(appendTo, width, id, verifyUrl) {
		/**
		 * 刷新验证码
		 * ！！！要让验证码出来，调用这个方法。
		 */
		//fireId:一个页面可能有多个滑动验证，我们要根据情况初始化不同的滑动验证，这个fireId就是指定你要初始化哪个滑动验证。
		//slidSucc:滑动完成后的回调函数，比如说用户登录就算验证通过了，也还需要滑动验证码，只有滑动通过了，才会进行页面跳转，
		//那么就将页面跳转的操作放到这里就行。
		base.editWin.editWinSlideVerifyCode.refreshVerify = function(fireId,
				slidSucc) {
			if (loginToken_user) {
				return;
			}
			if (fireId) {
				id = fireId;
				$("#base-verify-code-area-fang-" + id).show();
				$("#base-verify-code-area-" + id).show();
				setTimeout(function() {
					//验证码没有出来之前的登录提交，验证码不做阻拦，但是登录验证成功后，
					//验证码会出来，这个时候就必须滑动验证码。
					$("#slidInput" + id).attr("kendo_required", "true");
					//验证码滑动成功后，会给它的input框加value=Y，那么重新加载验证码后，它的value就应该设回"".
					$("#slidInput" + id).val("");
					ajaxInit();
				}, 1000);
				if (slidSucc) {
					window["slidSuss-" + id] = slidSucc;
				}
			} else {
				$("#base-refresh-" + id).unbind("click").click(function() {
					$("#base-verify-code-area-fang-" + id).show();
					ajaxInit();
				});
			}
		};
		/**
		 * 用户登录后的所有操作都是不需要输入验证码的，因为既然已经经过登录屏障判断这不是机器人登录，
		 * 那么登录后的所有操作都应该认为是认为操作，不需要再通过验证码来判断这是不是机器人来操作。
		 * 另外一方面，因为系统的设计是，认为用户登录，它的滑动验证码必须正确，但是滑动验证码的生成
		 * 方法是公用的，不管哪个页面，只要生成滑动验证码，session中的WebConstant.BASE_LOGIN_VERIFY_CODE_VALID
		 * 就会变回N，这个时候用户相当于没有登录了，所以出现一种情况是，找回密码的第一步的页面http://localhost:8080/baseUserWS/forgetPassword
		 * 是不需要权限的，当用户走到这个页面，那么它的loginToken_beforeLoginUrl就记录为这个页面，然后用户登录后，
		 * 跳转到这个页面，而这个页面是要出来滑动验证码的，那么之前登录的WebConstant.BASE_LOGIN_VERIFY_CODE_VALID就重新
		 * 变回N，用户就相当于没登录了，那么点击其他内容都没有权限了，所以现在的做法是，只要用户登录成功了，
		 * 他就不需要再输入滑动验证码了
		 * ！！！！！滑动验证码只会出现在那些不需要权限就能访问的页面，用来辨别请求是否是机器人的作用，而那些需要权限的页面，
		 * 已经通过登录屏障证明不是机器人了，那么登录后，用户访问这些需要验证码的页面，也不让验证码出来。
		 */
		if (loginToken_user) {
			return;
		}
		$(
				"<div class='k-edit-field base-verify-code-area' id='base-verify-code-area-"
						+ id
						+ "'><input type='hidden' name='slidInput"
						+ id
						+ "' id='slidInput"
						+ id
						+ "'  validationMessage='"
						+ baseUtil.val("E.finishVerify")
						+ "'></input>"
						+ "<div class='base-green-bar' id='base-green-bar-"
						+ id
						+ "'></div>"
						+ "<span class='verify-op-text' id='verify-op-text-"
						+ id
						+ "'>"
						+ baseUtil.val("N.dragToVefiry")
						+ "</span><span class='base-time' id='base-time-"
						+ id
						+ "'>"
						+ verifyCodeExpireTime
						+ "</span><div class='base-slidVrify-container' id='base-slidVrify-container-"
						+ id
						+ "' style='width:"
						+ width
						+ "px'>"
						+ "<div class='base-slidVrify-item' id='base-slidVrify-item-"
						+ id
						+ "'><span class='fa fa-angle-double-right'></span></div>"
						+ "<div class='k-edit-field base-verify-code-area-fang' id='base-verify-code-area-fang-"
						+ id
						+ "' style='width:"
						+ width
						+ "px'><div class='base-slidVrify-container-fang' style='width:"
						+ width
						+ "px'><span class='fa fa-spinner fa-pulse'></span></div></div></div></div>")
				.appendTo(appendTo);
		/**
		 * 滑块滑动的过程中计算greenBar的宽度。
		 */
		var getGreenBarWidth = function(e) {
			var cloneHint = $(
					"#base-slidVrify-item-" + id + "[data-role='draggable']")
					.not($(e.currentTarget));
			if (cloneHint) {
				var greenBarWidth = Math.round(cloneHint.css("left").replace(
						"px", "")
						- cloneHintLeftIndex.replace("px", "")) + 10;
				$("#base-green-bar-" + id).css("width", greenBarWidth);
				return greenBarWidth;
			}
			return 0;
		};
		/**
		 * 滑块滑到最右边后触发的ajax成功回调函数
		 */
		var toRightAjaxSucFn = function(data) {
			var verifyOpText = $("#verify-op-text-" + id);
			var barText = $("#base-slidVrify-item-" + id + " span");
			//0：success
			if (0 == data.status) {
				barText.removeClass("fa-spinner").removeClass("fa-pulse")
						.addClass("fa-check-circle");
				verifyOpText.text(baseUtil.val("N.checkSucc"));
				verifyOpText.addClass("verify-finish");
				$("#slidInput" + id).val("Y");
				$(".k-invalid-msg[data-for='slidInput" + id + "']").hide();
				if (window["slidSuss-" + id]) {
					window["slidSuss-" + id]();
				}
			} else {
				barText.removeClass("fa-spinner").removeClass("fa-pulse")
						.addClass("fa-times-circle");
				$("#base-green-bar-" + id).addClass("base-invalid");
				verifyOpText.addClass("verify-finish");
				verifyOpText.html(baseUtil.val("N.checkFail")
						+ ",<a class='base-refresh' id='base-refresh-" + id
						+ "' href='javascript:void(0);'>"
						+ baseUtil.val("N.clickRefresh") + "</a>");
				base.editWin.editWinSlideVerifyCode.refreshVerify();
			}
		};
		/**
		 * 滑动滑块触发事件
		 */
		var dragFn = function(e) {
			if (!window["verifyCodeFinish" + id]) {
				var greenBarWidth = getGreenBarWidth(e);
				if ((width - 37) == greenBarWidth) {
					clearTimeout(window["timeoutInterId" + id]);
					$("#base-time-" + id).hide();
					window["verifyCodeFinish" + id] = true;
					$("#base-green-bar-" + id).css("width", width);
					var cloneHint = $(
							"#base-slidVrify-item-" + id
									+ "[data-role='draggable']").not(
							$(e.currentTarget));
					$(e.currentTarget).addClass("move-right");
					$(e.currentTarget).show();
					cloneHint.remove();
					window["slidVrifyItem" + id].setOptions({
						"axis" : "y"
					});
					var barText = $("#base-slidVrify-item-" + id + " span");
					barText.removeClass("fa-angle-double-right").addClass(
							"fa-spinner fa-pulse");
					setTimeout(function() {
						baseUtil.AJpost(verifyUrl, {
							"verifyCode" : window["deVerifyCode" + id]
						}, toRightAjaxSucFn, null, function() {
							webConnFail();
						});
					}, 300);
				}
			}
		};
		window["verifyCodeFinish" + id] = false;
		window["slidVrifyItem" + id] = $("#base-slidVrify-item-" + id)
				.kendoDraggable(
						{
							container : $("#base-slidVrify-container-" + id),
							hint : function(element) {
								return element.clone();
							},
							dragstart : function(e) {
								e.currentTarget.hide();
								window.cloneHintLeftIndex = $(
										"#base-slidVrify-item-" + id
												+ "[data-role='draggable']")
										.not($(e.currentTarget)).css("left");
							},
							drag : dragFn,
							dragend : function(e) {
								var tid = setInterval(
										function() {
											if ($("#base-slidVrify-item-" + id
													+ "[data-role='draggable']").length == 1) {
												if (!window["verifyCodeFinish"
														+ id]) {
													$("#base-green-bar-" + id)
															.css("width", 0);
												}
												e.currentTarget.show();
												clearTimeout(tid);
											} else if (!window["verifyCodeFinish"
													+ id]) {
												getGreenBarWidth(e);
											}
										}, 1);
							}
						}).data("kendoDraggable");
		function webConnFail() {
			var barText = $("#base-slidVrify-item-" + id + " span");
			if (window["verifyCodeFinish" + id]) {
				barText.removeClass("fa-spinner").removeClass("fa-pulse")
						.addClass("fa-warning");
			}
			$("#base-green-bar-" + id).addClass("base-webconnfail");
			$("#verify-op-text-" + id).html(
					baseUtil.val("N.webNotConn")
							+ "<a class='base-refresh' id='base-refresh-" + id
							+ "' href='javascript:void(0);'>"
							+ baseUtil.val("N.clickRefresh") + "</a>");
			$("#verify-op-text-" + id).addClass("verify-finish-connfail");
			base.editWin.editWinSlideVerifyCode.refreshVerify();
		}
		//为了混淆视听，我们将解码的方法添加干扰
		var ddd, d = function(d) {
			var cd = 99;
			var ri = cd;
			if (ri == cd) {
				return window.base.editWin.d(d);
			}
		};
		/**
		 * 初始化滑动验证条
		 */
		var init = function(dt) {
			window["deVerifyCode" + id] = d(dt);
			var currentTarget = $("#base-slidVrify-item-" + id);
			var verifyOpText = $("#verify-op-text-" + id);
			$("#base-verify-code-area-fang-" + id).hide();
			window["verifyCodeFinish" + id] = false;
			$("#base-green-bar-" + id).css("width", 0);
			$("#base-green-bar-" + id).removeClass("base-webconnfail")
					.removeClass("base-invalid");
			currentTarget.removeClass("move-right");
			currentTarget.show();
			window["slidVrifyItem" + id].setOptions({
				"axis" : "x"
			});
			var barText = $("#base-slidVrify-item-" + id + " span");
			barText.removeClass("fa-warning").removeClass("fa-times-circle")
					.removeClass("fa-check-circle").addClass(
							"fa-angle-double-right");
			$("#verify-op-text-" + id).removeClass("verify-finish");
			$("#verify-op-text-" + id).text(baseUtil.val("N.dragToVefiry"));
			$("#base-time-" + id).text(verifyCodeExpireTime);
			$("#base-time-" + id).show();
			if (window.oldIntervalId) {
				clearInterval(oldIntervalId);
			}
			window.oldIntervalId = window["timeoutInterId" + id] = setInterval(
					function() {
						if ($("#base-time-" + id).text() * 1 > 0) {
							$("#base-time-" + id).text(
									$("#base-time-" + id).text() * 1 - 1);
						} else {
							clearInterval(window["timeoutInterId" + id]);
							window["slidVrifyItem" + id].setOptions({
								"axis" : "y"
							});
							var barText = $("#base-slidVrify-item-" + id
									+ " span");
							barText.removeClass("fa-spinner").removeClass(
									"fa-pulse").removeClass(
									"fa-angle-double-right").addClass(
									"fa-warning");
							$("#base-time-" + id).hide();
							$("#base-green-bar-" + id).addClass(
									"base-webconnfail");
							verifyOpText
									.html(baseUtil.val("E.verifyCodeExpire")
											+ ",<a class='base-refresh' id='base-refresh-"
											+ id
											+ "' href='javascript:void(0);'>"
											+ baseUtil.val("N.clickRefresh")
											+ "</a>");
							base.editWin.editWinSlideVerifyCode.refreshVerify();
						}
					}, 1000);
			$("#base-verify-code-area-" + id).show();
		};
		//ajax init data....
		var ajaxInit = function() {
			setTimeout(function() {
				baseUtil.AJpost(ctx + "/baseSessionWS/getVerifyCode", null,
						init, null, function(XHR, TS) {
							$("#base-verify-code-area-fang-" + id).hide();
							$("#base-time-" + id).hide();
							window["slidVrifyItem" + id].setOptions({
								"axis" : "y"
							});
							webConnFail();
							$("#base-verify-code-area-" + id).show();
						});
			}, 800);
		};
	},

	/**
	 * 构建一个放置于弹出编辑窗口的textarea框的html。 
	 * label:textarea框左边的名字。 
	 * id:textarea框的id。 
	 * name:textarea框的name。
	 * appendTo：textarea输入框内嵌于那个dom节点，传jquery对象或表达式。
	 * validate:一些校验信息，包括“kendo_required”，"kendo_pattern"，"kendo_validMethod"，和"validationMessage"，所有校验信息字符串传入，
	 * 将至于编辑控件的属性中。
	 */
	editWinTextarea : function(label, id, name, appendTo, validate, width,
			placeholder) {
		if (!validate) {
			validate = "";
		}
		if (!placeholder) {
			placeholder = "";
		}
		$(
				"<div class='k-edit-label' >"
						+ "<label for='"
						+ id
						+ "'>"
						+ label
						+ "</label></div>"
						+ "<div class='k-edit-field' ><textarea "
						+ validate
						+ " class='k-input k-textbox base-baseWidget' type='text' id='"
						+ id + "' name='" + name + "' placeholder='"
						+ placeholder + "' title='" + placeholder + "'/></div>")
				.appendTo(appendTo);
		base.fixUI.fixEditWinTextarea(id, width);
	},

	/**
	 * 构建一个放置于弹出编辑窗口的文本编辑器。 
	 * label:编辑器框左边的名字。 
	 * id:编辑器框的id。 
	 * name:编辑器框的name。
	 * appendTo：编辑器输入框内嵌于那个dom节点，传jquery对象或表达式。
	 * validate:一些校验信息，包括“kendo_required”，"kendo_pattern"，"kendo_validMethod"，和"validationMessage"，所有校验信息字符串传入，
	 * 将至于编辑控件的属性中。
	 * width：编辑器的宽度，编辑器的高度使用css调整。
	 * placeholder：编辑器的输入提示。
	 */
	editWinEditor : function(label, id, name, appendTo, validate, width,
			placeholder) {
		base.editWin.editWinTextarea(label, id, name, appendTo, validate,
				width, placeholder);
		baseWidget.editor($("#" + id));
	},

	/**
	 * 构建一个放置于弹出编辑窗口的checkbox的html。 
	 * label:checkbox框左边的名字。 
	 * id:checkbox框的id。
	 * name:checkbox框的name。
	 */
	editWinCheckbox : function(checkbox1, checkbox2) {
		if (!checkbox1.title) {
			checkbox1.title = "";
		}
		if (checkbox2 && !checkbox2.title) {
			checkbox2.title = "";
		}
		var checkbox1Html = "<div class='base-checkbox-1' >"
				+ "<div class='k-edit-label' >" + "<label for='" + checkbox1.id
				+ "'>" + checkbox1.label + "</label></div>"
				+ "<div class='k-edit-field'>" + "<input id='" + checkbox1.id
				+ "' class='k-checkbox' type='checkbox' name='"
				+ checkbox1.name
				+ "'></input><label class='k-checkbox-label' for='"
				+ checkbox1.id + "' title='" + checkbox1.title
				+ "'></label></div></div>";
		if (checkbox2 && "object" == (typeof checkbox2)) {
			return checkbox1Html + "<div class='base-checkbox-2'>"
					+ "<div class='k-edit-label' >" + "<label for='"
					+ checkbox2.id + "'>" + checkbox2.label + "</label></div>"
					+ "<div class='k-edit-field' >" + "<input id='"
					+ checkbox2.id
					+ "' class='k-checkbox' type='checkbox' name='"
					+ checkbox2.name
					+ "'></input><label class='k-checkbox-label' for='"
					+ checkbox2.id + "' title='" + checkbox2.title
					+ "'></label></div></div>";
		} else if (checkbox2 && "string" == (typeof checkbox2)) {
			return checkbox1Html + checkbox2;
		}
		return checkbox1Html
				+ "<div style='margin-top: 12px;float: left;width: 150px;height: 44px'></div>";
	},

	/**
	 * 构建一个本地数据的kendo下拉框。
	 * label:下拉框左边的名字。 
	 * id:下拉框的id。
	 * name:下拉框的name。
	 * url：一条请求后台Controller方法的路径，得到多选下拉框的数据，请求后台数据，如"/aaa/bbb/ccc"，返回json字符串，形式:
	 * [ {
	 *		label : "中国",
	 *		value : "CN"
	 *	 }, {
	 *		label : "美国",
	 *		value : "US"
	 * } ]
	 * 这个url可以是远程数据，也可以是本地数据，本地数据格式如上。
	 * appendTo：下拉框控件内嵌于那个dom节点，传jquery对象或表达式。
	 * onchange：下拉框的onchange方法。
	 * optionLabel:下拉条的第一个选项信息，比如："请选择.."，如果不填写，默认是"请选择"。
	 * width:下拉框长度，需要自己加单位。
	 * placeHolder：下拉条的title，其实用于提示这个下拉条选项的作用。
	 */
	editWinLocalSelect : function(label, id, name, url, appendTo, onchange,
			optionLabel, width, placeHolder) {
		base.editWin.editWinInput(label, id, name, appendTo, null, null,
				placeHolder);
		if (!optionLabel) {
			optionLabel = baseUtil.val("N.pleaseSelect");
		}
		baseWidget.dropDownListByElement($("#" + id), null, null, url,
				onchange, optionLabel, null, null, width);
	},

	/**
	 * 构建一个放置于弹出编辑窗口的datePicker。思路是先调用editWinInput，得到一个常规的输入框，然后
	 * 将输入框变成datePicker。
	 * label:datePicker左边的名字。 
	 * id:输入框的id。
	 * name:输入框的name。
	 * appendTo:datePicker要放置在的form的jquery对象。
	 * format:datePicker的format。
	 * width:datePicker输入框的长度
	 */
	editWinDatePicker : function(label, id, name, appendTo, format, text, width) {
		base.editWin.editWinInput(label, id, name, appendTo);
		baseWidget.datePicker($("#" + id), id, name, format, text, width);
	},

	/**
	 * 构建一个放置于弹出编辑窗口的dateTimePicker。思路是先调用editWinInput，得到一个常规的输入框，然后
	 * 将输入框变成dateTimePicker。
	 * label:dateTimePicker左边的名字。 
	 * id:输入框的id。
	 * name:输入框的name。
	 * appendTo:dateTimePicker要放置在的form的jquery对象。
	 * format:dateTimePicker的format。
	 * text:dateTimePicker的初始值。
	 * width:dateTimePicker输入框的长度
	 */
	editWinDateTimePicker : function(label, id, name, appendTo, format, text,
			width) {
		base.editWin.editWinInput(label, id, name, appendTo);
		baseWidget.dateTimePicker($("#" + id), id, name, format, text, width);
	},

	/**
	 * 构建一个放置于弹出编辑窗口的数字输入框。思路是先调用editWinInput，得到一个常规的输入框，然后
	 * 将输入框变成数字输入框。
	 * label:数字输入框左边的名字。
	 * id:输入框的id。
	 * name:输入框的name。
	 * appendTo:数字输入框要放置在的form的jquery对象。
	 * format:数字输入框的format。
	 * text:数字输入框的初始值。
	 * width:数字输入框的长度
	 * placeHolder：数字输入框的title，其实用于提示这个数字输入框的作用。
	 * validate:base.editWin.editWinInput的validate参数。
	 */
	editWinNumericInput : function(label, id, name, appendTo, format, text,
			width, placeHolder, validate) {
		base.editWin.editWinInput(label, id, name, appendTo, validate, null,
				placeHolder);
		baseWidget.numericInput($("#" + id), id, name, format, text, width);
	},

	/**
	 * 构建一个本地数据的kendo多选下拉框。
	 * label:下拉框左边的名字。 
	 * id:下拉框的id。
	 * name:下拉框的name。
	 * url：一条请求后台Controller方法的路径，得到多选下拉框的数据，请求后台数据，如"/aaa/bbb/ccc"，返回json字符串，形式:
	 * [ {
	 *		label : "中国",
	 *		value : "CN"
	 *	 }, {
	 *		label : "美国",
	 *		value : "US"
	 * } ]
	 * 这个url可以是远程数据，也可以是本地数据，本地数据格式如上。
	 * appendTo：下拉框控件内嵌于那个dom节点，传jquery对象或表达式。
	 * onchange：下拉框的onchange方法。
	 * optionLabel:下拉条的第一个选项信息，比如："请选择.."，如果不填写，默认是"请选择"
	 * width:下拉框长度。
	 * placeHolder：下拉条的title，其实用于提示这个下拉条选项的作用。
	 */
	editWinLocalMultiSelect : function(label, id, name, url, appendTo,
			onchange, optionLabel, width, placeHolder) {
		if (!placeHolder) {
			placeHolder = "";
		}
		$(
				"<div class='k-edit-label " + id + "' >" + "<label for='" + id
						+ "'>" + label + "</label></div>"
						+ "<div class='k-edit-field  " + id
						+ "' ><select multiple='multiple' id='" + id
						+ "' name='" + name + "' title='" + placeHolder
						+ "' class='base-baseWidget'></select></div>")
				.appendTo(appendTo);
		if (!optionLabel) {
			optionLabel = baseUtil.val("N.pleaseSelect");
		}
		baseWidget.multiSelectByElement($("#" + id), id, name, url, onchange,
				optionLabel, width);
	},

	/**
	 * 构建一个放置于弹出编辑窗口的button的html。 
	 * label:button左边的名字。 
	 * id:button的id。 
	 * id:button的name。 
	 * title：button的title。
	 * text:按钮显示的内容。
	 * appendTo：button内嵌于那个dom节点，传jquery对象或表达式。
	 * iClass：fontAwesome的用法，见http://fontawesome.dashgame.com/
	 */
	editWinButton : function(label, id, name, title, text, appendTo, iClass) {
		if (!iClass) {
			iClass = "fa fa-gear";
		}
		var labelText = "";
		if (label) {
			labelText = "<div class='k-edit-label' >" + "<label for='" + id
					+ "'>" + label + "</label></div>";
		}
		$(
				labelText
						+ "<div class='k-edit-field' >"
						+ baseWidget.buttonHtml(id, text, title, null, iClass,
								name) + "</div>").appendTo(appendTo);
	},

	/**
	 * 经常遇到的是，在一个弹出框中，有下拉条，而这下拉条有onchange事件，选中某个选项，则动态出来弹出框的
	 * 其他选项，而为了好看一些，联动出来的输入选项都会加上动画。所以在这里封装。
	 * jqueryDom:要对哪个输入选项进行显示，输入选项的jquery对象。
	 * e:触发onchange事件的下拉条的事件对象。
	 * animateName：动画名，默认是bounceIn。
	 */
	animateShowEditField : function(jqueryDom, e, animateName) {
		if (!animateName) {
			animateName = "bounceIn";
		}
		jqueryDom.show();
		jqueryDom.prev(".k-edit-label").show();
		if (!e.jsonToFormFlag) {
			$(jqueryDom).animo({
				animation : animateName,
				duration : 1,
				keep : false
			}, function() {
				jqueryDom.show();
			});
			$(jqueryDom.prev(".k-edit-label")).animo({
				animation : animateName,
				duration : 1,
				keep : false
			}, function() {
				jqueryDom.prev(".k-edit-label").show();
			});
		}
	},

	/**
	 * 与animateShowEditField()方法相反。
	 * @param jqueryDom
	 * @param e
	 * @param animateName
	 */
	animateHideEditField : function(jqueryDom, e, animateName) {
		if (!animateName) {
			animateName = "fadeOut";
		}
		if (!e.jsonToFormFlag) {
			$(jqueryDom).animo({
				animation : "fadeOut",
				duration : 1,
				keep : false
			}, function() {
				jqueryDom.hide();
			});
			$(jqueryDom.prev(".k-edit-label")).animo({
				animation : "fadeOut",
				duration : 1,
				keep : false
			}, function() {
				jqueryDom.prev(".k-edit-label").hide();
			});
		} else {
			jqueryDom.hide();
			jqueryDom.prev(".k-edit-label").hide();
		}
	}

};