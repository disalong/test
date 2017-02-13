$(function() {
	$("title").text(baseUtil.val("B.Menu"));
	/**
	 * 主列表初始化
	 */
	var divId = "menuCRUDGrid";
	var gridReadUrl = ctx + "/baseUserWS/Menu";
	var extendDataFirstBound = function() {
		window.edit_win1_dom = window["menu_edit_win1_dom"];
		window.edit_win1_kendo = window["menu_edit_win1_kendo"];
		window.edit_win1_form = edit_win1_dom.find("form");
		clickMenuSelectParentIdToShowEditWin3();
		//调整一级输入框高度，每个模块的一级数据框高度基本都要手动调整一下。
		edit_win1_form.find(".k-grid-content").css("min-height", "190px");
		/**
		 * “是否根菜单”事件触发。
		 */
		$("#menuIsLeafMenu").data("kendoDropDownList").bind("change",
				menuIsLeafMenuSelectOnchange);

	};
	window.menuCRUDGrid = base.grid.init(divId, gridReadUrl,
			extendDataFirstBound);

	/**
	 * 根据是否是根菜单的下拉条出不同的填写项。
	 */
	var menuIsLeafMenuSelectOnchange = function(e) {
		var menuIsLeafMenu = $("#menuIsLeafMenu").val();
		if ("N" == menuIsLeafMenu) {
			//如果是非叶子菜单
			base.editWin.animateShowEditField(menuNonLeafMenuLabelEditField, e);
			base.editWin.animateShowEditField(menuNonLeafMenuKeyEditField, e);
			$("#menuNonLeafMenuLabel").attr("kendo_required", "true");
			$("#menuNonLeafMenuKey").attr("kendo_required", "true");
		} else {
			base.editWin.animateHideEditField(menuNonLeafMenuLabelEditField, e);
			base.editWin.animateHideEditField(menuNonLeafMenuKeyEditField, e);
			$("#menuNonLeafMenuLabel").attr("kendo_required", "false");
			$("#menuNonLeafMenuKey").attr("kendo_required", "false");
		}
		if ("Y" == menuIsLeafMenu) {
			//如果是叶子菜单
			base.editWin.animateShowEditField(menuTargetNameEditField, e);
			$("#menuTargetName").attr("kendo_required", "true");
		} else {
			base.editWin.animateHideEditField(menuTargetNameEditField, e);
			$("#menuTargetName").attr("kendo_required", "false");
		}
	};

	/**
	 * 新增的时候，为了让已经选过的菜单不能再被选，所以需要重新获取一下菜单数据。
	 * 但是更新或者查看的时候，则要获取所有菜单数据，以供匹配显示。
	 */
	edit_win1_kendo
			.bind(
					"open",
					function() {
						var menuTargetNameKendoData = $("#menuTargetName")
								.data("kendoDropDownList");
						var filterHasChooseMenuUrl = ctx
								+ "/baseCodeGeneratorWS/TemplatePropertiesReadService/findAllMainTableTargetName";
						var filterParams = {};
						if ("save" == ACTION) {
							filterParams = {
								"p_o_filterHasChooseMenu" : "Y"
							};
							menuTargetNameKendoData.enable(true);
							$("#menuIsLeafMenu").data("kendoDropDownList")
									.enable(true);
						} else {
							menuTargetNameKendoData.enable(false);
							$("#menuIsLeafMenu").data("kendoDropDownList")
									.enable(false);
						}
						baseUtil.AJpost(filterHasChooseMenuUrl, filterParams,
								function(data) {
									menuTargetNameKendoData.dataSource
											.data(data);
								});
						window.menuNonLeafMenuLabelEditField = $(
								"#menuNonLeafMenuLabel").closest(
								".k-edit-field");
						window.menuNonLeafMenuKeyEditField = $(
								"#menuNonLeafMenuKey").closest(".k-edit-field");
						window.menuTargetNameEditField = $("#menuTargetName")
								.closest(".k-edit-field");
						window.menuParentIdEditField = $("#menuParentId")
								.closest(".k-edit-field");
						menuNonLeafMenuLabelEditField.hide();
						menuNonLeafMenuLabelEditField.prev(".k-edit-label")
								.hide();
						menuNonLeafMenuKeyEditField.hide();
						menuNonLeafMenuKeyEditField.prev(".k-edit-label")
								.hide();
						menuTargetNameEditField.hide();
						menuTargetNameEditField.prev(".k-edit-label").hide();
						menuNonLeafMenuLabelOnClick(edit_win1_dom);
					});

	//告诉你当前那个属性正在点开多语言弹出框，编辑多语言的内容，用于多语言编辑框确定之后，值赋回该属性中。
	window.i18nEditField = "";

	/**
	 * 弹出式多语言编辑框
	 */
	base.editWin.init(divId, 5, "menu", null, function() {
		var formToJson = baseUtil.formToJson(edit_win5_form);
		$("#" + i18nEditField).val(formToJson);
		$("#" + i18nEditField).trigger("blur");
	}, null, null, 600);
	window.edit_win5_kendo = window["menu_edit_win5_kendo"];
	window.edit_win5_dom = window["menu_edit_win5_dom"];
	window.edit_win5_form = edit_win5_dom.find("form");
	window.edit_win5_form_validator = window["menu_edit_win5_form_validator"];
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

	/**
	 * 点击一级弹出框的“根菜单显示”输入框，弹出多语言编辑框
	 */
	function menuNonLeafMenuLabelOnClick(selection) {
		selection.find("#menuNonLeafMenuLabel").unbind("click");
		var title = baseUtil.val("B.TemplateProperties.editI18n") + " - "
				+ baseUtil.val("B.Menu.menuNonLeafMenuLabel");
		selection.find("#menuNonLeafMenuLabel").bind(
				"click",
				function(e) {
					i18nEditField = "menuNonLeafMenuLabel";
					baseUtil.reset(edit_win5_form);
					base.editWin.showWin(edit_win5_kendo, title,
							edit_win5_form_validator, edit_win5_dom);
					baseUtil.jsonToForm($("#menuNonLeafMenuLabel").val(),
							edit_win5_form);
				});
	}

	/**
	 * 二级弹出式编辑框（菜单树）
	 */
	base.editWin
			.init(
					divId,
					3,
					"menu",
					$("<div id='menu_edit_win3_menu_treeView' class='base-edit-win-content'></div>"),
					function() {
						if (edit_win3_dom
								.find("input[type='checkbox']:checked").length > 1) {
							baseUtil.alertE(baseUtil
									.val("E.Menu.parentNoMoreThanOne"));
							return false;
						}
						var checkNode = edit_win3_form
								.find("[type='checkbox']:checked");
						var checkNodesId = "";
						if (checkNode) {
							checkNodesId = checkNode.attr("id");
						}
						$("#menuParentId").val(checkNodesId);
					}, null, null, 600);
	/**
	 * 这四个变量基本初始化弹出框之后都要获取，不管用不用
	 */
	window.edit_win3_kendo = window["menu_edit_win3_kendo"];
	window.edit_win3_dom = window["menu_edit_win3_dom"];
	window.edit_win3_form = edit_win3_dom.find("form");
	window.edit_win3_form_validator = window["menu_edit_win3_form_validator"];
	/**
	 * 在菜单树的下方添加两个按钮“全部展开”和“全部收起”。
	 */
	window.menu_edit_win3_menu_treeView_data = null;
	edit_win3_dom.find(".k-edit-buttons").prepend(
			baseWidget.treeAllCollapseButtonHtml);
	edit_win3_dom.find(".k-edit-buttons").prepend(
			baseWidget.treeAllExpandButtonHtml);
	edit_win3_dom.find(".base-grid-edit-expand").click(
			function() {
				menu_edit_win3_menu_treeView_data.expand(edit_win3_dom
						.find(".k-item"));
			});
	edit_win3_dom.find(".base-grid-edit-collapse").click(
			function() {
				menu_edit_win3_menu_treeView_data.collapse(edit_win3_dom
						.find(".k-item"));
			});

	/**
	 * 初始化二级弹出框的菜单树。
	 */
	window.edit_win3_treeView_kendo = baseWidget.treeViewByElement(
			$("#menu_edit_win3_menu_treeView"), null, null, [], "p_o_menuId",
			true);
	/**
	 * 点击一级弹出框的“上级菜单”，弹出二级弹出框（菜单树）
	 */
	var clickMenuSelectParentIdToShowEditWin3 = function() {
		edit_win1_dom
				.find("#menuParentId")
				.click(
						function() {
							menu_edit_win3_menu_treeView_data = $(
									"#menu_edit_win3_menu_treeView").data(
									"kendoTreeView");
							var menu_edit_win3_menu_treeView_dataSource = baseWidget
									.treeDataSource(
											ctx
													+ "/baseUserWS/MenuReadService/findChildrenByMenuId",
											"p_o_menuId", {
												"p_o_lang" : $.cookie("lang")
											});
							menu_edit_win3_menu_treeView_data
									.setDataSource(menu_edit_win3_menu_treeView_dataSource);
							//setDataSource()方法执行时马上会调用一次请求，将数据源更新，并且刷新控件。
							base.editWin.showWin(edit_win3_kendo, baseUtil
									.val("B.Menu.menuParentId"),
									edit_win3_form_validator, edit_win3_dom);
							baseWidget
									.expendAllTreeNodesAndCheckParent(
											edit_win3_dom,
											menu_edit_win3_menu_treeView_data,
											$("#menuParentId").val(),
											false,
											function(_this) {
												//上级菜单只能有一个
												if (_this.checked) {
													edit_win3_dom
															.find(
																	".k-checkbox[type=checkbox]")
															.not($(_this))
															.each(
																	function() {
																		this.checked = false;
																	});
												}
											}, false);
						});
	};

});
