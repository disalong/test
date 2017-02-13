$(function() {

	$("title").text(baseUtil.val("B.Role"));
	/**
	 * 主列表初始化
	 */
	var divId = "roleCRUDGrid";
	var gridReadUrl = ctx + "/baseUserWS/Role";
	var extendDataFirstBound = function() {
		window.edit_win1_dom = window["role_edit_win1_dom"];
		window.edit_win1_kendo = window["role_edit_win1_kendo"];
		window.edit_win1_form = edit_win1_dom.find("form");
		base.editWin.editWinButton(baseUtil.val("B.Role.bindingPermission"),
				"p_o_permissionIds", "p_o_permissionIds", baseUtil
						.val("B.Role.bindingPermission"), "", edit_win1_form
						.find(".k-grid-content"), "fa fa-share-alt");
		//调整一级输入框高度，每个模块的一级数据框高度基本都要手动调整一下。
		edit_win1_form.find(".k-grid-content").css("min-height", "290px");
		clickRoleSelectParentIdToShowEditWin3();
		clickRoleSelectPermissionIdToShowEditWin2();
	};
	window.roleCRUDGrid = base.grid.init(divId, gridReadUrl,
			extendDataFirstBound);

	/**
	 * 更新或者查看权限树时，一级弹出框的findOne数据没有办法带回该角色绑定的权限id，
	 * 所以需要单独使用ajax带回来。
	 */
	edit_win1_kendo.bind("open", function() {
		if ("save" != ACTION && "undefined" != typeof updateTargetId) {
			baseUtil.AJpost(ctx
					+ "/baseUserWS/RoleReadService/findPermissionIdsByRoleId",
					{
						"p_o_roleId" : updateTargetId

					}, function(data) {
						$("#p_o_permissionIds").val(data.join(","));
					});
		}
	});

	/**
	 * 二级弹出式编辑框（角色树）
	 */
	base.editWin
			.init(
					divId,
					3,
					"role",
					$("<div id='role_edit_win3_role_treeView' class='base-edit-win-content'></div>"),
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
						$("#roleParentId").val(checkNodesId);
					}, null, null, 600);
	/**
	 * 这四个变量基本初始化弹出框之后都要获取，不管用不用
	 */
	window.edit_win3_kendo = window["role_edit_win3_kendo"];
	window.edit_win3_dom = window["role_edit_win3_dom"];
	window.edit_win3_form = edit_win3_dom.find("form");
	window.edit_win3_form_validator = window["role_edit_win3_form_validator"];
	/**
	 * 在角色树的下方添加两个按钮“全部展开”和“全部收起”。
	 */
	window.role_edit_win3_role_treeView_data = null;
	edit_win3_dom.find(".k-edit-buttons").prepend(
			baseWidget.treeAllCollapseButtonHtml);
	edit_win3_dom.find(".k-edit-buttons").prepend(
			baseWidget.treeAllExpandButtonHtml);
	edit_win3_dom.find(".base-grid-edit-expand").click(
			function() {
				role_edit_win3_role_treeView_data.expand(edit_win3_dom
						.find(".k-item"));
			});
	edit_win3_dom.find(".base-grid-edit-collapse").click(
			function() {
				role_edit_win3_role_treeView_data.collapse(edit_win3_dom
						.find(".k-item"));
			});
	/**
	 * 初始化二级弹出框的角色树。
	 */
	window.edit_win3_treeView_kendo = baseWidget.treeViewByElement(
			$("#role_edit_win3_role_treeView"), null, null, [], "p_o_roleId",
			true);
	/**
	 * 点击一级弹出框的“父角色”，弹出二级弹出框（角色树）
	 */
	var clickRoleSelectParentIdToShowEditWin3 = function() {
		edit_win1_dom
				.find("#roleParentId")
				.click(
						function() {
							role_edit_win3_role_treeView_data = $(
									"#role_edit_win3_role_treeView").data(
									"kendoTreeView");
							var role_edit_win3_role_treeView_dataSource = baseWidget
									.treeDataSource(
											ctx
													+ "/baseUserWS/RoleReadService/findChildrenByRoleId",
											"p_o_roleId", {});
							role_edit_win3_role_treeView_data
									.setDataSource(role_edit_win3_role_treeView_dataSource);
							//setDataSource()方法执行时马上会调用一次请求，将数据源更新，并且刷新控件。
							base.editWin.showWin(edit_win3_kendo, baseUtil
									.val("B.Role.roleParentId"),
									edit_win3_form_validator, edit_win3_dom);
							baseWidget
									.expendAllTreeNodesAndCheckParent(
											edit_win3_dom,
											role_edit_win3_role_treeView_data,
											$("#roleParentId").val(),
											false,
											function(_this) {
												//父角色只能有一个
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

	/**
	 * 二级弹出式编辑框（权限树）
	 */
	base.editWin
			.init(
					divId,
					2,
					"role",
					$("<div id='role_edit_win2_permission_treeView' class='base-edit-win-content'></div>"),
					function() {
						var checkNodesIds = [];
						edit_win2_form.find("[type='checkbox']").each(
								function() {
									if (this.checked) {
										checkNodesIds.push($(this).attr("id"));
									}
								});
						$("#p_o_permissionIds").val(checkNodesIds.join(","));
					}, null, null, 600);
	/**
	 * 这四个变量基本初始化弹出框之后都要获取，不管用不用
	 */
	window.edit_win2_kendo = window["role_edit_win2_kendo"];
	window.edit_win2_dom = window["role_edit_win2_dom"];
	window.edit_win2_form = edit_win2_dom.find("form");
	window.edit_win2_form_validator = window["role_edit_win2_form_validator"];
	/**
	 * 在权限树的下方添加两个按钮“全部展开”和“全部收起”。
	 */
	window.role_edit_win2_permission_treeView_data = null;
	edit_win2_dom.find(".k-edit-buttons").prepend(
			baseWidget.treeAllCollapseButtonHtml);
	edit_win2_dom.find(".k-edit-buttons").prepend(
			baseWidget.treeAllExpandButtonHtml);
	edit_win2_dom.find(".base-grid-edit-expand").click(
			function() {
				role_edit_win2_permission_treeView_data.expand(edit_win2_dom
						.find(".k-item"));
			});
	edit_win2_dom.find(".base-grid-edit-collapse").click(
			function() {
				role_edit_win2_permission_treeView_data.collapse(edit_win2_dom
						.find(".k-item"));
			});
	/**
	 * 初始化二级弹出框的权限树。
	 */
	window.edit_win2_treeView_kendo = baseWidget.treeViewByElement(
			$("#role_edit_win2_permission_treeView"), null, null, [],
			"p_o_permissionTargetName", true);
	/**
	 * 点击一级弹出框的“权限绑定”，弹出二级弹出框（权限树）
	 */
	var clickRoleSelectPermissionIdToShowEditWin2 = function() {
		edit_win1_dom
				.find("#p_o_permissionIds")
				.click(
						function() {
							role_edit_win2_permission_treeView_data = $(
									"#role_edit_win2_permission_treeView")
									.data("kendoTreeView");
							var role_edit_win2_permission_treeView_dataSource = baseWidget
									.treeDataSource(
											ctx
													+ "/baseUserWS/PermissionReadService/findChildrenByPermissionTargetName",
											"p_o_permissionTargetName", {
												"p_o_lang" : $.cookie("lang")
											});
							role_edit_win2_permission_treeView_data
									.setDataSource(role_edit_win2_permission_treeView_dataSource);
							//setDataSource()方法执行时马上会调用一次请求，将数据源更新，并且刷新控件。
							base.editWin.showWin(edit_win2_kendo, baseUtil
									.val("B.Role.bindingPermission"),
									edit_win2_form_validator, edit_win2_dom);
							baseWidget.expendAllTreeNodesAndCheckParent(
									edit_win2_dom,
									role_edit_win2_permission_treeView_data, $(
											"#p_o_permissionIds").val(), false,
									null, true);
						});
	};
});
