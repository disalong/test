$(function() {
	$("title").text(baseUtil.val("B.TemplateProperties"));
	/**
	 * 主列表初始化
	 */
	var divId = "templatePropertiesCRUDGrid";
	var gridReadUrl = ctx + "/baseCodeGeneratorWS/TemplateProperties";
	var extendDataFirstBound = function() {
		window.edit_win1_dom = window["templateProperties_edit_win1_dom"];
		window.edit_win1_kendo = window["templateProperties_edit_win1_kendo"];
		window.edit_win1_form = edit_win1_dom.find("form");
		edit_win1_form.find("#templatePropertiesTargetFieldProperties")
				.closest(".k-edit-field").hide();
		edit_win1_form.find(
				"label[for='templatePropertiesTargetFieldProperties']")
				.closest(".k-edit-label").hide();
		clickTemplatePropertiesTargetFieldsToShowEditWin2();
		baseUtil.multiselectFn("#templatePropertiesCrudItems");
		baseUtil.multiselectFn("#templatePropertiesStatisticsItems");
		baseUtil.multiselectFn("#templatePropertiesInportItems");
		baseUtil.multiselectFn("#templatePropertiesExportItems");
	};
	var extendDataEachBound = function() {

	};
	window.templatePropertiesCRUDGrid = base.grid.init(divId, gridReadUrl,
			extendDataFirstBound, extendDataEachBound);
	/**
	 * 列表工具栏中添加一个“代码生成按钮”
	 */
	var codeGenerateTitle = baseUtil.val("N.codeGenerate");
	var codeGenerateButton = baseWidget
			.button(smallTarget + "_codeGenerator", "", codeGenerateTitle,
					toolbar, "", "fa fa-bolt", "margin-left:5px");
	/**
	 * 点击“代码生成”按钮
	 */
	codeGenerateButton
			.click(function() {
				if (1 != $(".checkOne:checked").length) {
					baseUtil.alertE(baseUtil.val("E.selectOneToCodeGenerate"));
					return false;
				} else {
					location.href = ctx
							+ "/baseCodeGeneratorWS/CodeGeneratorWriteService/codeGenetate?p_o_templatePropertiesId="
							+ $(".checkOne:checked").attr("recordId");
				}
			});

	/**
	 * 二级弹出式编辑框
	 */
	base.editWin.init(divId, 2, "templateProperties",
			$("<div id='templateProperties_edit_win2_grid'></div>"),
			function() {
				var fieldName = edit_win2_dom.find(".fieldName");
				var fieldComment = edit_win2_dom.find(".fieldComment");
				var fieldProperties = edit_win2_dom.find(".fieldProperties");
				var targetFields = {};
				var targetFieldProperties = {};
				fieldName.each(function(i) {
					targetFields[$(this).val()] = $(fieldComment[i]).val();
				});
				fieldName.each(function(i) {
					targetFieldProperties[$(this).val()] = baseUtil.json($(
							fieldProperties[i]).val());
				});
				edit_win1_form.find("#templatePropertiesTargetFields").val(
						JSON.stringify(targetFields));
				edit_win1_form.find("#templatePropertiesTargetFieldProperties")
						.val(JSON.stringify(targetFieldProperties));
				edit_win1_dom.find("#templatePropertiesTargetFields").trigger(
						"blur");
			}, null, null, 600);
	/**
	 * 这四个变量基本初始化弹出框之后都要获取，不管用不用
	 */
	window.edit_win2_kendo = window["templateProperties_edit_win2_kendo"];
	window.edit_win2_dom = window["templateProperties_edit_win2_dom"];
	window.edit_win2_form = edit_win2_dom.find("form");
	window.edit_win2_form_validator = window["templateProperties_edit_win2_form_validator"];

	/**
	 * 二级弹出框列表
	 */
	var deleteButtton = baseWidget.buttonHtml("deleteTargetFieldPropertiesRow",
			"", baseUtil.val("N.delete"), "deleteFieldButtonDiv",
			"fa fa-trash-o");
	/**
	 * 二级弹出框“新增”时的初始数据。
	 */
	var edit_win2_grid_data = [
			{
				"deleteFieldButton" : deleteButtton,
				"fieldName" : "Id",
				"fieldComment" : baseUtil.val("B.id"),
				"fieldProperties" : "{\"required\":true,\"editable\":false,\"tips\":true,\"hide\":true,\"search\":false,\"attachment\":false,\"attachment_extendData\":{\"attachmentType\":[]},\"colour\":\"\",\"type\":\"string\",\"length\":\"200\",\"format\":\"\",\"pattern\":\"\",\"fieldLabel\":\"\",\"validationMessage\":\"\"}"
			},
			{
				"deleteFieldButton" : deleteButtton,
				"fieldName" : "CreateUser",
				"fieldComment" : baseUtil.val("B.CreateUser"),
				"fieldProperties" : "{\"required\":true,\"editable\":false,\"tips\":false,\"hide\":true,\"search\":true,\"attachment\":false,\"attachment_extendData\":{\"attachmentType\":[]},\"colour\":\"\",\"type\":\"string\",\"length\":\"200\",\"format\":\"\",\"pattern\":\"\",\"fieldLabel\":\"\",\"validationMessage\":\"\"}"
			},
			{
				"deleteFieldButton" : deleteButtton,
				"fieldName" : "CreateDate",
				"fieldComment" : baseUtil.val("B.CreateDate"),
				"fieldProperties" : "{\"required\":true,\"editable\":false,\"tips\":false,\"hide\":true,\"search\":true,\"length\":\"23\",\"type\":\"dateTime\",\"format\":\"{0: yyyy-MM-dd HH:mm}\",\"pattern\":\"\",\"label\":\"E.TemplateProperties.templatePropertiesCreateDate\"}"
			},
			{
				"deleteFieldButton" : deleteButtton,
				"fieldName" : "ModifyUser",
				"fieldComment" : baseUtil.val("B.ModifyUser"),
				"fieldProperties" : "{\"required\":true,\"editable\":false,\"tips\":false,\"hide\":true,\"search\":true,\"attachment\":false,\"attachment_extendData\":{\"attachmentType\":[]},\"colour\":\"\",\"type\":\"string\",\"length\":\"200\",\"format\":\"\",\"pattern\":\"\",\"fieldLabel\":\"\",\"validationMessage\":\"\"}"
			},
			{
				"deleteFieldButton" : deleteButtton,
				"fieldName" : "ModifyDate",
				"fieldComment" : baseUtil.val("B.ModifyDate"),
				"fieldProperties" : "{\"required\":true,\"editable\":false,\"tips\":false,\"hide\":true,\"search\":true,\"length\":\"23\",\"type\":\"dateTime\",\"format\":\"{0: yyyy-MM-dd HH:mm}\",\"pattern\":\"\",\"label\":\"E.TemplateProperties.templatePropertiesModifyDate\"}"
			},
			{
				"deleteFieldButton" : deleteButtton,
				"fieldName" : "CreateUserAccount",
				"fieldComment" : baseUtil.val("B.CreateUserAccount"),
				"fieldProperties" : "{\"required\":false,\"editable\":false,\"tips\":true,\"hide\":false,\"search\":true,\"attachment\":false,\"attachment_extendData\":{\"attachmentType\":[]},\"colour\":\"\",\"type\":\"string\",\"length\":\"300\",\"format\":\"\",\"pattern\":\"\",\"fieldLabel\":\"\",\"validationMessage\":\"\"}"
			},
			{
				"deleteFieldButton" : deleteButtton,
				"fieldName" : "ModifyUserAccount",
				"fieldComment" : baseUtil.val("B.ModifyUserAccount"),
				"fieldProperties" : "{\"required\":false,\"editable\":false,\"tips\":true,\"hide\":false,\"search\":true,\"attachment\":false,\"attachment_extendData\":{\"attachmentType\":[]},\"colour\":\"\",\"type\":\"string\",\"length\":\"300\",\"format\":\"\",\"pattern\":\"\",\"fieldLabel\":\"\",\"validationMessage\":\"\"}"
			} ];
	var edit_win2_grid_dataSource = new kendo.data.DataSource({
		data : edit_win2_grid_data
	});
	var edit_win2_grid_columns = [];
	edit_win2_grid_columns
			.push(base.grid
					.simpleColumn(
							"fieldName",
							"<input title='"
									+ baseUtil
											.val("B.TemplateProperties.fieldName.placeholder")
									+ "' id='fieldName' name='fieldName' kendo_required='true' validationMessage='required' class=' k-input k-textbox fieldName' type='text' value='#=baseUtil.format(fieldName)#' placeholder='"
									+ baseUtil
											.val("B.TemplateProperties.fieldName.placeholder")
									+ "'></input>",
							"<div class='base-grid-title' title='"
									+ baseUtil
											.val("B.TemplateProperties.fieldName")
									+ "'>"
									+ baseUtil
											.val("B.TemplateProperties.fieldName")
									+ baseUtil.redStar + "</div>", "25%"));
	edit_win2_grid_columns
			.push(base.grid
					.simpleColumn(
							"fieldComment",
							"<input title='"
									+ baseUtil
											.val("B.TemplateProperties.fieldComment.placeholder")
									+ "' id='fieldComment' name='fieldComment' kendo_required='true' validationMessage='required' class=' k-input k-textbox fieldComment' type='text' value='#=baseUtil.format(fieldComment)#' placeholder='"
									+ baseUtil
											.val("B.TemplateProperties.fieldComment.placeholder")
									+ "'></input>",
							"<div class='base-grid-title' title='"
									+ baseUtil
											.val("B.TemplateProperties.fieldComment")
									+ "'>"
									+ baseUtil
											.val("B.TemplateProperties.fieldComment")
									+ baseUtil.redStar + "</div>", "45%"));
	edit_win2_grid_columns
			.push(base.grid
					.simpleColumn(
							"fieldProperties",
							baseWidget
									.buttonHtml(
											"fieldProperties",
											"",
											baseUtil
													.val("B.TemplateProperties.fieldProperties.placeholder"),
											"fieldProperties", "fa fa-server",
											"fieldProperties",
											"kendo_required='true' validationMessage='"
													+ baseUtil
															.val("E.required")
													+ "'",
											"#=baseUtil.format(fieldProperties)#"),
							"<div class='base-grid-title-last' title='"
									+ baseUtil
											.val("B.TemplateProperties.templatePropertiesTargetFieldProperties")
									+ "'>"
									+ baseUtil
											.val("B.TemplateProperties.templatePropertiesTargetFieldProperties")
									+ baseUtil.redStar + "</div>", "15%"));
	edit_win2_grid_columns.push(base.grid.simpleColumn("deleteFieldButton",
			"#=deleteFieldButton#", baseWidget.buttonHtml("addFieldButton", "",
					baseUtil.val("N.add"), "", "fa fa-plus"), "10%"));
	var edit_win2_grid_dataBound = function() {
		var tbody = $("#templateProperties_edit_win2_grid").find("tbody");
		base.grid.reflashRow(tbody);
		$("#addFieldButton").unbind("click").click(
				function() {
					base.grid.addRow($("#templateProperties_edit_win2_grid"),
							".deleteFieldButtonDiv", edit_win2_form_validator,
							fieldPropertiesOnClick);
				});
		base.grid.deleteRow(".deleteFieldButtonDiv");
		base.fixUI.fixLastRowBorderWidth(edit_win2_dom, 300);
	};
	window.edit_win2_grid_kendo = base.grid.simpleGrid(
			"templateProperties_edit_win2_grid", edit_win2_grid_dataSource,
			edit_win2_grid_columns, 396, null, edit_win2_grid_dataBound);
	/**
	 * 点击一级弹出框的“属性及注释”，弹出二级弹出框
	 */
	var clickTemplatePropertiesTargetFieldsToShowEditWin2 = function() {
		edit_win1_dom
				.find("#templatePropertiesTargetFields")
				.click(
						function() {
							var findOneData = [];
							baseUtil.reset(edit_win2_form);
							//$("#templatePropertiesTargetFields").val()获取不到内容是因为templatePropertiesTargetFields字段被设置成numberic类型了，应该是string类型。
							var templatePropertiesTargetFieldProperties = baseUtil
									.json($(
											"#templatePropertiesTargetFieldProperties")
											.val());
							if ("save" == ACTION
									&& !templatePropertiesTargetFieldProperties) {
								//新增的时候展现二级弹出框有两种情况，一种是点击“+”按钮弹出一级弹出框，然后点击“属性及注释”
								//弹出二级弹出框，这时二级弹出框的内容肯定是初始内容。第二种情况是，我已经弹出了二级弹出框，
								//并且编辑了，然后确定关闭二级弹出框，再点击“属性及注释”，那么再次弹出的二级弹出框的内容就
								//不能是初始值，而是用户编辑过的二级弹出框，但是这些数据还没有保存，需要给用户还原出来。
								//所以，一旦是ACTION为SAVE，并且#templatePropertiesTargetFieldProperties没有值的情况下，
								//才是第一种情况，给与二级弹出框初始值。
								findOneData = edit_win2_grid_data;
							} else {
								var data = [];
								var templatePropertiesTargetFields = baseUtil
										.json($(
												"#templatePropertiesTargetFields")
												.val());
								for ( var i in templatePropertiesTargetFields) {
									var d = {
										"deleteFieldButton" : deleteButtton,
										"fieldName" : i,
										"fieldComment" : templatePropertiesTargetFields[i],
										"fieldProperties" : JSON
												.stringify(templatePropertiesTargetFieldProperties[i])
									};
									data.push(d);
								}
								findOneData = data;
							}
							edit_win2_grid_dataSource = new kendo.data.DataSource(
									{
										data : findOneData
									});
							edit_win2_grid_kendo
									.setDataSource(edit_win2_grid_dataSource);
							//setDataSource()方法执行时马上会调用一次请求，将数据源更新，并且刷新控件。
							if ("view" == ACTION) {
								baseUtil
										.disabled($("#templateProperties_edit_win2_grid"));
							} else {
								baseUtil
										.notDisabled($("#templateProperties_edit_win2_grid"));
							}
							edit_win2_form.find("tbody td").css("border-width",
									"1px 0px");
							base.editWin.showWin(edit_win2_kendo, baseUtil
									.val("B.TemplateProperties.editFields"),
									edit_win2_form_validator, edit_win2_dom);
							/**
							 * 调整二级弹出框的列表行高度。
							 */
							edit_win2_dom.find("[role=gridcell]").css(
									"padding", "5px");
							fieldPropertiesOnClick(edit_win2_dom);
						});
	};

	/**
	 * 三级弹出式编辑框
	 */
	base.editWin.init(divId, 3, "templateProperties", null, function() {
		var formToJson = baseUtil.formToJson(edit_win3_form);
		$("#" + fieldPropertiesId).val(formToJson);
		$("#" + fieldPropertiesId).trigger("blur");
	}, null, null, 600);
	window.edit_win3_kendo = window["templateProperties_edit_win3_kendo"];
	window.edit_win3_dom = window["templateProperties_edit_win3_dom"];
	window.edit_win3_form = edit_win3_dom.find("form");
	window.edit_win3_form_validator = window["templateProperties_edit_win3_form_validator"];
	//为了控制弹出框的高度，让弹出框中的内容出现纵向滚动条，我们将所有的编辑输入框都放到弹出框的form下面的class=k-grid-content的div中。
	var edit_win3_scroll_content = edit_win3_form.find(".k-grid-content");
	/**
	 * 三级弹出框中添加编辑项
	 */
	edit_win3_scroll_content.append(base.editWin.editWinCheckbox({
		//必填
		"label" : baseUtil.val("N.required"),
		"id" : "required",
		"name" : "required",
		"title" : baseUtil.val("B.TemplateProperties.required.placeholder")
	}, {
		//可编辑
		"label" : baseUtil.val("N.editable"),
		"id" : "editable",
		"name" : "editable",
		"title" : baseUtil.val("B.TemplateProperties.editable.placeholder")
	}));
	edit_win3_scroll_content.append(base.editWin.editWinCheckbox({
		//提示
		"label" : baseUtil.val("N.tips"),
		"id" : "tips",
		"name" : "tips",
		"title" : baseUtil.val("B.TemplateProperties.tips.placeholder")
	}, {
		//隐藏
		"label" : baseUtil.val("N.hide"),
		"id" : "hide",
		"name" : "hide",
		"title" : baseUtil.val("B.TemplateProperties.hide.placeholder")
	}));
	edit_win3_scroll_content.append(base.editWin.editWinCheckbox({
		//搜索
		"label" : baseUtil.val("N.search"),
		"id" : "search",
		"name" : "search",
		"title" : baseUtil.val("B.TemplateProperties.search.placeholder")
	}, {
		//附件
		"label" : baseUtil.val("N.attachment"),
		"id" : "attachment",
		"name" : "attachment",
		"title" : baseUtil.val("B.TemplateProperties.attachment.placeholder")
	}));
	//颜色
	window.templatePropertiesFieldColorItems = [];
	baseUtil.AJpost(ctx + "/baseFrameworkWS/templatePropertiesFieldColorItems",
			null, function(data) {
				templatePropertiesFieldColorItems = data;
				templatePropertiesFieldColorItems.unshift({
					label : baseUtil.val("B.ColourPalette.webSafeColor"),
					value : "webSafeColor"
				});
				templatePropertiesFieldColorItems.unshift({
					label : baseUtil.val("B.ColourPalette.basicColor"),
					value : "basicColor"
				});
				templatePropertiesFieldColorItems.unshift({
					label : baseUtil.val("B.ColourPalette.allColor"),
					value : "allColors"
				});
			});
	base.editWin.editWinLocalSelect(baseUtil.val("N.colour"), "colour",
			"colour", templatePropertiesFieldColorItems,
			edit_win3_scroll_content, null, baseUtil.val("N.no"), "259px",
			baseUtil.val("B.TemplateProperties.colour.placeholder"));
	/**
	 * 根据属性下拉条选定的类型出不同的辅助填写项。
	 */
	var typeSelectOnchange = function(e) {
		var type = $("#type").val();
		var selectDataEditField = $("#selectData").closest(".k-edit-field");
		var selectFirstDataEditField = $("#selectFirstData").closest(
				".k-edit-field");
		var fontAwesomeEditField = $("#fontAwesome").closest(".k-edit-field");
		//下拉类型，允许填写下拉数据的来源以及下拉条的首选项。其中下拉数据的来源
		//可以直接填写baseSelectItems.js中定义的变量名或者填写后台controller的url。
		if ("singleSelect" == type || "multiSelect" == type) {
			base.editWin.animateShowEditField(selectDataEditField, e);
			base.editWin.animateShowEditField(selectFirstDataEditField, e);
		} else {
			base.editWin.animateHideEditField(selectDataEditField, e);
			base.editWin.animateHideEditField(selectFirstDataEditField, e);
		}
		//按钮类型，出现扩展输入项fontAwesome，允许用户输入fontAwesome的class，从而指定
		//按钮的图标。
		if ("button" == type) {
			base.editWin.animateShowEditField(fontAwesomeEditField, e);
		} else {
			base.editWin.animateHideEditField(fontAwesomeEditField, e);
		}
		//图片类型，出现扩展输入项默认图片路径，允许用户输入static或者后台的url，从而指定
		//默认图片。（选中图片类型必须输入默认路径，未添加控制！！！！）
		if ("image" == type) {
			base.editWin.animateShowEditField(originSrcEditField, e);
		} else {
			base.editWin.animateHideEditField(originSrcEditField, e);
		}
	};
	//类型
	base.editWin.editWinLocalSelect(baseUtil.val("N.type"), "type", "type",
			baseSelectItems.templatePropertiesFieldTypeItems,
			edit_win3_scroll_content, typeSelectOnchange, baseUtil.val("N.no"),
			"259px", baseUtil.val("B.TemplateProperties.type.placeholder"));
	//下拉数据
	base.editWin.editWinInput(baseUtil.val("N.selectData"), "selectData",
			"selectData", edit_win3_scroll_content, null, "260px", baseUtil
					.val("B.TemplateProperties.selectData.placeholder"));
	var selectDataEditField = $("#selectData").closest(".k-edit-field");
	selectDataEditField.hide();
	selectDataEditField.prev(".k-edit-label").hide();
	//下拉首选项
	base.editWin.editWinInput(baseUtil.val("N.selectFirstData"),
			"selectFirstData", "selectFirstData", edit_win3_scroll_content,
			null, "260px", baseUtil
					.val("B.TemplateProperties.selectFirstData.placeholder"));
	var selectFirstDataEditField = $("#selectFirstData").closest(
			".k-edit-field");
	selectFirstDataEditField.hide();
	selectFirstDataEditField.prev(".k-edit-label").hide();
	//FontAwesome图标
	base.editWin.editWinInput(baseUtil.val("B.TemplateProperties.fontAwesome"),
			"fontAwesome", "fontAwesome", edit_win3_scroll_content, null,
			"260px", baseUtil
					.val("B.TemplateProperties.fontAwesome.placeholder"));
	var fontAwesomeEditField = $("#fontAwesome").closest(".k-edit-field");
	fontAwesomeEditField.hide();
	fontAwesomeEditField.prev(".k-edit-label").hide();
	//默认图片
	base.editWin.editWinInput(baseUtil.val("B.TemplateProperties.originSrc"),
			"originSrc", "originSrc", edit_win3_scroll_content, null, "260px",
			baseUtil.val("B.TemplateProperties.originSrc.placeholder"));
	var originSrcEditField = $("#originSrc").closest(".k-edit-field");
	originSrcEditField.hide();
	originSrcEditField.prev(".k-edit-label").hide();
	//长度
	base.editWin.editWinNumericInput(baseUtil.val("N.length"), "length",
			"length", edit_win3_scroll_content, null, null, "260px", baseUtil
					.val("B.TemplateProperties.length.placeholder"));
	//格式
	base.editWin.editWinInput(baseUtil.val("N.format"), "format", "format",
			edit_win3_scroll_content, null, "260px", baseUtil
					.val("B.TemplateProperties.format.placeholder"));
	//正则
	base.editWin.editWinInput(baseUtil.val("N.pattern"), "pattern", "pattern",
			edit_win3_scroll_content, null, "260px", baseUtil
					.val("B.TemplateProperties.pattern.placeholder"));
	//属性提示
	base.editWin.editWinButton(baseUtil.val("B.TemplateProperties.fieldLabel"),
			"fieldLabel", "fieldLabel", baseUtil
					.val("B.TemplateProperties.fieldLabel.placeholder"), "",
			edit_win3_scroll_content, "fa fa-tag");
	//校验提示
	base.editWin.editWinButton(baseUtil
			.val("B.TemplateProperties.validationMessage"),
			"validationMessage", "validationMessage", baseUtil
					.val("B.TemplateProperties.validationMessage.placeholder"),
			"", edit_win3_scroll_content, "fa fa-warning");
	//输入提示
	base.editWin.editWinButton(baseUtil.val("B.TemplateProperties.editTips"),
			"editTips", "editTips", baseUtil
					.val("B.TemplateProperties.editTips.placeholder"), "",
			edit_win3_scroll_content, "fa fa-lightbulb-o");
	/**
	 * 点击二级弹出框的“Fields Validation”列，弹出三级弹出框
	 */
	// 记录当前点击的是哪个“Fields Properties”的id，三级编辑框输入完毕后，会赋值给该“Fields Properties”
	window.fieldPropertiesId;
	/**
	 * 当从一级弹出框点击“属性及注解按钮”弹出二级弹出框时，列表的数据初始化，这个方法的作用是为所有行的“属性配置”列绑定
	 * 事件，从而弹出三级弹出框。而当点击二级弹出框的“新增”按钮时，也会跑这个方法，如果这种方式，会传多一个参数"addRow=true"表明是
	 * 点击“新增”按钮时跑的，此时不仅会为新增加的行的“属性配置”列绑定事件，还会为“序号”列赋上最大的序号，也就是在之前最大的序号
	 * 基础上+1，表明这一行提交的时候是排在最后的。
	 */
	function fieldPropertiesOnClick(selection, addRowFlag) {
		selection.find(".fieldProperties").unbind("click").bind(
				"click",
				function(e) {
					fieldPropertiesId = this.id;
					baseUtil.reset(edit_win3_form);
					base.editWin.showWin(edit_win3_kendo, baseUtil
							.val("B.TemplateProperties.editFieldProperties")
							+ " - "
							+ $(e.target).closest("tr").find("td .fieldName")
									.val(), edit_win3_form_validator,
							edit_win3_dom);
					baseUtil.jsonToForm($("#" + fieldPropertiesId).val(),
							edit_win3_form);
					$("type").trigger('change');
				});
		if (addRowFlag) {
			edit_win2_form_validator.validate();
		}
		/**
		 * 让列表可拖动排序
		 */
		$("#templateProperties_edit_win2_grid tbody").kendoSortable({
			hint : function(element) {
				return element.clone().addClass("base-fields-hint");
			},
			ignore : "input,button",
			cursor : "move",
			axis : "y"
		});
	}

	//告诉你当前那个属性正在点开多语言弹出框，编辑多语言的内容，用于多语言编辑框确定之后，值赋回该属性中。
	window.i18nEditField = "";
	/**
	 * 四级弹出式多语言编辑框
	 */
	base.editWin.init(divId, 5, "templateProperties", null, function() {
		var formToJson = baseUtil.formToJson(edit_win5_form);
		$("#" + i18nEditField).val(formToJson);
		$("#" + i18nEditField).trigger("blur");
	}, null, null, 600);
	window.edit_win5_kendo = window["templateProperties_edit_win5_kendo"];
	window.edit_win5_dom = window["templateProperties_edit_win5_dom"];
	window.edit_win5_form = edit_win5_dom.find("form");
	window.edit_win5_form_validator = window["templateProperties_edit_win5_form_validator"];
	//为了控制弹出框的高度，让弹出框中的内容出现纵向滚动条，我们将所有的编辑输入框都放到弹出框的form下面的class=k-grid-content的div中。
	var edit_win5_scroll_content = edit_win5_form.find(".k-grid-content");
	edit_win5_scroll_content.css("height", "216px");
	base.editWin.editWinInput(baseUtil.val("N.chinese"), "chinese", "chinese",
			edit_win5_scroll_content, "kendo_required=true validationMessage='"
					+ baseUtil.val("E.required") + "'", "260px");
	base.editWin.editWinInput(baseUtil.val("N.taiwan"), "taiwan", "taiwan",
			edit_win5_scroll_content, "kendo_required=true validationMessage='"
					+ baseUtil.val("E.required") + "'", "260px");
	base.editWin.editWinInput(baseUtil.val("N.english"), "english", "english",
			edit_win5_scroll_content, "kendo_required=true validationMessage='"
					+ baseUtil.val("E.required") + "'", "260px");
	fieldLabelOnClick(edit_win3_dom);
	validationMessageOnClick(edit_win3_dom);
	attachmentOnClick(edit_win3_dom);
	editTipsOnClick(edit_win3_dom);
	/**
	 * 点击三级弹出框的“属性显示”输入框，弹出四级多语言编辑框
	 */
	function fieldLabelOnClick(selection) {
		selection.find("#fieldLabel").unbind("click");
		var title = baseUtil.val("B.TemplateProperties.editI18n") + " - "
				+ baseUtil.val("B.TemplateProperties.fieldLabel");
		selection.find("#fieldLabel")
				.bind(
						"click",
						function(e) {
							i18nEditField = "fieldLabel";
							baseUtil.reset(edit_win5_form);
							base.editWin.showWin(edit_win5_kendo, title,
									edit_win5_form_validator, edit_win5_dom);
							baseUtil.jsonToForm($("#fieldLabel").val(),
									edit_win5_form);
						});
	}
	/**
	 * 点击三级弹出框的“校验显示”输入框，弹出四级多语言编辑框
	 */
	function validationMessageOnClick(selection) {
		selection.find("#validationMessage").unbind("click");
		var title = baseUtil.val("B.TemplateProperties.editI18n") + " - "
				+ baseUtil.val("B.TemplateProperties.validationMessage");
		selection.find("#validationMessage").bind(
				"click",
				function(e) {
					i18nEditField = "validationMessage";
					baseUtil.reset(edit_win5_form);
					base.editWin.showWin(edit_win5_kendo, title,
							edit_win5_form_validator, edit_win5_dom);
					baseUtil.jsonToForm($("#validationMessage").val(),
							edit_win5_form);
				});
	}
	/**
	 * 点击三级弹出框的“编辑提示”输入框，弹出四级多语言编辑框
	 */
	function editTipsOnClick(selection) {
		selection.find("#editTips").unbind("click");
		var title = baseUtil.val("B.TemplateProperties.editI18n") + " - "
				+ baseUtil.val("B.TemplateProperties.editTips");
		selection.find("#editTips").bind(
				"click",
				function(e) {
					i18nEditField = "editTips";
					baseUtil.reset(edit_win5_form);
					base.editWin.showWin(edit_win5_kendo, title,
							edit_win5_form_validator, edit_win5_dom);
					baseUtil.jsonToForm($("#editTips").val(), edit_win5_form);
				});
	}

	/**
	 * 四级弹出式附件编辑框
	 */
	base.editWin.init(divId, 6, "templateProperties", null, function() {
		/**
		 * 附件属性编辑点击“确定”
		 * 将所有的属性作为json对象字符串的方式附加在控件的extendData属性中。
		 * baseUtil.formToJson扫每个控件都会将它的extendData属性的内容换个
		 * 名字"控件id_extendData"，然后作为与控件同级的属性提交。反过来当
		 * baseUtil.jsonToForm将json还原成表格数据的时候，也会获取"控件id_extendData"，
		 * 然后放在相应的控件的extendData属性中。
		 */
		var attachmentTypeData = $("#attachmentType").data("kendoMultiSelect")
				.value();
		var attachmentSizeData = $("#attachmentSize").val();
		var attachmentTypeRegxData = $("#attachmentTypeRegx").val();
		var data = {};
		if (attachmentTypeRegxData) {
			data["attachmentTypeRegx"] = attachmentTypeRegxData;
		}
		if (attachmentTypeData) {
			data["attachmentType"] = attachmentTypeData;
		}
		if (attachmentSizeData) {
			data["attachmentSize"] = attachmentSizeData;
		}
		$("#attachment").attr("extendData", JSON.stringify(data));
	}, null, null, 600);
	window.edit_win6_kendo = window["templateProperties_edit_win6_kendo"];
	window.edit_win6_dom = window["templateProperties_edit_win6_dom"];
	window.edit_win6_form = edit_win6_dom.find("form");
	window.edit_win6_form_validator = window["templateProperties_edit_win6_form_validator"];
	//为了控制弹出框的高度，让弹出框中的内容出现纵向滚动条，我们将所有的编辑输入框都放到弹出框的form下面的class=k-grid-content的div中。
	var edit_win6_scroll_content = edit_win6_form.find(".k-grid-content");
	/**
	 * 点击三级弹出框的“附件”checkbox，弹出四级附件编辑框
	 */
	function attachmentOnClick(selection) {
		selection.find("#attachment").unbind("click").bind(
				"click",
				function(e) {
					if (this.checked) {
						baseUtil.reset(edit_win6_form);
						base.editWin.showWin(edit_win6_kendo, baseUtil
								.val("B.TemplateProperties.editAttachment"),
								edit_win6_form_validator, edit_win6_dom);
						baseUtil.jsonToForm($(this).attr("extendData"),
								edit_win6_form);
					}
				});
	}
	base.editWin.editWinLocalMultiSelect(baseUtil
			.val("B.TemplateProperties.attachmentType"), "attachmentType",
			"attachmentType",
			baseSelectItems["templatePropertiesAttachmentTypeItems"],
			edit_win6_scroll_content, null, null, "260px");
	base.editWin
			.editWinInput(
					baseUtil.val("B.TemplateProperties.attachmentTypeRegx"),
					"attachmentTypeRegx",
					"attachmentTypeRegx",
					edit_win6_scroll_content,
					null,
					"260px",
					baseUtil
							.val("B.TemplateProperties.attachmentTypeRegx.placeholder"));
	$("#attachmentTypeRegx").css({
		"margin-left" : "-12px"
	});
	base.editWin.editWinNumericInput(baseUtil.val("N.size"), "attachmentSize",
			"attachmentSize", edit_win6_scroll_content, null, null, "260px",
			baseUtil.val("B.TemplateProperties.attchmentSize.placeholder"));
	$("#attachmentSize").closest(".k-numerictextbox").css({
		"margin-left" : "-12px"
	});

	/**
	 * 每当一级弹出框打开，都让“模块显示”只读，避免人工编辑。
	 */
	edit_win1_kendo.bind("open", function() {
		templatePropertiesTargetLabelOnClick(edit_win1_dom);

		/**
		 * 其实templateProperties的很多数据新增了就不能修改了，因为它涉及到的是
		 * 代码的修改，当系统上线后，是基本不会动templateProperties的内容的，
		 * 除了极个别的情况。比如改改输入框类型，这些小改动。
		 */
		if ("save" == ACTION) {
			baseUtil.notFangReadOnly(edit_win1_dom
					.find("#templatePropertiesTarget"));
			baseUtil.notFangReadOnly(edit_win1_dom
					.find("#templatePropertiesWsName"));
		} else {
			baseUtil.fangReadOnly(edit_win1_dom
					.find("#templatePropertiesTarget"));
			baseUtil.fangReadOnly(edit_win1_dom
					.find("#templatePropertiesWsName"));
		}
	});
	/**
	 * 点击一级弹出框的“模块显示”输入框，弹出四级多语言编辑框
	 */
	function templatePropertiesTargetLabelOnClick(selection) {
		selection.find("#templatePropertiesTargetLabel").unbind("click");
		var title = baseUtil.val("B.TemplateProperties.editI18n")
				+ " - "
				+ baseUtil
						.val("B.TemplateProperties.templatePropertiesTargetLabel");
		selection.find("#templatePropertiesTargetLabel").bind(
				"click",
				function(e) {
					i18nEditField = "templatePropertiesTargetLabel";
					baseUtil.reset(edit_win5_form);
					base.editWin.showWin(edit_win5_kendo, title,
							edit_win5_form_validator, edit_win5_dom);
					baseUtil.jsonToForm($("#templatePropertiesTargetLabel")
							.val(), edit_win5_form);
				});
	}

});
