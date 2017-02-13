/**
 * 所有小组件，直接调用js的方式，生成dom，插入目标dom， 返回值是这个组件的jQuery对象，那么你可以操作此对象进行样式修改， 事件绑定等；
 */

window.baseWidget = {};

/**
 * 为某节点添加一个蓝色的button，因为baseWidget.button得到的是灰白色的button，用在列表的toolbar等地方，
 * 而作为网页的button不是很好看，而kendo的默认提交button是蓝色的，所以选中这个button.
 * @param text
 * button的文字
 * @param appentTo
 * button要放在哪个节点上，传该节点的Jquery对象或者表达式。
 * @param iconClass
 * button的fontawesome.
 * @param buttonClass
 * button最外层的class
 * @param buttonId
 * button最外层的id
 */
baseWidget.blueButtonHtml = function(text, appentTo, iconClass, buttonClass,
		buttonId) {
	var html = "<div id='"
			+ buttonId
			+ "' class='k-button k-button-icontext k-primary base-grid-edit-update "
			+ buttonClass
			+ "' href='#' data-role='button' role='button' aria-disabled='false' tabindex='0'>"
			+ "<div class='text'><span class='" + iconClass + "'></span>"
			+ text + "</div></div>";
	$(appentTo).append(html);
};

/**
 * 本来这部分是放在baseWidget.button()方法中的，因为templatePropertiesCRUS.js中需要调用，所以抽取了出来。
 * name:有一部分按钮只是操作按钮，它不需要name，而有一些按钮则是在form表单中的，它里面有value属性，记录着内容
 * 和Input的作用一致，不过它可以作为一个按钮进行点击操作。如TemplateProperties中的一级弹出框的“属性以及配置”，
 * 他是一个按钮，点击它会弹出二级弹出框，同时他也作为一个表单元素，所以它需要name才能作为元素提交。
 * validation:button作为form表单的元素提交时，也是需要验证的，这里传的值是一个字符串，可以从baseUtil.validateAttr()方法中看出来。
 * value：button作为form表单的元素提交时，是获取他的value属性值的，所以也可以传。
 */
baseWidget.buttonHtml = function(id, text, title, buttonClass, iClass, name,
		validation, value) {
	if (!id) {
		id = "";
	}
	if (!title) {
		title = text;
	}
	if (!text) {
		text = "";
	}
	var baseButtonClass = " button button-glow button-plain button-border-thin button-square base-baseWidget ";
	if (!buttonClass) {
		buttonClass = baseButtonClass;
	} else {
		buttonClass = baseButtonClass + buttonClass;
	}
	if (!iClass) {
		iClass = "";
	}
	if (!validation) {
		validation = "";
	}
	if (!value) {
		value = "";
	}
	var nameStr = "";
	if (name) {
		nameStr = "name='" + name + "'";
	}
	return "<button type='button' id='" + id + "' " + nameStr + " title='"
			+ title + "'  class='" + buttonClass + "' " + validation
			+ " value='" + value + "'><i class='" + iClass + "' >" + text
			+ "</i></button>";
};

/**
 * 生成一个简单的button，返回该button的jQuery对象。
 * id:button的id；
 * text：按钮显示文本
 * title:text不一定就是title，比如有的按钮只有icon，它不显示text，但是可以从title中知道该按钮的作用。
 * selection：插入到那个父节点中，传入他的jQuery选择器路径，或者直接传父节点的jQuery对象，
 * 不过selection传空值或null值，则表示没有需要插入的父节点；
 * buttonClass:buttons按钮css库的用法，见http://www.bootcss.com/p/buttons/
 * iClass：fontAwesome的用法，见http://fontawesome.dashgame.com/
 */
baseWidget.button = function(id, text, title, selection, buttonClass, iClass) {
	var b = $(baseWidget.buttonHtml(id, text, title, buttonClass, iClass));
	if (selection) {
		b.appendTo(selection);
	}
	return b;
};

/**
 * 快速生成一个“新增”button，返回该button的jQuery对象
 */
baseWidget.addButton = function(id, text, title, selection, buttonClass) {
	var b = baseWidget.button(id, text, title, selection, "", "fa fa-plus");
	return b;
};

/**
 * 快速生成一个“修改”button，返回该button的jQuery对象
 */
baseWidget.updateButton = function(id, text, title, selection, buttonClass) {
	var b = baseWidget.button(id, text, title, selection, "", "fa fa-pencil");
	return b;
};

/**
 * 快速生成一个“查看”button，返回该button的jQuery对象
 */
baseWidget.viewButton = function(id, text, title, selection, buttonClass) {
	var b = baseWidget.button(id, text, title, selection, "", "fa fa-eye");
	return b;
};

/**
 * 快速生成一个“确定”button，返回该button的jQuery对象
 */
baseWidget.submitButton = function(id, text, title, selection, buttonClass) {
	var b = baseWidget.button(id, text, title, selection, "", "fa fa-check");
	return b;
};

/**
 * 快速生成一个“删除”button，返回该button的jQuery对象
 */
baseWidget.deleteButton = function(id, text, title, selection, buttonClass) {
	var b = baseWidget.button(id, text, title, selection, "", "fa fa-trash-o");
	return b;
};

/**
 * 快速生成一个“取消”button，返回该button的jQuery对象
 */
baseWidget.cancelButton = function(id, text, title, selection, buttonClass) {
	var b = baseWidget.button(id, text, title, selection, "", "fa fa-ban");
	return b;
};

/**
 * 快速生成一个“导出Excel”button，返回该button的jQuery对象
 */
baseWidget.excelExportButton = function(id, text, title, selection, buttonClass) {
	var b = baseWidget.button(id, text, title, selection, "",
			"fa fa-file-excel-o");
	return b;
};

/**
 * 快速生成一个“导出PDF”button，返回该button的jQuery对象
 */
baseWidget.pdfExportButton = function(id, text, title, selection, buttonClass) {
	var b = baseWidget.button(id, text, title, selection, "",
			"fa fa-file-pdf-o");
	return b;
};

/**
 * 插入一个简单的，kendo样式的输入框。
 * id：input框的id，
 * name：input框的name，
 * selection：input框插入目标节点的jquery对象或者表达式。
 * text：input框的初始值
 */
baseWidget.input = function(id, name, selection, text) {
	var i = $("<input id='" + id + "' name='" + name
			+ "' class='k-textbox' type='text' value='" + text + "' />");
	if (selection) {
		i.appendTo(selection);
	}
};

/**
 * 插入一个简单的，kendo样式的textarea输入框。
 * id：textarea框的id，
 * name：textarea框的name，
 * selection：textarea框插入目标节点的jquery对象或者表达式。
 * text：textarea框的初始值
 */
baseWidget.textarea = function(id, name, selection, text) {
	var i = $("<textarea id='" + id + "' name='" + name
			+ "' class='k-textbox' >" + text + "</textarea>");
	if (selection) {
		i.appendTo(selection);
	}
};

/**
 * 返回一个简单的，kendo样式的数字输入框。
 * element:需要变成kendoNumericTextBox的input框的dom或者jquery对象或表达式。
 * id:input框的id，
 * name：input框的name，
 * format:input框内容的格式，参考：http://docs.telerik.com/kendo-ui/framework/globalization/numberformatting，
 * text：input框的初始化参数。
 */
baseWidget.numericInput = function(element, id, name, format, text, width) {
	if (id) {
		$(element).attr("id", id);
	}
	if (name) {
		$(element).attr("name", name);
	}
	if (text) {
		$(element).attr("text", text);
	}
	var _format = "";
	if (format) {
		_format = format;
	}
	var kendoElement = $(element).kendoNumericTextBox({
		format : _format,
		downArrowText : baseUtil.val("N.decrease"),
		upArrowText : baseUtil.val("N.increase")
	}).data("kendoNumericTextBox");
	base.fixUI.fixEditWinNumericInput($(element).attr("id"), width);
	return kendoElement;
};

/**
 * 返回一个简单的，kendo样式的日期输入框。element:需要变成kendoDatePicker的input框的dom或者jquery对象或表达式。
 * id:input框的id，
 * name：input框的name，
 * format:input框内容的格式，参考：http://docs.telerik.com/kendo-ui/framework/globalization/dateformatting，
 * text：input框的初始化参数。
 * width:datePicker输入框的长度
 */
baseWidget.datePicker = function(element, id, name, format, text, width) {
	if (id) {
		$(element).attr("id", id);
	}
	if (name) {
		$(element).attr("name", name);
	}
	if (text) {
		$(element).attr("text", text);
	}
	if (!format) {
		format = "yyyy-MM-dd";
	}
	var kendoElement = $(element).kendoDatePicker({
		format : format,
		culture : baseUtil.val("bgConfig.defaultLocale")
	}).data("kendoDatePicker");
	base.fixUI.fixEditWinDatePicker($(element).attr("id"), width);
	return kendoElement;
};

/**
 * 返回一个简单的，kendo样式的日期时间输入框。
 * element:需要变成kendoDatePicker的input框的dom或者jquery对象或表达式。
 * id:input框的id，name：input框的name，
 * format:input框内容的格式，参考：http://docs.telerik.com/kendo-ui/framework/globalization/dateformatting，
 * 这个格式可以是一半的通用格式，比如yyyy-MM-dd HH:mm，也可以是{0:yyyy-MM-dd HH:mm}的格式，这种是kendo自身定义的
 * 一种format写法。
 * text：input框的初始化参数。
 * width:日期时间输入框的长度
 */
baseWidget.dateTimePicker = function(element, id, name, format, text, width) {
	if (id) {
		$(element).attr("id", id);
	}
	if (name) {
		$(element).attr("name", name);
	}
	if (text) {
		$(element).attr("text", text);
	}
	if (!format) {
		format = "yyyy-MM-dd HH:mm";
	}
	var dateTimePicker = $(element).kendoDateTimePicker({
		format : format,
		interval : 1,
		culture : baseUtil.val("bgConfig.defaultLocale")
	}).data("kendoDateTimePicker");
	base.fixUI.fixEditWinDateTimePicker($(element).attr("id"), width);
	return dateTimePicker;
};

/**
 * 返回一个简单的，kendo样式的checkbox输入框;
 * id:checkbox input框的id。
 * name:checkbox input框的name。
 */
baseWidget.checkbox = function(id, name) {
	if (!validate) {
		validate = "";
	}
	return $("<input class='k-checkbox' type='checkbox' id='"
			+ id
			+ "' name='"
			+ name
			+ "' style='margin-top: 25px'/><label class='k-checkbox-label' for='"
			+ id + "'></label>");
};

/**
 * 得到一个遮罩层元素 layer:层数
 */
baseWidget.overLayer = function(layer) {
	return $("<div class='k-overlay' style='display: block; z-index: " + layer
			+ "; opacity: 0.08;'></div>");
};

/**
 * 构建一个基本的kendo DropDownList，适用于已知一个<input type="text">节点，对这个已知节点进行kendo的dropDownList。
 * element:需要变成kendo DropDownList的input框的dom或者jquery对象或表达式。
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
 * onchange：下拉框的onchange方法。
 * optionLabel:下拉框未展开时的"请选择"提示。
 */
baseWidget.dropDownListByElement = function(element, id, name, url, onchange,
		optionLabel, optionLabelTemplate, template, width) {
	if (id) {
		$(element).attr("id", id);
	}
	if (name) {
		$(element).attr("name", name);
	}
	if (!optionLabelTemplate) {
		optionLabelTemplate = "";
	}
	if (!template) {
		template = "";
	}
	var ds = url;
	if ("string" == typeof url) {
		ds = {
			serverFiltering : true,
			transport : {
				read : {
					url : url,
					dataType : "json",
					type : "post"
				}
			}
		};
	}
	var dropDownList = $(element).kendoDropDownList({
		index : 0,
		dataSource : ds,
		change : onchange,
		dataTextField : "label",
		dataValueField : "value",
		valuePrimitive : true,
		optionLabel : optionLabel,
		optionLabelTemplate : optionLabelTemplate,
		template : template
	}).data("kendoDropDownList");
	base.fixUI.fixEditWinLocalSelect($(element).attr("id"), width);
	return dropDownList;
};

/**
 * 构建一个基本的kendo multiSelect，适用于已知一个<input type="text">节点，对这个已知节点进行kendo的multiSelect。
 * element:需要变成kendo的multiSelect的input框的dom或者jquery对象或表达式。
 * id:多选下拉框的id。
 * name:多选下拉框的name。
 * url：一条请求后台Controller方法的路径，得到多选下拉框的数据，请求后台数据，如"/aaa/bbb/ccc"，返回json字符串，形式:
 * [ {
 *		label : "中国",
 *		value : "CN"
 *	 }, {
 *		label : "美国",
 *		value : "US"
 * } ],
 * 这个url可以是远程数据，也可以是本地数据，本地数据格式如上。
 * onchange：下拉框的onchange方法。
 * optionLabel:下拉框未展开时的"请选择"提示。
 */
baseWidget.multiSelectByElement = function(element, id, name, url, onchange,
		optionLabel, width) {
	if (id) {
		$(element).attr("id", id);
	}
	if (name) {
		$(element).attr("name", name);
	}
	var ds = url;
	if ("string" == typeof url) {
		ds = {
			serverFiltering : true,
			transport : {
				read : {
					url : url,
					dataType : "json",
					type : "post"
				}
			}
		};
	}
	var dropDownList = $(element).kendoMultiSelect({
		dataSource : ds,
		change : onchange,
		dataTextField : "label",
		dataValueField : "value",
		valuePrimitive : true,
		placeholder : optionLabel,
		autoClose : false
	}).data("kendoDropDownList");
	base.fixUI.fixEditWinMultiSelect($(element).attr("id"), width);
	return dropDownList;
};

/**
 * 构建一个简单的kendo colorPicker拾色器控件.
 * element:需要变成kendo colorPicker的input框的dom或者jquery对象或表达式。
 * id:拾色器的id。
 * name:拾色器的name。
 * value:拾色器的初始值。
 * paletteValue:拾色器分全量拾色器（所有颜色都有）和色板（指定几种颜色），
 * 如果这个参数为空，默认是全量的，如果这个参数有值，证明使用色板，那么这个参数可以传"basic":20中默认色块，
 * "websafe"：网络安全色，和自己指定的颜色，自己指定颜色方式可以是[ "#000", "#333" ]，
 * 也可以是"#000,#333"。
 */
baseWidget.colorPickerByElement = function(element, id, name, value,
		paletteValue) {
	if (id) {
		$(element).attr("id", id);
	}
	if (name) {
		$(element).attr("name", name);
	}
	if (!value) {
		value = "#ffffff";
	}
	$(element).kendoColorPicker({
		value : value,
		buttons : false,
		palette : paletteValue,
		columns : 4,
		tileSize : {
			width : 34,
			height : 19
		}
	});
	base.fixUI.fixColorPicker($(element).attr("id"));
};

/**
 * 简单的初始化kendo ToolTop。selection:要进行kendo tool tips的元素的jquery对象或表达式。
 * 
 * 注意，之前我们是为该元素加上title，因为tips显示的内容就是title的内容，
 * 但是，如果title是动态赋值的，也就是在kendoTooltip()方法调用之后赋值的，不能赋值给title，因为kendo tool
 * tips在展示之前会将元素的title属性干掉，目的是防止原始的title显示。所以动态赋值的时候，我们会自定义一个kendo_title属性，
 * 
 * 那么结论就是，如果不使用tips，则给元素加title属性，如果使用tips，
 * 则给元素赋值kendo_title属性，tips在展示之前都会读取这个属性的内容做显示。
 * 但是如果给input输入框加tips，不需要kendo_title属性，默认会读取input框的value属性做展示。
 * 所以input框一般会给它加上class="kendo_title"，这个class只不过是为了jquery定位取得这个input元素。
 * !!!另外，不要用元素的kendo_title属性(即jquery选择器[kendo_title])来定位元素，因为举个例子，列表的
 * 单元格外层是div，tips会读取div的kendo_title属性值做为tips content，所以他们是有kendo_title属性的，
 * 而如果单元格中个性化换成一个图标，移动到图标中，也出现tips，但是这种tips和div的tips不同之处在于，图标
 * 出现的tips会有“×”按钮手动关闭，所以两种tips调用baseWidget.tips()方法时传的autoHide参数是不一样的，
 * 但是图标也依然将tips content的内容放到kendo_title中，baseWidget.tips方法中，如果不是input输入框元素，
 * 都只会读取kendo_titile的内容作为tips contend，所以如果都以[kendo_title]来定位元素，那么列表的div加tips
 * 的时候就会扫到个性化的图标的元素，这样就变成为列表div加tips中给图标加了一次tips，后面个性化的时候用图标
 * id为图标加tips的时候又给图标加了一次tips，那么结果是移动到图标的时候，出现两种tips，一种是有"×"，一种是没有
 * "×"的，为了避免这种情况，我们不要用[kendo_title]来定位元素，而是用".kendo_title"或者其他class呀，id定位
 * 都可以，就是为了避免同一个元素加了两次tips。
 * 
 * 这个方法只能在初始化方法的时候调用，反正原则是同一个元素只能调用kendoTooltip()方法一次，不能反复调用，会影响页面效率。
 * kendo tool tips需要元素有id!因为TARGETID就是获取元素的id.
 * position:tips出现的方位，可选项为"bottom", "top", "left", "right", "center"，默认left，
 * autoHide：默认是true，也就是鼠标离开触发物，tips即消失，如果是false，则tips右上角会出现“×”，不会自动隐藏。
 */
baseWidget.tips = function(selection, position, autoHide) {
	if (false != autoHide) {
		autoHide = true;
	}
	if (!position) {
		position = "left";
	}
	return $(selection)
			.kendoTooltip(
					{
						autoHide : autoHide,
						showAfter : 1000,
						position : position,
						show : function() {
							var toolTipsDiv = $("[role='tooltip'][id='"
									+ TARGETID + "_tt_active']");
							$(
									"[role='tooltip']:not([id='" + TARGETID
											+ "_tt_active'])").parent().hide();
							var toolTipsContent = "";
							if ($("#" + TARGETID).is(".k-input")) {
								toolTipsContent = $("#" + TARGETID).val()
										|| $("#" + TARGETID).text();
							} else {
								toolTipsContent = $("#" + TARGETID).attr(
										"kendo_title");
							}
							if ("colorPalette" == $("#" + TARGETID).attr(
									"kendo_title_type")) {
								toolTipsDiv.find(".k-tooltip-content").html(
										"<div class='palette'></div>");
								toolTipsDiv.find(".k-tooltip-content").find(
										".palette").kendoColorPalette({
									columns : 4,
									tileSize : {
										width : 34,
										height : 19
									},
									palette : toolTipsContent.split(",")
								});
							} else {
								toolTipsDiv.find(".k-tooltip-content").text(
										toolTipsContent);
							}
						},
						animation : {
							open : {
								effects : "fade:in",
								duration : 500
							}
						}
					}).data("kendoTooltip");
};

/**
 * 初始化一个简单的kendow autoComplete控件，
 * element:进行autoComplete的input框的dom或者jquery对象或者表达式，此input框必须含有id，因为需要靠这个id不断获取input框的值。
 * fieldName:返回的内容是一个对象数组形式的json，那么你要对对象的哪个属性进行autoComplete就选哪个属性名。
 * dataUrl：一条请求后台Controller方法的路径，得到多选下拉框的数据，请求后台数据，如"/aaa/bbb/ccc"，返回json字符串，形式:
 * [ {
 *		fieldName : "中国",
 *	 }, {
 *		fieldName : "美国",
 * } ],
 * 这个url可以是远程数据，也可以是本地数据，本地数据格式如上。
 * separator:分隔符，每当输入中数显这个分隔符，都会触发autocomplate
 * （其实这个参数没有必要，已经废除，使用分隔符的主要意义是我们可以在一个
 * autoComplete输入框中，分别显示多个值，最直观的例子是qq邮箱，我们填写
 * 接收人的时候，输入10350，提示1035097367@qq.com，我们选中这个地址后，
 * 在后面输入","，然后后面再输入1992，提示199233991@qq.com，提示
 * 已经和","前面的内容没有关系了，只和最靠近末尾的","右边的内容有关系。
 * 其实这种逻辑我们在后台就可以实现，不需要前端实现。
 */
baseWidget.autoComplete = function(element, fieldName, dataUrl) {
	var ds = dataUrl;
	if ("string" == typeof dataUrl) {
		ds = new kendo.data.DataSource({
			serverFiltering : true,
			transport : {
				read : {
					url : dataUrl,
					dataType : "json",
					type : "post",
					data : function() {
						return {
							"item" : $(element).val()
						};
					}
				}
			},
			schema : {
				data : function(response) {
					return response.results;
				}
			}
		});
	}
	return $(element).kendoAutoComplete({
		dataSource : ds,
		dataTextField : fieldName
	}).data("kendoAutoComplete");
};

/**
 * 构建一个基本的kendo treeView，适用于已知一个<div/>节点，对这个已知节点进行kendo的treeView。
 * element:需要变成kendo treeView的div的dom或者jquery对象或表达式。
 * id:treeView的id。
 * name:treeView的name。
 * url：一条请求后台Controller方法的路径，得到treeView的数据，请求后台数据，返回json字符串，形式:
 * [ {
 *		hasChildren : true, --->该树节点是否还有子节点
 *		dataTextField : "CN", ---->节点显示值
 *		p_o_permissionTargetName : "210675721404417c1556cd5c81342b4a224235c83b46bb9",
 *		---->设个属性的名字其实表示节点的id，但它不一定叫id，它是用于展开节点时传到后台的属性名，那么你后台怎么取值方便，它就叫什么，在下面的nodeIdFieldName中指定这个属性的名字。
 *		checked : "checked",  ---->如果方法的checkbox参数是true，那么这个值决定该checkbox是否选中，值为"checked表示选中，默认空值表示不选中。
 *		disabled : "disabled"  ---->如果方法的checkbox参数是true，那么这个值决定该checkbox是否disabled，值为"disabled表示不可选，默认空值表示可选。
 *	 }, {
 *		.
 *      .
 *      .
 * } ]
 * 这个url可以是远程数据，也可以是本地数据，本地数据格式如上。
 * nodeIdFieldName:指定treeView数据中代表节点id的属性的名字。
 * checkbox:true或false，决定该树是否有checkbox进行节点选择。
 */
baseWidget.treeViewByElement = function(element, id, name, url,
		nodeIdFieldName, checkbox) {
	if (id) {
		$(element).attr("id", id);
	}
	if (name) {
		$(element).attr("name", name);
	}
	var ds = baseWidget.treeDataSource(url, nodeIdFieldName);
	if (true === checkbox) {
		checkbox = {
			//item表示一个节点的数据对象，可以直接取值。
			template : "<input type='checkbox' class='k-checkbox' id='#=item."
					+ nodeIdFieldName
					+ "#' #=item.checked# #=item.disabled# /><label class='k-checkbox-label' for='#=item."
					+ nodeIdFieldName + "#'></label>"
		};
	} else {
		checkbox = false;
	}
	return $(element).kendoTreeView({
		checkboxes : checkbox,
		dataTextField : "dataTextField",
		dataSource : ds
	}).data("kendoTreeView");
};

/**
 * 构建一个kendo treeView用的dataSource.
 * url：一条请求后台Controller方法的路径，得到treeView的数据，请求后台数据，返回json字符串，形式:
 * [ {
 *		hasChildren : true, --->该树节点是否还有子节点
 *		dataTextField : "CN", ---->节点显示值
 *		p_o_permissionTargetName : "210675721404417c1556cd5c81342b4a224235c83b46bb9",
 *		---->设个属性的名字其实表示节点的id，但它不一定叫id，它是用于展开节点时传到后台的属性名，那么你后台怎么取值方便，它就叫什么，在下面的nodeIdFieldName中指定这个属性的名字。
 *		checked : "checked",  ---->如果方法的checkbox参数是true，那么这个值决定该checkbox是否选中，值为"checked表示选中，默认空值表示不选中。
 *		disabled : "disabled"  ---->如果方法的checkbox参数是true，那么这个值决定该checkbox是否disabled，值为"disabled表示不可选，默认空值表示可选。
 *	 }, {
 *		.
 *      .
 *      .
 * } ]
 * 这个url可以是远程数据，也可以是本地数据，本地数据格式如上。
 * nodeIdFieldName:指定treeView数据中代表节点id的属性的名字。
 * data:如果url为路径，有时需要传一些额外的参数，那么从data参数中传，可以传一个对象，
 * 也可以传一个方法，方法里面返回一个对象即可。
 */
baseWidget.treeDataSource = function(url, nodeIdFieldName, data) {
	if (!data) {
		data = {};
	}
	var ds = new kendo.data.HierarchicalDataSource({
		data : url,
		schema : {
			model : {
				id : nodeIdFieldName,
				hasChildren : "hasChildren"
			}
		}
	});
	if ("string" == typeof url) {
		ds = new kendo.data.HierarchicalDataSource({
			transport : {
				read : {
					url : url,
					dataType : "json",
					type : "post",
					data : data
				}
			},
			schema : {
				model : {
					id : nodeIdFieldName,
					hasChildren : "hasChildren"
				},
				data : function(response) {
					if (response["e"]) {
						baseUtil.getError(response["e"]);
						return [];
					} else {
						return response;
					}
				}
			}
		});
	}
	return ds;
};

/**
 * 将临时选中的树节点还原（比如当点击角色树的确定按钮，数据未最终提交到数据库，那么
 * 此时记录的角色数据为临时数据，用户从新点开角色按钮，展现角色树时将临时数据
 * 还原），也就是根据"id1,id2,id3"将树节点的对应id的节点选中，还原"确定"时的状态。
 * selecttion:要对那个dom下的树节点进行还原，dom对象或者jquery表达式或者jquery对象。
 * ids：对应数节点的checkbox的id，只要checkbox的id和ids中的其中一个id相符，该checkbox就
 * 选中，形式"id1,id2,id3"。
 * onlyCheckNotDisabled:传true为只选中不是disabled的checkbox，传其他此条件不限。因为有一种情况是，
 * 比如比如用户模块选择部门会关联出该部门下的角色，那么用户选择了角色，后面又改变了部门，而之前选中的
 * 角色已经不在当前修改后的部门下面了，那么之前选中的非该部门下的角色就会变disabled，这种角色不会进行还原显示。
 */
baseWidget.restoreTreeCheck = function(selecttion, ids, onlyCheckNotDisabled) {
	if (ids) {
		var tempCheckIds = ids.split(",");
		for ( var i in tempCheckIds) {
			var tempCheck = $(selecttion).find("#" + tempCheckIds[i]);
			if (true == onlyCheckNotDisabled) {
				if (tempCheck.length > 0 && !tempCheck[0].disabled) {
					tempCheck[0].checked = true;
				}
			} else {
				if (tempCheck.length > 0) {
					tempCheck[0].checked = true;
				}
			}
		}
	}
};

/**
 * 展开所有的树节点，kendo本身已经提供了treeView的expend()方法，用于展开树节点，而且expend(".k-item")的作用就是展开所有树节点，
 * 但是，现在我们的树不是一次性load回来的，而是逐级展开，那么使用expend(".k-item")并不能展开所有节点，因为后期load的节点还没有展开，
 * 并没有".k-item"。所以这里的思路是递归判断树中是否还有">"箭头，有的话，就发送请求将其展开。
 * 在展开的同时，如果是更新或者查看，我们会将当前节点以及其直系子孙节点的checkbox全部为disabled，因为选择父节点的时候，我们是不能
 * 选择当前节点以及当前节点的直系子孙节点作为父节点的，这一点是共识。另外，我们还会将之前选定的父节点还原回去。
 * tree_parent_dom：整棵树的上级节点的jquery对象。
 * treeView_kendo_data：树的kendo data对象，也就是$("#树id").data("kendoTreeView")
 * parentIds:被还原的当前节点的父节点的id。可空，则不还原。形式"id1,id2,id3"，或者"id1"。
 * onlyCheckNotDisabled：见baseWidget.restoreTreeCheck()方法的onlyCheckNotDisabled参数。
 * onclickCheckbox:如果树节点有checkbox，也就是baseWidget.treeViewByElement的checkbox参数为true，那么点击checkbox的时候调用该方法。
 * checkChildren:true或false，如果树节点有checkbox，
 * 那么这个参数决定点击父节点的checkbox，子节点的checkbox是否也被选定，
 * 一般情况下是需要这样的，但是有的时候，比如我只能选中树中的一个节点，
 * 那么就必须是我点中哪个节点就是哪个节点，不能再有连带选择。
 */
baseWidget.expendAllTreeNodesAndCheckParent = function(tree_parent_dom,
		treeView_kendo_data, parentIds, onlyCheckNotDisabled, onclickCheckbox,
		checkChildren) {
	setTimeout(function() {
		var haveNotExpendNodes = tree_parent_dom.find(".k-plus");
		if (haveNotExpendNodes.length > 0) {
			//思路是，纵向的一整层只要找到未展开的节点，挨个先展开，直到纵向的所有层都没有未展开的节点，
			//也就是到了最后一层，必然全部都是叶子节点。那么跑下面的else
			haveNotExpendNodes.each(function() {
				treeView_kendo_data.expand($(this).closest("li"));
			});
			baseWidget.expendAllTreeNodesAndCheckParent(tree_parent_dom,
					treeView_kendo_data, parentIds, onlyCheckNotDisabled,
					onclickCheckbox, checkChildren);
		} else {
			//跑到这里，表明树已经没有可展开的节点，必然是整棵树展开的结束标志，这个时候我们再做最后一件事，
			//1.如果是修改查看操作，将当前节点以及其子节点变成disabled。因为选择父节点的时候，我们是不能
			//选择当前节点以及当前节点的直系子孙节点作为父节点的，这一点是共识。（仅当选择父节点的时候）
			//2.不管什么操作，都还原原来选定的节点。
			if ("save" != ACTION) {
				tree_parent_dom.find("#" + updateTargetId).closest("li").find(
						".k-checkbox").attr("disabled", "disabled");
			}
			baseWidget.restoreTreeCheck(tree_parent_dom, parentIds,
					onlyCheckNotDisabled);
			tree_parent_dom.find(".k-checkbox[type=checkbox]").unbind("click")
					.bind(
							"click",
							function(e) {
								if (true === checkChildren) {
									if (this.checked) {
										$(this).closest("li").find(
												".k-checkbox").each(function() {
											this.checked = true;
										});
									} else {
										$(this).closest("li").find(
												".k-checkbox").each(function() {
											this.checked = false;
										});
									}
								}
								if (onclickCheckbox) {
									onclickCheckbox(this);
								}
							});
		}
	}, 200);
};

/**
 * 每棵树下面都会有一个"收起全部"的按钮。
 */
baseWidget.treeAllCollapseButtonHtml = "<div title='"
		+ baseUtil.val("N.allCollapse")
		+ "' class='k-button k-button-icontext base-grid-edit-collapse'"
		+ " style='height:32.7px;float: left;' href='#'>"
		+ "<div class='fa fa-angle-double-right fa-lg' style='margin-top: -3px;'></div></div>";

/**
 * 每棵树下面都会有一个"展开全部"的按钮。
 */
baseWidget.treeAllExpandButtonHtml = "<div title='"
		+ baseUtil.val("N.allExpand")
		+ "' class='k-button k-button-icontext base-grid-edit-expand' "
		+ " style='height:32.7px;float: left;' href='#'>"
		+ "<div class='fa fa-angle-double-down fa-lg' style='margin-top: -3px;'></div></div>";

/**
 * 添加截图控件，包括图片上传，图片截取。比如自定义头像等。
 * uploadId：上传控件的id，用于区分上传控件产生的一些全局变量。必填。
 * parentSelector：截图控件将镶嵌于哪个节点中，传jquery表达式或者对象。必填。
 * previewContainers:必填。用于生成预览窗口的数量以及尺寸，因为一个截图控件可能会有多个预览窗口，
 * 所以通过这个参数生成预览窗口。格式：
 * [{
 * 	height:100,
 *  width:100
 * },
 * {
 * 	height:80,
 * 	width:80
 * }]
 * 表示生成两个预览窗口，分别是100px*100px和80px*80px;
 * 结果获取：
 * baseUtil.JF(window["currentUploadIds"+uploadId]);
 * 获取截图原始图片的上传id。
 * baseUtil.JF(window["imageCutResult"+uploadId]);
 * 获取截图的尺寸属性。
 */
baseWidget.imageCut = function(uploadId, parentSelector, previewContainers) {
	//系统当前规定截图的基底尺寸为宽480，高320.
	var imageMaxHeight = 320;
	var imageMaxWidth = 480;
	baseUtil.template("uploadTemplate", {
		"id" : uploadId
	}, parentSelector);
	var pcHtml = "";
	for ( var i in previewContainers) {
		pcHtml += "<div class='preview-pane preview-pane"
				+ i
				+ "' style='height: "
				+ previewContainers[i].height
				+ "px;width: "
				+ previewContainers[i].width
				+ "px;'><div class='preview-container preview-container"
				+ i
				+ "' style='height: "
				+ previewContainers[i].height
				+ "px;width: "
				+ previewContainers[i].width
				+ "px;'>"
				+ "<img class='jcrop-preview' src='#' alt=''></img></div></div>";
	}
	parentSelector
			.append("<fieldset class='headImg-cut-div-fs'><legend>"
					+ baseUtil.val("N.uploadAndCut")
					+ "</legend>"
					+ "<div class='headImg-cut-div'><span class='fa fa-spinner fa-pulse'></span>"
					+ "<img class='headImg-cut' src='#' alt=''></img>"
					+ "<fieldset class='preview-pane-fs'><legend>"
					+ baseUtil.val("N.preview")
					+ "</legend>"
					+ pcHtml
					+ "</div></fieldset></fieldset>"
					+ "<div class='headImg-cut-warm'><span class='fa fa-exclamation-circle'>"
					+ "</span><span class='warm-text'>"
					+ baseUtil.val("E.imageTypeOnly")
					+ "</span><div class='base-refresh-div'></span><span class='base-refresh'>"
					+ baseUtil.val("N.refresh")
					+ "</span><span class='fa fa-refresh'></span></div></div>");
	window["jcrop_api" + uploadId];
	window["upload_kendo" + uploadId];
	var boundx;
	var boundy;
	for ( var i in previewContainers) {
		window["$preview" + i] = parentSelector.find('.preview-pane' + i);
		window["$pcnt" + i] = window["$preview" + i].find('.preview-container'
				+ i);
		window["$pimg" + i] = window["$pcnt" + i].find('img');
		window["xsize" + i] = window["$pcnt" + i].width();
		window["ysize" + i] = window["$pcnt" + i].height();
	}
	window["upload_kendo" + uploadId] = base.upload.init(uploadId, function() {
		$("#uploadDiv" + uploadId).find(".k-upload-button").hide();
		parentSelector.find(".fa-pulse").show();
		var uploadImageId = window["currentUploadIds" + uploadId][0];
		if (!uploadImageId || "undefined" == uploadImageId) {
			return false;
		}
		parentSelector.find(".headImg-cut, .jcrop-preview").attr(
				"src",
				ctx + "/baseUploadWS/UploadReadService/findOne?p_o_uploadId="
						+ uploadImageId);
		parentSelector.find(".headImg-cut")[0].onload = function() {
			var imageOriginHeight = $(this).height();
			var imageOriginWidth = $(this).width();
			var imageFinalHeight = 0;
			var imageFinalWidth = 0;
			imageFinalWidth = imageMaxWidth;
			imageFinalHeight = Math.round(imageMaxWidth / imageOriginWidth
					* imageOriginHeight);
			if (imageFinalHeight > imageMaxHeight) {
				imageFinalHeight = imageMaxHeight;
				imageFinalWidth = Math.round(imageMaxHeight / imageOriginHeight
						* imageOriginWidth);
			}
			parentSelector.find(".headImg-cut-div img").css({
				width : imageFinalWidth,
				height : imageFinalHeight
			});
			parentSelector.find(".fa-pulse").hide();
			parentSelector.find(".headImg-cut-div img").show();
			parentSelector.find(".headImg-cut-div img").css("visibility",
					"visible");
			window["upload_kendo" + uploadId].disable();
			parentSelector.find('.headImg-cut').Jcrop({
				onChange : updatePreview,
				onSelect : updatePreview,
				aspectRatio : 1 / 1,
				bgFade : true
			}, function() {
				var bounds = this.getBounds();
				boundx = bounds[0];
				boundy = bounds[1];
				window["jcrop_api" + uploadId] = this;
				window["jcrop_api" + uploadId].animateTo([ 10, 10, 110, 110 ]);
				parentSelector.find(".jcrop-keymgr").remove();
			});
		};
		function updatePreview(c) {
			window["imageCutResult" + uploadId] = c;
			if (parseInt(c.w) > 0) {
				for ( var i in previewContainers) {
					var rx = window["xsize" + i] / c.w;
					var ry = window["ysize" + i] / c.h;
					window["$pimg" + i].css({
						width : Math.round(rx * boundx) + 'px',
						height : Math.round(ry * boundy) + 'px',
						marginLeft : '-' + Math.round(rx * c.x) + 'px',
						marginTop : '-' + Math.round(ry * c.y) + 'px'
					});
				}
			}
		}
		return false;
	}, null, ".\*\\.png|.\*\\.jpeg|.\*\\.jpg|.\*\\.gif", 5120, null,
			function() {
				return false;
			}, function() {
				//只有在原生IE9浏览器中起效
				if (baseUtil.isIE9()) {
					$("#uploadDiv" + uploadId).find(".k-upload-button").css({
						"margin-top" : "60px",
						"margin-left" : "66px",
						"z-index" : "1000"
					});
					$("#uploadDiv" + uploadId).find(".k-upload-button span")
							.text(baseUtil.val("N.selectFiles") + "...");
				}
			});
	window["upload_kendo" + uploadId].setOptions({
		multiple : false
	});
	parentSelector.find(".headImg-cut-warm .base-refresh-div").bind("click",
			function() {
				baseWidget.refreshImageCut(parentSelector, uploadId);
			});
};
/**
 * 刷新截图控件，当窗口每次打开的时候，或者点击控件的“刷新”的时候，都会调用这个方法，
 * 它的意思是，页面刚刷新的时候，我们的代码会初始化截图控件，调用这个方法是让控件
 * 回归到初始化状态。
 * uploadId：上传控件的id，用于区分上传控件产生的一些全局变量。必填。
 * parentSelector：截图控件将镶嵌于哪个节点中，传jquery表达式或者对象。必填。
 */
baseWidget.refreshImageCut = function(parentSelector, uploadId) {
	window["upload_kendo" + uploadId].enable();
	$("#uploadDiv" + uploadId).find(".k-upload-button").show();
	window["imageCutResult" + uploadId] = "";
	if (window["jcrop_api" + uploadId]
			&& "undefined" != window["jcrop_api" + uploadId]) {
		window["jcrop_api" + uploadId].destroy();
	}
	parentSelector.find(".headImg-cut-div img").attr({
		"src" : "#",
		"style" : ""
	});
	base.editWin.cleanUploadData(parentSelector);
	parentSelector.find(".base-refresh-div .fa-refresh").addClass("fa-spinner");
	setTimeout(function() {
		parentSelector.find(".base-refresh-div .fa-refresh").removeClass(
				"fa-spinner");
	}, 300);
};
/**
 * 将头像的数据复制给某个image标签。意思是，当用户没有指定头像的时候，系统会有一张默认图片。
 * 当用户上传头像后，默认头像会被替换成用户上传的头像。
 * selection:给哪个img标签指定头像图片，传jquery对象或者表达式。
 * headImageJson:头像数据，json字符串，格式：
 * {"uploadId":["7043033548840810ad66c1045f54403a3164ccab9538a80"],"imageCutData":{"x":116,"y":40,"x2":360,"y2":284,"w":244,"h":244}}
 */
baseWidget.giveHeadImg = function(selection, headImageJson) {
	if (baseUtil.isEmpty(headImageJson)) {
		return;
	}
	var userHeadImg = baseUtil.json(headImageJson);
	var url = ctx + "/baseUploadWS/findAndCutImage?p_o_uploadId="
			+ userHeadImg["uploadId"] + "&x="
			+ userHeadImg["imageCutData"]["x"] + "&y="
			+ userHeadImg["imageCutData"]["y"] + "&w="
			+ userHeadImg["imageCutData"]["w"] + "&h="
			+ userHeadImg["imageCutData"]["h"];
	$("#baseAccountContent .base-login-logo").attr("src", url);
	$(selection).attr("src", url);
};

/**
 * 一般用作网页左边的楼层导航。
 * selector：导航楼层，传它的jquery对象或者表达式，楼层的结构一般是<ul><li></li><li></li></ul>，传ul的jquery对象即可。
 * speed：楼层滚动到达的速度，单位毫秒，默认为1000
 */
baseWidget.scrollMenu = function(selector, speed) {
	if (!speed) {
		speed = 1000;
	}
	$(selector).onePageNav({
		easing : "easeInOutQuint",
		scrollSpeed : speed
	});
	$(selector).sticky();
};

/**
 * 构建一个基础的kendo editor文本编辑框。
 * selection：一个textArea的jquery对象或者表达式。
 */
baseWidget.editor = function(selection) {
	$(selection).kendoEditor(
			{
				resizable : false,
				tools : [ "bold", "italic", "underline", "strikethrough",
						"justifyLeft", "justifyCenter", "justifyRight",
						"justifyFull", "insertUnorderedList",
						"insertOrderedList", "indent", "outdent", "createLink",
						"unlink", "insertImage", "insertFile", "subscript",
						"superscript", "createTable", "addRowAbove",
						"addRowBelow", "addColumnLeft", "addColumnRight",
						"deleteRow", "deleteColumn", "viewHtml", "formatting",
						"cleanFormatting", "fontName", "fontSize", "foreColor",
						"backColor", "print" ],
				messages : {
					bold : baseUtil.val("N.editor.bold"),
					italic : baseUtil.val("N.editor.italic"),
					underline : baseUtil.val("N.editor.underline"),
					strikethrough : baseUtil.val("N.editor.strikethrough"),
					superscript : baseUtil.val("N.editor.superscript"),
					subscript : baseUtil.val("N.editor.subscript"),
					justifyCenter : baseUtil.val("N.editor.justifyCenter"),
					justifyLeft : baseUtil.val("N.editor.justifyLeft"),
					justifyRight : baseUtil.val("N.editor.justifyRight"),
					justifyFull : baseUtil.val("N.editor.justifyFull"),
					insertUnorderedList : baseUtil
							.val("N.editor.insertUnorderedList"),
					insertOrderedList : baseUtil
							.val("N.editor.insertOrderedList"),
					indent : baseUtil.val("N.editor.indent"),
					outdent : baseUtil.val("N.editor.outdent"),
					createLink : baseUtil.val("N.editor.createLink"),
					unlink : baseUtil.val("N.editor.unlink"),
					insertImage : baseUtil.val("N.editor.insertImage"),
					insertFile : baseUtil.val("N.editor.insertFile"),
					insertHtml : baseUtil.val("N.editor.insertHtml"),
					fontName : baseUtil.val("N.editor.fontName"),
					fontNameInherit : baseUtil.val("N.editor.fontNameInherit"),
					fontSize : baseUtil.val("N.editor.fontSize"),
					fontSizeInherit : baseUtil.val("N.editor.fontSizeInherit"),
					formatBlock : baseUtil.val("N.editor.formatBlock"),
					formatting : baseUtil.val("N.editor.formatting"),
					style : baseUtil.val("N.editor.style"),
					viewHtml : baseUtil.val("N.editor.viewHtml"),
					overwriteFile : baseUtil.val("N.editor.overwriteFile"),
					imageWebAddress : baseUtil.val("N.editor.imageWebAddress"),
					imageAltText : baseUtil.val("N.editor.imageAltText"),
					fileWebAddress : baseUtil.val("N.editor.fileWebAddress"),
					fileTitle : baseUtil.val("N.editor.fileTitle"),
					linkWebAddress : baseUtil.val("N.editor.linkWebAddress"),
					linkText : baseUtil.val("N.editor.linkText"),
					linkToolTip : baseUtil.val("N.editor.linkToolTip"),
					linkOpenInNewWindow : baseUtil
							.val("N.editor.linkOpenInNewWindow"),
					dialogInsert : baseUtil.val("N.editor.dialogInsert"),
					dialogUpdate : baseUtil.val("N.editor.dialogUpdate"),
					dialogCancel : baseUtil.val("N.editor.dialogCancel"),
					createTable : baseUtil.val("N.editor.createTable"),
					addColumnLeft : baseUtil.val("N.editor.addColumnLeft"),
					addColumnRight : baseUtil.val("N.editor.addColumnRight"),
					addRowAbove : baseUtil.val("N.editor.addRowAbove"),
					addRowBelow : baseUtil.val("N.editor.addRowBelow"),
					deleteRow : baseUtil.val("N.editor.deleteRow"),
					deleteColumn : baseUtil.val("N.editor.deleteColumn"),
					imageWidth : baseUtil.val("N.editor.imageWidth"),
					imageHeight : baseUtil.val("N.editor.imageHeight"),
					cleanFormatting : baseUtil.val("N.editor.cleanFormatting"),
					print : baseUtil.val("N.editor.print"),
					backColor : baseUtil.val("N.editor.backColor"),
					foreColor : baseUtil.val("N.editor.foreColor")
				}
			});
};
