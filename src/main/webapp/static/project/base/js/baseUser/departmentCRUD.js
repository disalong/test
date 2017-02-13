$(function() {
	$("title").text(baseUtil.val("B.Department"));
	/**
	 * 主列表初始化
	 */
	var divId = "departmentCRUDGrid";
	var gridReadUrl = ctx + "/baseUserWS/Department";
	var extendDataFirstBound = function() {
		window.edit_win1_dom = window["department_edit_win1_dom"];
		window.edit_win1_kendo = window["department_edit_win1_kendo"];
		window.edit_win1_form = edit_win1_dom.find("form");
		base.editWin.editWinButton(baseUtil.val("B.Department.bindingRole"),
				"p_o_roleIds", "p_o_roleIds", baseUtil
						.val("B.Department.bindingRole"), "", edit_win1_form
						.find(".k-grid-content"), "fa fa-share-alt");
		//调整一级输入框高度，每个模块的一级数据框高度基本都要手动调整一下。
		edit_win1_form.find(".k-grid-content").css("min-height", "290px");
		clickDepartmentSelectParentIdToShowEditWin3();
		clickDepartmentSelectRoleIdToShowEditWin2();
	};
	window.departmentCRUDGrid = base.grid.init(divId, gridReadUrl,
			extendDataFirstBound);

	/**
	 * 更新或者查看权限时，一级弹出框的findOne数据没有办法带回该角色绑定的权限id，
	 * 所以需要单独使用ajax带回来。
	 */
	edit_win1_kendo
			.bind(
					"open",
					function() {
						var url = ctx
								+ "/baseUserWS/DepartmentReadService/findRoleIdsByDepartmentId";
						if ("save" != ACTION
								&& "undefined" != typeof updateTargetId) {
							baseUtil.AJpost(url, {
								"p_o_departmentId" : updateTargetId
							}, function(data) {
								$("#p_o_roleIds").val(data.join(","));
							});
						}
						departmentNameOnClick(edit_win1_dom);
					});

	/**
	 * 二级弹出式编辑框（部门树）
	 */
	base.editWin
			.init(
					divId,
					3,
					"department",
					$("<div id='department_edit_win3_department_treeView' class='base-edit-win-content'></div>"),
					function() {
						if (edit_win3_dom
								.find("input[type='checkbox']:checked").length > 1) {
							baseUtil.alertE(baseUtil
									.val("E.Role.parentNoMoreThanOne"));
							return false;
						}
						var checkNode = edit_win3_form
								.find("[type='checkbox']:checked");
						var checkNodesId = "";
						if (checkNode) {
							checkNodesId = checkNode.attr("id");
						}
						$("#departmentParentId").val(checkNodesId);
					}, null, null, 600);
	/**
	 * 这四个变量基本初始化弹出框之后都要获取，不管用不用
	 */
	window.edit_win3_kendo = window["department_edit_win3_kendo"];
	window.edit_win3_dom = window["department_edit_win3_dom"];
	window.edit_win3_form = edit_win3_dom.find("form");
	window.edit_win3_form_validator = window["department_edit_win3_form_validator"];
	/**
	 * 在部门树的下方添加两个按钮“全部展开”和“全部收起”。
	 */
	window.department_edit_win3_department_treeView_data = null;
	edit_win3_dom.find(".k-edit-buttons").prepend(
			baseWidget.treeAllCollapseButtonHtml);
	edit_win3_dom.find(".k-edit-buttons").prepend(
			baseWidget.treeAllExpandButtonHtml);
	edit_win3_dom.find(".base-grid-edit-expand").click(
			function() {
				department_edit_win3_department_treeView_data
						.expand(edit_win3_dom.find(".k-item"));
			});
	edit_win3_dom.find(".base-grid-edit-collapse").click(
			function() {
				department_edit_win3_department_treeView_data
						.collapse(edit_win3_dom.find(".k-item"));
			});
	/**
	 * 初始化二级弹出框的部门树。
	 */
	window.edit_win3_treeView_kendo = baseWidget.treeViewByElement(
			$("#department_edit_win3_department_treeView"), null, null, [],
			"p_o_departmentId", true);
	/**
	 * 点击一级弹出框的“上级部门”，弹出二级弹出框（部门树）
	 */
	var clickDepartmentSelectParentIdToShowEditWin3 = function() {
		edit_win1_dom
				.find("#departmentParentId")
				.click(
						function() {
							department_edit_win3_department_treeView_data = $(
									"#department_edit_win3_department_treeView")
									.data("kendoTreeView");
							var department_edit_win3_department_treeView_dataSource = baseWidget
									.treeDataSource(
											ctx
													+ "/baseUserWS/DepartmentReadService/findChildrenByDepartmentId",
											"p_o_departmentId", {
												"p_o_lang" : $.cookie("lang")
											});
							department_edit_win3_department_treeView_data
									.setDataSource(department_edit_win3_department_treeView_dataSource);
							//setDataSource()方法执行时马上会调用一次请求，将数据源更新，并且刷新控件。
							base.editWin.showWin(edit_win3_kendo, baseUtil
									.val("B.Department.departmentParentId"),
									edit_win3_form_validator, edit_win3_dom);
							baseWidget
									.expendAllTreeNodesAndCheckParent(
											edit_win3_dom,
											department_edit_win3_department_treeView_data,
											$("#departmentParentId").val(),
											false,
											function(_this) {
												if (_this.checked) {
													//上级部门只能有一个。
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

	/**
	 * 二级弹出式编辑框（角色树）
	 */
	base.editWin
			.init(
					divId,
					2,
					"department",
					$("<div id='department_edit_win2_role_treeView' class='base-edit-win-content'></div>"),
					function() {
						var checkNodesIds = [];
						edit_win2_form.find("[type='checkbox']").each(
								function() {
									if (this.checked) {
										checkNodesIds.push($(this).attr("id"));
									}
								});
						$("#p_o_roleIds").val(checkNodesIds.join(","));
					}, null, null, 600);
	/**
	 * 这四个变量基本初始化弹出框之后都要获取，不管用不用
	 */
	window.edit_win2_kendo = window["department_edit_win2_kendo"];
	window.edit_win2_dom = window["department_edit_win2_dom"];
	window.edit_win2_form = edit_win2_dom.find("form");
	window.edit_win2_form_validator = window["department_edit_win2_form_validator"];
	/**
	 * 在角色树的下方添加两个按钮“全部展开”和“全部收起”。
	 */
	window.department_edit_win2_role_treeView_data = null;
	edit_win2_dom.find(".k-edit-buttons").prepend(
			baseWidget.treeAllCollapseButtonHtml);
	edit_win2_dom.find(".k-edit-buttons").prepend(
			baseWidget.treeAllExpandButtonHtml);
	edit_win2_dom.find(".base-grid-edit-expand").click(
			function() {
				department_edit_win2_role_treeView_data.expand(edit_win2_dom
						.find(".k-item"));
			});
	edit_win2_dom.find(".base-grid-edit-collapse").click(
			function() {
				department_edit_win2_role_treeView_data.collapse(edit_win2_dom
						.find(".k-item"));
			});
	/**
	 * 初始化二级弹出框的角色树。
	 * 部门选中一个角色时，它的子角色不会同时被选定，比如说有角色软件部总经理，它下面有
	 * 子角色应用开发部主管，程序员，那么当软件部总经理被选定，那么该部门一定会出现开发部
	 * 主管，程序员等子角色吗？不一定的。
	 */
	window.edit_win2_treeView_kendo = baseWidget.treeViewByElement(
			$("#department_edit_win2_role_treeView"), null, null, [],
			"p_o_roleId", true);
	/**
	 * 点击一级弹出框的“角色绑定”，弹出二级弹出框（角色树）
	 */
	var clickDepartmentSelectRoleIdToShowEditWin2 = function() {
		edit_win1_dom
				.find("#p_o_roleIds")
				.click(
						function() {
							department_edit_win2_role_treeView_data = $(
									"#department_edit_win2_role_treeView")
									.data("kendoTreeView");
							var department_edit_win2_role_treeView_dataSource = baseWidget
									.treeDataSource(
											ctx
													+ "/baseUserWS/RoleReadService/findChildrenByRoleId",
											"p_o_roleId");
							department_edit_win2_role_treeView_data
									.setDataSource(department_edit_win2_role_treeView_dataSource);
							//setDataSource()方法执行时马上会调用一次请求，将数据源更新，并且刷新控件。
							base.editWin.showWin(edit_win2_kendo, baseUtil
									.val("B.Department.bindingRole"),
									edit_win2_form_validator, edit_win2_dom);
							baseWidget.expendAllTreeNodesAndCheckParent(
									edit_win2_dom,
									department_edit_win2_role_treeView_data, $(
											"#p_o_roleIds").val(), false, null,
									false);
						});
	};

	/**
	 * 弹出式多语言编辑框
	 */
	base.editWin.init(divId, 5, "department", null, function() {
		var formToJson = baseUtil.formToJson(edit_win5_form);
		$("#" + i18nEditField).val(formToJson);
		$("#" + i18nEditField).trigger("blur");
	}, null, null, 600);
	window.edit_win5_kendo = window["department_edit_win5_kendo"];
	window.edit_win5_dom = window["department_edit_win5_dom"];
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

	/**
	 * 点击一级弹出框的“部门名”输入框，弹出多语言编辑框
	 */
	function departmentNameOnClick(selection) {
		selection.find("#departmentName").unbind("click");
		var title = baseUtil.val("B.TemplateProperties.editI18n") + " - "
				+ baseUtil.val("B.Department.departmentName");
		selection.find("#departmentName").bind(
				"click",
				function(e) {
					i18nEditField = "departmentName";
					baseUtil.reset(edit_win5_form);
					base.editWin.showWin(edit_win5_kendo, title,
							edit_win5_form_validator, edit_win5_dom);
					baseUtil.jsonToForm($("#departmentName").val(),
							edit_win5_form);
				});
	}
});
