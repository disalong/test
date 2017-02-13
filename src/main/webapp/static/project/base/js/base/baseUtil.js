/**
 * 项目的js工具包
 */

window.baseUtil = {};

/**
 * 后面很多方法会绑定到这个对象上
 */
window.base = {};

baseUtil.redStar = "<span style='color:red'>*</span>";

/**
 * 更改语言
 */
baseUtil.changeLang = function(lang) {
	$.cookie("lang", lang);
	window.location.href = ".";
};

/**
 * 使用服务器发送给客户的密钥进行登录密码加密
 * 例子：
 * var encryptPassword = baseUtil.encryptPasswordByPPK($.trim($("#userPassword").val()), $.trim($("#userPripubKey").val()));
 * userPassword：e8fae908
 * userPripubKey：{"e":"10001","n":"b593dfd60aa598a5017283669483ba6bc88977a22ba0f93bd2618d4354e246b312512b829ec2d7562ebf9408fedc7074cc17f954d89b5877afbecc7f6e6ae315","maxdigits":"67"}
 */
baseUtil.encryptPasswordByPPK = function(password, ppkJSON) {
	if (!ppkJSON) {
		return "";
	}
	ppkJSON = $.parseJSON(ppkJSON);
	var keys = new $.jCryption.generatKeys(ppkJSON["e"], ppkJSON["n"],
			ppkJSON["maxdigits"]);
	var res;
	$.jCryption.encrypt(password, keys, function(encryptedPasswd) {
		res = encryptedPasswd;
	});
	return res;
};

/**
 * 封装jquery template的使用。参数说明:
 * templateId:传入模板id，即<script type="text/template" id="bigCategoryTemplate">中的bigCategoryTemplate；
 * data：模板数据；
 * selection：模板插入的html节点的jquery对象或表达式
 */
baseUtil.template = function(templateId, data, selection) {
	var template = $("#" + templateId).html();
	$.template("TEMPL_NAME", template);
	$(selection).html($.tmpl("TEMPL_NAME", data));
};

/**
 * JSON format 对象转换为json格式的数据，并且进行缩进格式化，调用方式baseUtil.JF(obj);
 * 注意，仅用于调试使用，发布前必须移除，因为里面的输出方式使用了console.log()，在IE下 会处于阻塞状态。
 */
baseUtil.JF = function(data) {
	function JtreeArrayOrObject(data, root) {
		if (typeof data === "number" || typeof data === "string"
				|| typeof data === "boolean" || data === null) {
			tree = data;
			return;
		}
		if (data instanceof Array) {
			tree += getStep() + getRootStr(root) + "[" + R;
			for ( var i in data) {
				root = "";
				if (i == 0)
					level++;
				if (typeof data[i] === "string") {
					tree += getStep() + "\"" + data[i] + "\"," + R;
				} else if (typeof data[i] === "number"
						|| typeof data[i] === "boolean") {
					tree += getStep() + "" + data[i] + "," + R;
				} else if (typeof data[i] === "function") {
					tree += getStep() + "\"function()\"," + R;
				} else if (data[i] === null) {
					tree += getStep() + "\"null\"," + R;
				} else if (data[i] instanceof Array) {
					JtreeArrayOrObject(data[i], "");
				} else {
					realJtree(data[i], root);
					level--;
					tree += getStep() + "}," + R;
				}
			}
			if (data.length > 0) {
				tree = tree.substring(0, tree.length - 2) + R;
				level--;
			}
			tree += getStep() + "]," + R;
		} else {
			realJtree(data, root);
			level--;
			tree += getStep() + "}," + R;
		}
	}
	function realJtree(data, root) {
		tree += getStep() + getRootStr(root) + "{" + R;
		var count = 0;
		for ( var ii in data) {
			count++;
			if (count == 1)
				level++;
			var d = data[ii];
			if (typeof d === "string") {
				tree += getStep() + "\"" + ii + "\" : \"" + d + "\"," + R;
			} else if (typeof d === "number" || typeof d === "boolean") {
				tree += getStep() + "\"" + ii + "\" : " + d + "," + R;
			} else if (typeof d === "function") {
				tree += getStep() + "\"" + ii + "\" : \"function()\"," + R;
			} else if (d === null) {
				tree += getStep() + "\"" + ii + "\" : \"null\"," + R;
			} else
				JtreeArrayOrObject(d, ii);
		}
		if (count > 0)
			tree = tree.substring(0, tree.length - 2) + R;
		else
			level++;
	}
	function getStep() {
		var currentStep = "";
		for (var i = 0; i < level; i++) {
			currentStep += oneStep;
		}
		return currentStep;
	}
	function getRootStr(root) {
		var rootStr = "";
		if (root === "") {
			return "";
		} else {
			return "\"" + root + "\" : ";
		}
	}
	var tree = "";
	var R = "\n";
	var oneStep = "     ";
	var level = 0;
	var root = "";
	JtreeArrayOrObject(data, root);
	if (typeof data !== "number" && typeof data !== "string"
			&& typeof data !== "boolean" && data !== null) {
		tree = tree.substring(0, tree.length - 2) + R;
	}
	if (window.console) {
		window.console.info(tree);
	} else {
		console.log(tree);
	}
};

/**
 * json字符串转javaScript对象，因为当我们使用EL表达式获取一个后台的json对象，比如${userJSON}，如果
 * userJSON为空，那么页面是会报错的，但是用字符串圈起来就不会，比如"${userJSON}"，所以使用这个方法，我们
 * 就不需要每次先json字符串是否为空。
 * 
 * 要注意的是，当我们的json字符串是从JSTL表达式中获取的，那么调用这个方法的时候，参数要注意用两个单引号括起来，
 * 而不是两个双引号，比如baseUtil.json('${obj}')而不是baseUtil.json("${obj}")
 */
baseUtil.json = function(jsonStr) {
	if (jsonStr) {
		return $.parseJSON(jsonStr);
	}
	return "";
};

/**
 * 和baseUtil.json是一样的，只不过有的时候，我们会将后端的json字符串十六进制编码后传回前端，这样前端用
 * el表达式获取的时候就不会出问题。这种情况我们就需要先解密字符串，然后再还原回对象。
 */
baseUtil.jsonDehex = function(jsonStr) {
	if (jsonStr) {
		jsonStr = baseCode.decodeHex(jsonStr);
		return $.parseJSON(jsonStr);
	}
	return "";
};

/**
 * 当某个ajax请求无权限就会返回{"loginToken_noPermission":"/login"}
 * 作为标志，让用户重新登录。
 * noPermissionMsg:如果发现请求的链接没有权限，提示什么内容，缺省内容是“未授权操作或会话超时”。
 */
baseUtil.noPermission = function(data, noPermissionMsg) {
	if (data["loginToken_noPermission"]) {
		if (!noPermissionMsg) {
			noPermissionMsg = baseUtil.val("E.noPermissionOperation");
		}
		baseUtil.alertE(noPermissionMsg);
		setTimeout(function() {
			location.href = data["loginToken_noPermission"];
		}, 5000);
	}
	return data;
};

/**
 * 从服务器端返回的异常对象中获取错误信息，并弹出提示。
 * errorData：一个js对象，其实对应一个ExceptionPersistence对象。
 */
baseUtil.getError = function(errorData) {
	if (errorData) {
		var exceptionPersistenceMessage = errorData["exceptionPersistenceMessage"];
		var errMsg = $.trim(exceptionPersistenceMessage.substring(
				exceptionPersistenceMessage.split(":")[0].length + 1,
				exceptionPersistenceMessage.length));
		if (errMsg) {
			baseUtil.alertE(errMsg);
		} else {
			baseUtil.alertE(baseUtil.val("E.GLOBAL_ERROR"));
		}
	}
};

/**
 * 简单的封装jquery的ajax的常用的操作，此ajax只提供查询数据使用，不用于保存数据。 保存数据请用saveAJ()方法。
 * url:请求url。
 * data:请求参数，javaScript对象。
 * success：请求成功回调方法。
 * method:GET或POST
 * async:true为异步请求，false为同步请求。
 * complete:不管请求是否成功都调用，比如网络中断了也会调用，主要获取请求返回的状态码。
 * 默认传入XMLHttpRequest, textStatus这两个参数
 * XMLHttpRequest.readyState:
 *状态码：
 *0 － （未初始化）还没有调用send()方法
 *1 － （载入）已调用send()方法，正在发送请求
 *2 － （载入完成）send()方法执行完成，已经接收到全部响应内容
 *3 － （交互）正在解析响应内容
 *4 － （完成）响应内容解析完成，可以在客户端调用了
 *textStatus可能是"success","timeout", "error", "notmodified" 和 "parsererror"。
 *error:ajax在请求的过程中，会自动判断请求的失败，超时等情况，如果出现这些请求，会调用error方法，传入参数XMLHttpRequest, textStatus, errorThrown，
 *具体参考jquery文档。我们自己使用的过程中没有必要判断那么细致，反正就是如果ajax请求失败了需要做些什么，你就把要做的事情放到这个参数方法中。
 *noPermissionMsg:如果发现请求的链接没有权限，提示什么内容，缺省内容是“未授权操作或会话超时”。
 */
baseUtil.AJ = function(url, data, success, method, async, complete, error,
		noPermissionMsg) {
	/**
	 * 是否操作台频繁检测，包括重复提交，提交写数据库请求过多，一个时间周期内请求过多
	 */
	successMethod = function(_data) {
		_data = baseUtil.noPermission(_data, noPermissionMsg);
		baseUtil.getError(_data["e"]);
		if (!_data["e"] && success) {
			success(_data);
		}
	};
	if (!error) {
		error = function() {
			baseUtil.alertE(baseUtil.val("E.overtime"));
		};
	}
	$.ajax({
		async : async,
		type : method,
		dataType : "json", // 不设此参数会导致返回的内容中文乱码
		url : url,
		data : data,
		timeout : 10000,
		success : successMethod,
		complete : complete,
		error : error
	});
};

/**
 * GET方式调用baseUtil.AJ，同步请求。
 */
baseUtil.AJget = function(url, data, success, complete, error, noPermissionMsg) {
	baseUtil.AJ(url, data, success, "GET", false, complete, error,
			noPermissionMsg);
};

/**
 * POST方式调用baseUtil.AJ，同步请求。
 */
baseUtil.AJpost = function(url, data, success, complete, error, noPermissionMsg) {
	baseUtil.AJ(url, data, success, "POST", false, complete, error,
			noPermissionMsg);
};

/**
 * GET方式调用baseUtil.AJ，异步请求。
 */
baseUtil.AJgetAsync = function(url, data, success, complete, error,
		noPermissionMsg) {
	baseUtil.AJ(url, data, success, "GET", true, complete, error,
			noPermissionMsg);
};

/**
 * POST方式调用baseUtil.AJ，异步请求。
 */
baseUtil.AJpostAsync = function(url, data, success, complete, error,
		noPermissionMsg) {
	baseUtil.AJ(url, data, success, "POST", true, complete, error,
			noPermissionMsg);
};

/**
 * 相对于AJ()方法，此方法“只”用于提交数据保存数据库使用，因为它默认有参数"SAVE=SAVE"，这样后台RepeatSaveToken就会知道
 * 这是一条保存操作，从而进行重复提交拦截。
 * 
 * 以后的所有写数据库的方法都走这个方法，不管提交完是否进行页面跳转，如果需要进行页面跳转，指定参数redirectUrl为跳转url
 * 
 */
baseUtil.saveAJ = function(url, data, success, redirectUrl) {
	$(data).extend(data, {
		"SAVE" : "SAVE"
	});
	baseUtil.AJpost(url, data, success);
	if (redirectUrl) {
		window.location.href = redirectUrl;
	}
};

/**
 * form提交封装，ajax方式提交，代替jquery对象.submit()方式提交，submit()方式会进行页面跳转。
 * formSelection:jquery的form对象或者表达式；
 * success：处理成功的回调方法；
 * redirectUrl:可以不传，如果处理完成需要进行页面跳转则填写跳转路径。
 */
baseUtil.saveAJForm = function(formSelection, success, redirectUrl) {
	var data = baseUtil.formToJson(formSelection);
	baseUtil.saveAJ($(formSelection).attr("action"), baseUtil.json(data),
			success, redirectUrl);
};

/**
 * 它可以获取所有dom节点的value值，指定id值即可，多数情况，它只用于获取多语言或者EL表达式在js文件中无法直接使用，因为放在
 * 隐藏域中，所以用它来间接获取。 获取多语言显示内容，因为js文件是无法直接用<spring:message>的方式获取多语言标签的，那么一些常用的多语言标签会被
 * 放在i18n.jsp中的隐藏域中，隐藏域的id就是多语言标签名，那么id参数传入多语言标签名即可，如N.ok，就传入"N.ok"。
 */
baseUtil.val = function(id) {
	if (document.getElementById(id)) {
		return $(document.getElementById(id)).val();
	}
	return id;
};

/**
 * 将form内所有含有name的input框格式化成"{name:value,name:value}"的字符串形式，方便表单的参数获取。
 * formDom：form表单的jquery对象或者表达式。
 */
baseUtil.formToJson = function(formDom) {
	var res = {};
	$(formDom)
			.find("input[name], select[name], button[name], textarea, img")
			.each(
					function() {
						if ("checkbox" == $(this).attr("type")) {
							if ($(this)[0].checked) {
								res[$(this).attr("name")] = true;
							} else {
								res[$(this).attr("name")] = false;
							}
						} else if ($(this).is("img")) {
							res[$(this).attr("name")] = $.trim($(this).attr(
									"imageVal"));
						} else {
							res[$(this).attr("name")] = $.trim($(this).val());
						}
						if ($(this).attr("extendData")) {
							/**
							 * 如果点击控件还有另一个弹出框扩展填写，那么
							 * 将所有的扩展填写的内容作为json对象字符串的方式附加在控件的extendData属性中。
							 * baseUtil.formToJson扫每个控件都会将它的extendData属性的内容换个
							 * 名字"控件id_extendData"，然后作为与控件同级的属性提交。
							 */
							res[$(this).attr("name") + "_extendData"] = baseUtil
									.json($(this).attr("extendData"));
						}
					});
	return JSON.stringify(res);
};

/**
 * 与formToJson相反，将json格式的对象字符串还原回表单数据进行展示。
 * jsonStr：对象形式的json字符串。
 * formDom：表单对象的
 */
baseUtil.jsonToForm = function(jsonStr, formDom) {
	$(formDom)[0].reset();
	var obj = baseUtil.json(jsonStr);
	if (!obj) {
		$(formDom).find("input[type='checkbox']").removeAttr("checked");
		$(formDom).find("input[data-role='dropdownlist']").each(function() {
			$(this).data("kendoDropDownList").select(0);
			/**
			 * 新增时还原初始值，如果是下拉条，依然要在初始值状态触发一下下拉条的onchange事件，
			 * 因为如果是多个按钮共用一个弹出框的时候，上一个按钮的下拉条值不是初始值，它可能触发
			 * onchange时间后出现了其他输入选项，那么当新增的时候，下拉条是初始值时，不应该再出现
			 * 这些其他的输入项时，就必须在下拉初始值的基础上再手动触发一下onchange时间，才能使得
			 * 其他输入项消失，弹出框还原会初始下拉条时的模样。
			 */
			setTimeout((function(_this) {
				return function() {
					$(_this).data("kendoDropDownList").trigger("change", {
						"jsonToFormFlag" : true
					});
				};
			})(this), 1);
		});
	} else {
		for ( var i in obj) {
			if ("checkbox" == $(formDom).find("#" + i).attr("type")) {
				if (obj[i]) {
					$(formDom).find("#" + i)[0].checked = true;
				} else {
					$(formDom).find("#" + i)[0].checked = false;
				}
			} else if ($(formDom).find("#" + i).is("img")) {
				if ($.trim(obj[i])) {
					$(formDom).find("#" + i).attr("imageVal", $.trim(obj[i]));
					baseWidget.giveHeadImg($(formDom).find("#" + i), $
							.trim(obj[i]));
				}
			} else if ($(formDom).find("#" + i).prev().is(".k-dropdown-wrap")) {
				/**
				 * 这里一定要加setTimeout方法，Kendo的下拉框赋值才起效，也不清楚原因，其他地方也不一定需要，就这个地方。
				 * setTimeout直接在方法里读取外边的变量有闭包问题，导致i永远是最后一个，因为setTimeout是异步的，等它开始
				 * 包，i已经遍历到最后一个了，所以改成下面的方式，可以解决闭包的问题。
				 */
				setTimeout((function(i) {
					return function() {
						$(formDom).find("#" + i).data("kendoDropDownList")
								.value($.trim(obj[i]));
						//下拉条一般都可能有onchange事件，那么在将json数据还原表单的时候，我们要触发这些onchange事件，
						//举个例子，model的属性类型type是下拉选项，当选择是“多选”或“单选”的时候，需要触发onchange事件，
						//出现多一个输入框填写下拉数据，那么当json还原表单的时候，如果是“多选”或“单选”，就必须触发事件，
						//才能正常显示下拉数据的内容。但是由于“下拉数据”的出现我加了动画，但是在json还原表单的时候我又不
						//希望有动画，所以我加了个jsonToFormFlag参数来做区别。
						$(formDom).find("#" + i).data("kendoDropDownList")
								.trigger("change", {
									"jsonToFormFlag" : true
								});
					};
				})(i), 1);
			} else if ($(formDom).find("#" + i).parent().is(".k-numeric-wrap")) {
				$(formDom).find("#" + i).data("kendoNumericTextBox").value(
						$.trim(obj[i]) * 1);
			} else if ($(formDom).find("#" + i).prev()
					.is(".k-multiselect-wrap")) {
				setTimeout((function(i) {
					return function() {
						$(formDom).find("#" + i).data("kendoMultiSelect")
								.value($.trim(obj[i]).split(","));
						$(formDom).find("#" + i).data("kendoMultiSelect")
								.trigger("change", {
									"jsonToFormFlag" : true
								});
					};
				})(i), 1);
			} else {
				if ($(formDom).find("#" + i).is("span")) {
					$(formDom).find("#" + i).text($.trim(obj[i]));
				} else {
					$(formDom).find("#" + i).val($.trim(obj[i]));
				}
			}
			if ($.trim(obj[i + "_extendData"])) {
				/**
				 * baseUtil.jsonToForm将json还原成表格数据的时候，也会获取"控件id_extendData"，
				 * 然后放在相应的控件的extendData属性中。
				 */
				$(formDom).find("#" + i).attr("extendData",
						JSON.stringify(obj[i + "_extendData"]));
			}
		}
	}
};

/**
 * 用于统一格式化前端值，通常的处理例如特殊字符的处理，html字符，javaScript字符的后台处理后，前台还原显示，日期的显示长度截取，多时区等。
 * 注意，为了不让前端代码过于混乱，以往idToName这种操作交由这里统一处理。
 * text:需要处理的原始字符串。
 * selectData：需要idToName的数据，你可以传baseSelectItems.js中的变量名，也可以传一个url，这个url获取的数据的格式必须和baseSelectItems.js
 * 中的变量的格式是一样的。
 * selectFirstData：如果原始text在selectData中找不到对应的idToName，那么就会显示成selectFirstData，它是一个i18n的标签，前提是这个标签已经
 * 在jsp中注册了。
 * filedName:需要数据处理的列的变量名，一般针对表格列的idToName，它的作用是，如果selectData是一条url，那么原来的处理是每次调用format都会
 * 请求一次后台拿到数据，然后idToName，但是这种做法显然是效率低的，所以想到的方法就是，每一列第一次调用format的时候，请求一次后台，然后保存
 * 在window[fieldName_itemsData]中，后面就可以直接拿这个数据去idToName.
 */
baseUtil.format = function(text, selectData, selectFirstData, filedName) {
	if (!text) {
		if (selectFirstData && "undefined" != selectFirstData) {
			return baseUtil.val(selectFirstData);
		} else {
			return "";
		}
	}
	if (text && "" === (text + "").replace(baseConstant.pattern.dbDateTime, "")) {
		text = baseDateUtil.format(baseUtil.strToDate(text),
				"yyyy-MM-dd hh:mm:ss");
		return text;
	}
	text = baseCode.escapeHtml($.trim(text));
	if (selectData && "undefined" != selectData) {
		var itemsData = {};
		if (baseSelectItems[selectData]) {
			itemsData = baseSelectItems[selectData];
		} else {
			if (window[filedName + "_itemsData"]) {
				itemsData = window[filedName + "_itemsData"];
			} else {
				baseUtil.AJpost(selectData, {}, function(data) {
					itemsData = data;
					window[filedName + "_itemsData"] = data;
				});
			}
		}
		if (text.indexOf(",") == -1) {
			for ( var i in itemsData) {
				if (itemsData[i]["value"] == text) {
					return itemsData[i]["label"];
				}
			}
		} else {
			var multiText = [];
			var multiVal = text.split(",")
			for ( var ii in multiVal) {
				for ( var i in itemsData) {
					if (itemsData[i]["value"] == multiVal[ii]) {
						multiText.push(itemsData[i]["label"]);
						break;
					}
				}
			}
			if (multiText.join(",")) {
				return multiText.join(",");
			}
		}
	} else {
		return text;
	}
};

/**
 * 使该selection内的确定，新增，修改按钮（分别对应这三个class属性base-grid-edit-update,add-button,delete-button）失效。
 * selection：某个dom节点的jquery元素。
 */
baseUtil.disabled = function(selection) {
	$(selection).find(".base-grid-edit-update, .add-button, .delete-button")
			.each(function() {
				$(this).kendoButton().data("kendoButton").enable(false);
			});
};

/**
 * 使该selection内的确定，新增，修改按钮（分别对应这三个class属性base-grid-edit-update,add-button,delete-button）有效。
 * selection：某个dom节点的jquery元素。
 */
baseUtil.notDisabled = function(selection) {
	$(selection).find(".base-grid-edit-update, .add-button, .delete-button")
			.each(function() {
				$(this).kendoButton().data("kendoButton").enable(true);
			});
};

/**
 * 使该form内的input元素只读。 fromDom：某个form的jquery元素。
 */
baseUtil.readOnlyForm = function(fromDom) {
	$(fromDom).find("input").attr("readonly", "readonly");
	$(fromDom).find("input").css("background-color", "#E5E5E5");
	$(fromDom).find("input").css("opacity", 0.9);
};

/**
 * 使该selection内的input元素有编辑权限。 selection：某个dom节点的jquery元素。
 */
baseUtil.notReadOnlyForm = function(fromDom) {
	$(fromDom).find("input").removeAttr("readonly");
	$(fromDom).find("input").css("background-color", "none");
	$(fromDom).find("input").css("opacity", "none");
};

/**
 * 使元素只读。 selection：某个dom节点的jquery元素。
 */
baseUtil.readOnly = function(selection) {
	$(selection).attr("readonly", "readonly");
	$(selection).css("background-color", "#E5E5E5");
	$(selection).css("opacity", 0.9);
};

/**
 * 使该selection内的元素有编辑权限。 selection：某个dom节点的jquery元素。
 */
baseUtil.notReadOnly = function(selection) {
	$(selection).find("input").removeAttr("readonly");
	$(selection).css("background-color", "none");
	$(selection).css("opacity", "none");
};

/**
 * 仿readOnly，baseUtil.readOnly是真的readOnly，因为如果为input输入框加入readOnly属性，
 * kendo的validation无法onblur使进行校验，必须submit的时候才进行校验。所以这里做一个仿的
 * readOnly，针对结局kendo validation对readOnly属性的输入框无法onblur验证的问题。思路是
 * 不再给输入框readOnly属性，而是为输入框绑定一个事件，当光标进入输入框的时候，让光标弹出。
 * 
 * selection：input输入框的jquery选择对象。
 */
baseUtil.fangReadOnly = function(selection) {
	$(selection).unbind("focusin").bind("focusin", function() {
		$(this).blur();
	});
	$(selection).addClass("fang-reonly");
};

/**
 * 与baseUtil.fangReadOnly相反。 selection：某个dom节点的jquery元素。
 */
baseUtil.notFangReadOnly = function(selection) {
	$(selection).unbind("focusin");
	$(selection).removeClass("fang-reonly");
};

/**
 * 简单的kendo校验封装。 
 * formDom:需要校验的form的jquery对象或选择器表达式; 
 * *****其实这个方法不一定是传一个form节点，也可以传单独的一个或一些控件，比如我想要单独校验某个文本框，那么传该文本框的dom，
 * 得到返回值，调用validate()方法即可。只不过一半情况下我们事对一个form表单里面的所有控件进行校验的，所以一般会传form节点。
 * 
 * 校验，第一步都是将所有需要校验的input text框或者textArea框都需要有一个属性叫validationMessage，属性值为校验提示内容，
 * 这个需要数据显示的之后，校验之前赋上。baseUtil.simpleValidator方法已经内置了"kendo_required"和"kendo_pattern"这两种校验方法，
 * 只要在需要校验的输入框节点中提前加上这两个属性，就会进行相应的校验，这两个校验可以涵盖大部分的校验需求
 * （为什么不是"required"而是"kendo_required"，因为如果是required属性，kendo的校验器会自作聪明的自行进行校验，而不走rule里面的方法）。
 * 如果还有特殊的校验需求，可以在校验节点上加上属性kendo_validMethod，指定一个方法名，并写一个同名的全局方法，
 * 参数为被校验文本框的jquery对象，校验器会自动调用。
 * 
 * 其实是可以在校验的过程中改变校验提示的，参考accountSetting.js的newPassword的校验，原理是，之前我们使用kendo_required&&kendo_pattern&&kendo_validmethod的方式
 * 校验，如果前面校验不通过，后面就不会校验了，也就是说，可能kendo_required校验不通过，kendo_pattern和kendo_validmethod都不会跑，现在改成，不管校验是否通过
 * kendo_required、kendo_pattern和kendo_validmethod都会跑一次，所以我们就可以在kendo_validmethod中动态指定validationMessage的内容，这样就实现了校验过程中
 * 动态改变校验提示。其实如果使用到kendo_validmethod，input中的validationMessage可以填null，那么你就要注意kendo_validmethod写法了：
 * function(input) {
		var value = input.val();
		var errorMsg = "";
		if (xxx校验不通过) {
			errorMsg = errorMsg + ", " + xxx校验提示;
		}
		if (yyy校验不通过) {
			errorMsg = errorMsg + ", " + yyy校验提示;
		}
		if (errorMsg) {
			input.attr("validationMessage", 原校验提示 + errorMsg);
			return false;
		}
		input.attr("validationMessage", 原校验提示);
		return true;
	};
 * 
 */
baseUtil.simpleValidator = function(formDom) {
	// 一旦调用检验方法，form中的所有提交元素都会经过rule的校验，注意所有form中的提交元素都会被校验（除了readonly的元素），
	// 包括隐藏域，所以不要在form中写隐藏域，否则会校验交叉错误，比如
	// 隐藏域校验不通过，提示却在显示的input框中。另外，所有的被校验组件都必须写上唯一的id和name。
	var rules = {
		"rule" : function(input) {
			// input为节点的jquery对象
			function required(input) {
				if ("checkbox" == input.attr("type")) {
					if (input[0].checked) {
						return true;
					}
					return false;
				}
				return !!$.trim(input.val());
			}
			function pattern(input) {
				if (input.attr("kendo_pattern")) {
					//因为正则没有测试完全匹配的方法，test()方法是测试某字符串是否包含正则的内容，注意只是包含，
					//不是完全匹配，所以只能用正则替空字符串，得到的结果如果是空，则是完全匹配的。
					var regStr = input.attr("kendo_pattern");
					if (regStr.split("&&").length > 1) {
						var regStrs = regStr.split("&&");
						var match = true;
						for ( var i in regStrs) {
							if (!input.val().mth(regStrs[i])) {
								match = false;
							}
						}
						return match;
					}
					var val = input.val();
					if (input.data("kendoMultiSelect")) {
						val = input.data("kendoMultiSelect").value() + "";
					}
					return "" === val.replace(new RegExp(input
							.attr("kendo_pattern")), "");
				}
				return true;
			}
			function validMethod(input) {
				if (input.attr("kendo_validMethod")) {
					return window[input.attr("kendo_validMethod")](input);
				}
				return true;
			}
			var valid = true;
			if (input.attr("kendo_required")
					&& "true" == input.attr("kendo_required")) {
				if (!required(input)) {
					valid = false;
				}
			} else {
				if (!$.trim(input.val())) {
					return true;
				}
			}
			if (!pattern(input)) {
				valid = false;
			}
			if (!validMethod(input)) {
				valid = false;
			}
			return valid;
		}
	};
	return $(formDom)
			.kendoValidator(
					{
						validateOnBlur : true,
						rules : rules,
						messages : {
							"rule" : function(input) {
								// kendo的validator默认读取控件的validationMessage属性内容作为校验错误提示，其次读取title属性，
								//没有的话才读取下面的retrun值，这个顺序不会变，所以出现的情况是，如果你的input没有validationMessage，
								//但有title，那么下面的return是不会起效的，只会认title值，但是我们的title不是用于校验提醒的，
								//所以只能用更高级的属性，也就是validationMessage。
								return input.attr("validationMessage");
							}
						},
						errorTemplate : "<div onclick='baseUtil.closeValidationMessage(this)' class='k-widget k-tooltip k-tooltip-validation k-invalid-msg'>"
								+ "<span class='fa fa-exclamation-circle'/><span class='base-vilid-msg' >#=message#</span></div>"
					}).data("kendoValidator");
};

/**
 * 点击弹出的校验错误提示，让这个提示隐藏掉。这个方法通过onclick的形式绑定在kendoValidator.errorTemplate中。
 */
baseUtil.closeValidationMessage = function(_this) {
	$(_this).animo({
		animation : "zoomOutRight",
		duration : 1,
		keep : false
	});
	setTimeout(function() {
		$(_this).hide();
	}, 1000);
};

/**
 * 拼接编辑控件的校验选项，因为约定了根据编辑控件的属性进行校验，所以这里返回的字符串将放置于校验控件的属性中。
 * required:"true":必填，其他：不必填。
 * pattern写法参考：baseConstant.pattern.numberOnly
 * validMethod：一个函数的名字，这个函数必须是window的。
 * errorMsg：校验失败的提示。
 */
baseUtil.validateAttr = function(required, pattern, validMethod, errorMsg) {
	var res = "";
	if (required) {
		res += " kendo_required='" + required + "' ";
	}
	if (pattern) {
		res += " kendo_pattern='" + pattern + "' ";
	}
	if (validMethod) {
		res += " kendo_validMethod='" + validMethod + "' ";
	}
	if (errorMsg) {
		res += " validationMessage='" + errorMsg + "' ";
	}
	return res;
};

/**
 * 作用和baseUtil.val()类似，都是因为js文件中不能使用el或jstl表达式获取request中的内容，所以简洁获取隐藏域中的val值，
 * 但是如果隐藏域的val值是一串json字符串，那么是获取不到完整的val值得，因为value="{"aaa":"bbb"}"，你拿value的是"{",
 * 那么再调用baseUtil.json()时就出问题了。所以将后台的“JSON”格式的字符串先转换html，然后base16编码，所以这里还原的时候
 * 则是先base16解码，然后转回html。id，隐藏域的id
 */
baseUtil.jsonVal = function(id) {
	var val = baseCode.decodeHex($(document.getElementById(id)).val());
	return baseCode.unEscapeHtml(val);
};

/**
 * formSelection:form的jquery对象或者表达式。
 * 使用此方法代替form表达dom元素的reset()方法，因为在原来reset()方法的基础上，我让元素的kendo_title的值也置空了，否则会出现
 * 元素的内容为空了，但是tips还是显示出内容的情况。 
 * 把有name属性的button的value也制空了，因为一级弹出框中进场会出现button，然后根据button的value值展现下一级的弹出框的内容。
 */
baseUtil.reset = function(formSelection) {
	$(formSelection)[0].reset();
	$(formSelection).find("[kendo_title]").each(function() {
		$(this).attr("kendo_title", "");
	});
	$(formSelection)
			.find("[imageval]")
			.each(
					function() {
						var defaultImage = ctx
								+ "/static/project/base/style/image/base-userHeader-test.jpg";
						$(this).attr("imageval", "");
						$(this).attr("src", defaultImage);
					});
	$(formSelection).find("button[name]").each(function() {
		$(this).val("");
	});
};

/**
 * 改变元素的背景图片的x和y坐标，作用是微调背景图片的位置，比如原来背景图片的位置是background-position:0 -12px，那么你想
 * 调整为background-position:1 -11px，那么就调用changeBackgroundPosition(selection, 1, 1);调整的单位是px。selection:
 * 需要调整的元素的dom或者jquery对象或者表达式；xChange:改变背景图片的x坐标，传数值，最终改变值将是原来的值加上这个参数值；
 * yChange:改变背景图片的y坐标，传数值，最终改变值将是原来的值加上这个参数值；
 */
baseUtil.changeBackgroundPosition = function(selection, xChange, yChange) {
	var backgroundPosition = $(selection).css("background-position").split(" ");
	var YBackgroundPosition = backgroundPosition[1].replace("px", "") * 1;
	var XBackgroundPosition = backgroundPosition[0].replace("px", "") * 1;
	$(selection).css(
			{
				"background-position" : +(XBackgroundPosition + xChange)
						+ "px " + (YBackgroundPosition + yChange) + "px"
			});
};

/**
 * 通过直接在dom元素中绑定事件，比如<div onclick="do()"/>的方式得到的event对象的浏览器兼容，得到触发事件的target对象。
 * evt:事件方法的第一个参数。
 */
baseUtil.getTargetByEvent = function(e) {
	e = window.event || e;
	return e.srcElement || e.target;
};

/**
 * 判断是否为火狐浏览器
 */
baseUtil.isFirefox = function() {
	return /firefox/.test(navigator.userAgent.toLowerCase());
};

/**
 * 判断是否为谷歌浏览器
 */
baseUtil.isChrome = function() {
	return /webkit/.test(navigator.userAgent.toLowerCase());
};

/**
 * 判断是否为Opera浏览器
 */
baseUtil.isOpera = function() {
	return /opera/.test(navigator.userAgent.toLowerCase());
};

/**
 * 判断是否为IE浏览器
 */
baseUtil.isIE = function() {
	return /msie/.test(navigator.userAgent.toLowerCase());
};

/**
 * 判断是否为IE6
 */
baseUtil.isIE6 = function() {
	return 'undefined' == typeof (document.body.style.maxHeight);
};

/**
 * 判断是否为IE6-IE8
 */
baseUtil.isIE68 = function() {
	return !$.support.leadingWhitespace;
};

/**
 * 判断是否为IE9
 */
baseUtil.isIE9 = function() {
	return (navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion
			.match(/9./i) == "9.");
};

/**
 * notification提示框中的操作按钮处理
 */
baseUtil.clickNorificationOption = function() {
	$(".k-notification").closest(".k-animation-container").css("z-index",
			"99999");
	$(".Message-close.js-messageClose").unbind("click").bind("click",
			function() {
				$(this).closest(".k-animation-container").remove();
			});
	$(".Message-close.js-messageCloseAll").each(function() {
		$(this).unbind("click").bind("click", function() {
			if ($(this).is(".base-noti-error")) {
				alertError.hide();
				$(".base-noti-error").each(function() {
					$(this).closest(".k-animation-container").remove();
				});
			} else if ($(this).is(".base-noti-success")) {
				alertSuccess.hide();
				$(".base-noti-success").each(function() {
					$(this).closest(".k-animation-container").remove();
				});
			} else if ($(this).is(".base-noti-warm")) {
				alertWarm.hide();
				$(".base-noti-warm").each(function() {
					$(this).closest(".k-animation-container").remove();
				});
			} else if ($(this).is(".base-noti-info")) {
				alertInfo.hide();
				$(".base-noti-info").each(function() {
					$(this).closest(".k-animation-container").remove();
				});
			}
		});
	});
	$(".Message-close.js-messageClosePin").unbind("click").bind("click",
			function() {
				if (!$(this).hasClass("base-pin")) {
					$(this).addClass("base-pin");
				} else {
					return;
				}
				var colon = $(this).closest(".k-animation-container").clone();
				$(this).closest(".k-animation-container").remove();
				colon.appendTo($("body"));
				baseUtil.clickNorificationOption();
			});
};
/**
*弹出错误提示，比如校验失败，系统错误等等。
*使用方式：baseUtil.alertE("error!");
*title不传默认为“操作失败”
*/
baseUtil.alertE = function(message, title) {
	if (!title) {
		title = baseUtil.val("N.errorNotification");
	}
	alertError.show({
		title : title,
		message : message
	}, "error");
	baseUtil.clickNorificationOption();
};

/**
*弹出成功提示，比如删除成功，操作成功等。
*使用方式：baseUtil.alertS("success!");
*title不传默认为“操作成功”
*/
baseUtil.alertS = function(message, title) {
	if (!title) {
		title = baseUtil.val("N.successNotification");
	}
	alertSuccess.show({
		title : title,
		message : message
	}, "success");
	baseUtil.clickNorificationOption();
};

/**
*弹出信息提示，比如收到邮件等等。
*使用方式：baseUtil.alertS("info!");
*title不传默认为“温馨提醒”
*/
baseUtil.alertI = function(message, title) {
	if (!title) {
		title = baseUtil.val("N.infoNotification");
	}
	alertInfo.show({
		title : title,
		message : message
	}, "info");
	baseUtil.clickNorificationOption();
};

/**
*弹出警告提示，比如剩下密码尝试次数警告等等。
*使用方式：baseUtil.alertW("warm!");
*title不传默认为“操作警告”
*/
baseUtil.alertW = function(message, title) {
	if (!title) {
		title = baseUtil.val("N.warmNotification");
	}
	alertWarm.show({
		title : title,
		message : message
	}, "warm");
	baseUtil.clickNorificationOption();
};

/**
 * 对数字型数组进行升序
 * 可传["3","2","1"]，也可以传[3,2,1]
 * 结果：["1","2","3"]或[1,2,3]
 */
baseUtil.sortArrayASC = function(array) {
	function NumAscSort(a, b) {
		return a - b;
	}
	return array.sort(NumAscSort);
};

/**
 * 对数字型数组进行升序
 * 可传["1","2","3"]，也可以传[1,2,3]
 * 结果["3","2","1"]或[3,2,1]
 */
baseUtil.sortArrayDESC = function(array) {
	function NumDescSort(a, b) {
		return b - a;
	}
	return array.sort(NumDescSort);
};

/**
 * 由于网页加载的过程中，有的时候比较慢，css还没来得及渲染，内容已经出来了，内容散布变形，
 * 等页面加载完成后，页面才恢复正常，所以我们会在这些变形的页面中加display:none，然后最后
 * 才将他们渐现，这样用户体验会好些。
 * 
 * IE8下不支持animo()方法的回调函数。
 * 
 * selection：需要渐现的dom节点的jquery对象或者jquery表达式。
 * duration：动画持续时间，不输入默认为1秒
 * callback:回调函数
 */
baseUtil.fadeIn = function(selection, duration, callback) {
	if (!duration) {
		duration = 1;
	}
	$(selection).show();
	$(selection).animo({
		animation : "fadeIn",
		duration : duration,
		keep : false
	});
	if (callback) {
		setTimeout(callback, duration * 1000);
	}
};

/**
 * 与baseUtil.fadeIn()相反
 */
baseUtil.fadeOut = function(selection, duration, callback) {
	if (!duration) {
		duration = 1;
	}
	$(selection).animo({
		animation : "fadeOut",
		duration : duration,
		keep : false
	});
	setTimeout(function() {
		$(selection).hide();
		if (callback) {
			callback();
		}
	}, duration * 1000);
};

/**
 * 提交表单，并进行Kendo validation验证。
 * win_dom：表单外层将form和提交按钮包裹的一个dom。
 * submitBtn:表单提交按钮的dom或者jquery对象，或者jquery表达式。
 * submitFn：校验通过后的提交方法，比如里面写ajax提交请求到后台某路径。
 */
baseUtil.simpleSubmitForm = function(win_dom, submitBtn, submitFn) {
	$(submitBtn).click(function() {
		if ($(this).is(".k-state-disabled")) {
			return false;
		}
		var form = $(win_dom).find("form");
		baseUtil.notReadOnlyForm(form);
		var form_validator = baseUtil.simpleValidator(form);
		if (!form_validator.validate()) {
			return false;
		}
		if (submitFn) {
			submitFn();
		}
	});
	baseUtil.enterToSubmit(win_dom, submitBtn);
};

/**
 * 判断对象不是空，并且不是"undefined"字符串。
 */
baseUtil.isNoEmpty = function(obj) {
	if (obj && "undefined" != obj) {
		return true;
	}
	return false;
};

/**
 * 与baseUtil.isNoEmpty相反
 */
baseUtil.isEmpty = function(obj) {
	return !baseUtil.isNoEmpty(obj);
};

/**
 * 根据value从items中获取label，items的格式为：
 *  [ {
 *	  label : baseUtil.val("N.normal"),
 *	  value : "0"
 *  }, {
 *	  label : baseUtil.val("N.lock"),
 *	  value : "1"
 *   } ]
 */
baseUtil.getLabel = function(value, items) {
	for ( var i in items) {
		if (items[i]["value"] == value) {
			return items[i]["label"];
		}
	}
	return value;
};

/**
 * 判断字符串中字母的个数
 */
baseUtil.getAlphaCharLength = function(str) {
	var count = 0;
	for (var i = 0; i < str.length; i++) {
		if (str.charCodeAt(i) >= 65 && str.charCodeAt(i) <= 90
				|| str.charCodeAt(i) >= 97 && str.charCodeAt(i) <= 122) {
			count++;
		}
	}
	return count;
};

/**
 * 判断字符串中数字个数
 */
baseUtil.getNumLength = function(str) {
	var count = 0;
	for (var i = 0; i < str.length; i++) {
		if (str.charCodeAt(i) >= 48 && str.charCodeAt(i) <= 57) {
			count++;
		}
	}
	return count;
};

/**
 * 判断字符串中特殊字符个数。
 */
baseUtil.getSpecialCharLength = function(str) {
	var count = 0;
	for (var i = 0; i < str.length; i++) {
		if (str.charCodeAt(i) < 48 || str.charCodeAt(i) > 57
				&& str.charCodeAt(i) < 65 || str.charCodeAt(i) > 90
				&& str.charCodeAt(i) < 97 || str.charCodeAt(i) > 122) {
			count++;
		}
	}
	return count;
};

/**
 * 判断字符串是否包含大小写。
 */
baseUtil.containBigAndSmall = function(str) {
	var big = false;
	var small = false;
	for (var i = 0; i < str.length; i++) {
		if (str.charCodeAt(i) >= 65 && str.charCodeAt(i) <= 90) {
			big = true;
			break;
		}
	}
	for (var i = 0; i < str.length; i++) {
		if (str.charCodeAt(i) >= 97 && str.charCodeAt(i) <= 122) {
			small = true;
			break;
		}
	}
	if (big && small) {
		return true;
	}
	return false;
};

/**
 * 和java字符串的endWith一样。
 * @param s
 * @returns {Boolean}
 */
String.prototype.endWith = function(s) {
	if (!s || !this || s.length > this.length) {
		return false;
	}
	if (this.substring(this.length - s.length) == s) {
		return true;
	} else {
		return false;
	}
};

/**
 * 和java字符串的startWith一样。
 * @param s
 * @returns {Boolean}
 */
String.prototype.startWith = function(s) {
	if (!s || !this || s.length > this.length) {
		return false;
	}
	if (this.substr(0, s.length) == s) {
		return true;
	} else {
		return false;
	}
};

/**
 * 判断字符串是否匹配某个正则表达式。
 * rgx：正则表达式，形式为"\\d*"。
 */
String.prototype.mth = function(rgx) {
	if ("" == this.replace(new RegExp(rgx), "")) {
		return true;
	}
	return false;
};

/**
 * 在表单中用回车键提交。
 * @param areaSelector
 * 在哪个范围下点击回车会触发提交，比如一个页面有多个表单，每个表单都有提交按钮，
 * 我们这里需要指定一个表单范围，或者一个dom节点范围，当光标在这个范围的输入框中，
 * 输入完内容，点击回车，就会触发btnSelector按钮的click事件。
 * @param btnSelector
 * 要触发的按钮，jquery表达式或者jquery对象。
 */
baseUtil.enterToSubmit = function(areaSelector, btnSelector) {
	$(areaSelector).keydown(function(e) {
		var e = e || event, keycode = e.which || e.keyCode;
		if (keycode == 13) {
			$(btnSelector).trigger("click");
		}
	});
};

/**
 * 现在我们存的xxxModifyUser和xxxCreateUser等都是用户id,但是现实给用户看总不能现实用户id吧，
 * 所以我们在列表出来之后，将userId显示成用户的账户名，用异步ajax的方式。为什么不在baseUtil.format()中
 * 将userId还原账户显示，因为baseUtil.format()是在每个单元格显示的时候都调用的，那么如果异步请求，
 * 出现的问题是，fromat方法已经返回内容了，请求还没有反馈，如果是同步请求，效率太慢了。
 * selector:列对应的字段的class的jquery表达式或者jquery对象。
 * 同时，还需要在less中添加以下内容。
 * .xxxModifyUser, .xxxCreateUser {
 *	color:#fff;
 *	&.show {
 *		color:#000;
 *	}
 * }
 */
baseUtil.showAccount = function(selector) {
	$(selector).each(function() {
		var _this = $(this);
		baseUtil.AJpostAsync(ctx + "/baseUserWS/getAccountName", {
			"p_o_userId" : _this.text()
		}, function(data) {
			_this.text(data["name"]);
			_this.attr("title", data["name"]);
			_this.addClass("show");
			baseUtil.fadeIn(_this);
		});
	});
}

/**
 * 当有多选下拉框的时候，很多请求下，如果不选任何选项默认是“所有”，然后下拉框
 * 第一个选项是“无”，然后才是其他选项，那么逻辑应该是选择“无”的时候，选项的值
 * 只会是“N”，不管前面是否选择了其他选项，如果一开始选择“无”，后面选择其他选项的
 * 时候，“无”会被干掉。这个方法就是解决，下拉选项中，“无”和其他选项不能共存的问题。
 * ***第一个选项必须是"所有"，且值是"9999"，第二个选项必须是"无"，且值是"0000"
 * selector:kendo multiselect的query表达式或者对象。
 */
baseUtil.multiselectFn = function(selector) {
	var multiselect = $(selector).data("kendoMultiSelect");
	multiselect.bind("change",
			function(e) {
				var val = this.value();
				if (val.length > 0) {
					if ("0000" == val[val.length - 1]
							|| "9999" == val[val.length - 1]) {
						multiselect.value(val[val.length - 1]);
					} else if ("0000" == val[0] || "9999" == val[0]) {
						val.shift();
						multiselect.value(val);
					}
				}
			});
}

/**
 * 根据后台的密码配置项，获取用户设置密码的密码规则。
 * 密码配置项已经在reference.jsp中获取了，多语言也都放在i18n.jsp中，
 * 所以不需要传参数。
 */
baseUtil.getPasswordLimit = function() {
	var passwordLimit = "";
	passwordLimit = passwordLimit + ", " + baseUtil.val("N.minLength")
			+ passwordMinLength;
	passwordLimit = passwordLimit + ", " + baseUtil.val("N.minAlphaCharLength")
			+ passwordMinAlphaCharLength;
	passwordLimit = passwordLimit + ", "
			+ baseUtil.val("N.minMunberCharLength")
			+ passwordMinMunberCharLength;
	passwordLimit = passwordLimit + ", "
			+ baseUtil.val("N.minSpacialCharLength")
			+ passwordMinSpacialCharLength;
	passwordLimit = passwordLimit + ", "
			+ baseUtil.val("N.constantBigAndSmall");
	passwordLimit = baseUtil.val("N.newPasswordLimit") + ": "
			+ baseUtil.val("E.User.userPassword") + passwordLimit;
	return passwordLimit;
};
