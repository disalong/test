$(function() {
	$("title").text(baseUtil.val("B.User"));
	/**
	 * 主列表初始化
	 */
	var divId = "userCRUDGrid";
	var gridReadUrl = ctx + "/baseUserWS/User";
	var extendDataFirstBound = function() {
		window.edit_win1_dom = window["user_edit_win1_dom"];
		window.edit_win1_kendo = window["user_edit_win1_kendo"];
		window.edit_win1_form = edit_win1_dom.find("form");
		base.editWin.editWinButton(baseUtil.val("B.User.bindingDepartment"),
				"p_o_departmentIds", "p_o_departmentIds", baseUtil
						.val("B.User.bindingDepartment"), "", edit_win1_form
						.find(".k-grid-content"), "fa fa-share-alt");
		base.editWin.editWinButton(baseUtil.val("B.Department.bindingRole"),
				"p_o_roleIds", "p_o_roleIds", baseUtil
						.val("B.Department.bindingRole"), "", edit_win1_form
						.find(".k-grid-content"), "fa fa-share-alt");
		clickUserSelectRoleIdToShowEditWin2();
		clickUserSelectDepartmentIdToShowEditWin3();
		/**
		 * 添加用户头像上传按钮。
		 */
		baseWidget.button("headImgUpload", null, baseUtil
				.val("B.User.userHeadImgUpload.placeholder"),
				$(".k-edit-field.userHeadImg"), "headImgUpload",
				"fa fa-scissors");
		/**
		 * 点击头像上传按钮
		 */
		$("#headImgUpload").click(
				function() {
					baseUtil.reset(edit_win5_form);
					base.editWin.showWin(edit_win5_kendo, baseUtil
							.val("B.User.userHeadImgUpload.placeholder"),
							edit_win5_form_validator, edit_win5_dom);
					baseWidget.refreshImageCut(edit_win5_form, "userHeadImg");
				});
		/**
		 * 为邮箱输入添加校验
		 */
		window.userCRUDCheckUserEmail = function(input) {
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
		$("#userEmail").attr("kendo_validMethod", "userCRUDCheckUserEmail");

	};
	window.userCRUDGrid = base.grid.init(divId, gridReadUrl,
			extendDataFirstBound);

	/**
	 * 更新或者查看权限树时，一级弹出框的findOne数据没有办法带回该角色绑定的权限id，
	 * 所以需要单独使用ajax带回来。
	 */
	edit_win1_kendo.bind("open", function() {
		if ("save" != ACTION && "undefined" != typeof updateTargetId) {
			baseUtil.AJpost(ctx
					+ "/baseUserWS/UserReadService/findDepartmentIdsByUserId",
					{
						"p_o_userId" : updateTargetId

					}, function(data) {
						$("#p_o_departmentIds").val(data.join(","));
					});
			baseUtil.AJpost(ctx
					+ "/baseUserWS/UserReadService/findRoleIdsByUserId", {
				"p_o_userId" : updateTargetId
			}, function(data) {
				$("#p_o_roleIds").val(data.join(","));
			});
		}
	});

	/**
	 * 二级弹出式编辑框（部门树）
	 */
	base.editWin
			.init(
					divId,
					3,
					"user",
					$("<div id='user_edit_win3_department_treeView' class='base-edit-win-content'></div>"),
					function() {
						var checkNodesIds = [];
						edit_win3_form.find("[type='checkbox']").each(
								function() {
									if (this.checked) {
										checkNodesIds.push($(this).attr("id"));
									}
								});
						$("#p_o_departmentIds").val(checkNodesIds.join(","));
					}, null, null, 600);
	/**
	 * 这四个变量基本初始化弹出框之后都要获取，不管用不用
	 */
	window.edit_win3_kendo = window["user_edit_win3_kendo"];
	window.edit_win3_dom = window["user_edit_win3_dom"];
	window.edit_win3_form = edit_win3_dom.find("form");
	window.edit_win3_form_validator = window["user_edit_win3_form_validator"];
	/**
	 * 在部门树的下方添加两个按钮“全部展开”和“全部收起”。
	 */
	window.user_edit_win3_department_treeView_data = null;
	edit_win3_dom.find(".k-edit-buttons").prepend(
			baseWidget.treeAllCollapseButtonHtml);
	edit_win3_dom.find(".k-edit-buttons").prepend(
			baseWidget.treeAllExpandButtonHtml);
	edit_win3_dom.find(".base-grid-edit-expand").click(
			function() {
				user_edit_win3_department_treeView_data.expand(edit_win3_dom
						.find(".k-item"));
			});
	edit_win3_dom.find(".base-grid-edit-collapse").click(
			function() {
				user_edit_win3_department_treeView_data.collapse(edit_win3_dom
						.find(".k-item"));
			});
	/**
	 * 初始化二级弹出框的部门树。
	 * 用户选定一个部门，该部门的子部门不会同时选定，因为用户可能属于某几个部门，但是他不一定说
	 * 选择了上级部门，他同时也属于下级的所有部门。
	 */
	window.edit_win3_treeView_kendo = baseWidget.treeViewByElement(
			$("#user_edit_win3_department_treeView"), null, null, [],
			"p_o_departmentId", true);
	/**
	 * 点击一级弹出框的“上级部门”，弹出二级弹出框（部门树）
	 */
	var clickUserSelectDepartmentIdToShowEditWin3 = function() {
		edit_win1_dom
				.find("#p_o_departmentIds")
				.click(
						function() {
							user_edit_win3_department_treeView_data = $(
									"#user_edit_win3_department_treeView")
									.data("kendoTreeView");
							var user_edit_win3_department_treeView_dataSource = baseWidget
									.treeDataSource(
											ctx
													+ "/baseUserWS/DepartmentReadService/findChildrenByDepartmentId",
											"p_o_departmentId", {
												"p_o_lang" : $.cookie("lang")
											});
							user_edit_win3_department_treeView_data
									.setDataSource(user_edit_win3_department_treeView_dataSource);
							//setDataSource()方法执行时马上会调用一次请求，将数据源更新，并且刷新控件。
							base.editWin.showWin(edit_win3_kendo, baseUtil
									.val("B.User.bindingDepartment"),
									edit_win3_form_validator, edit_win3_dom);
							baseWidget.expendAllTreeNodesAndCheckParent(
									edit_win3_dom,
									user_edit_win3_department_treeView_data, $(
											"#p_o_departmentIds").val(), false,
									null, false);
						});
	};

	/**
	 * 二级弹出式编辑框（角色树）
	 */
	base.editWin
			.init(
					divId,
					2,
					"user",
					$("<div id='user_edit_win2_role_treeView' class='base-edit-win-content'></div>"),
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
	window.edit_win2_kendo = window["user_edit_win2_kendo"];
	window.edit_win2_dom = window["user_edit_win2_dom"];
	window.edit_win2_form = edit_win2_dom.find("form");
	window.edit_win2_form_validator = window["user_edit_win2_form_validator"];
	/**
	 * 在角色树的下方添加两个按钮“全部展开”和“全部收起”。
	 */
	window.user_edit_win2_role_treeView_data = null;
	edit_win2_dom.find(".k-edit-buttons").prepend(
			baseWidget.treeAllCollapseButtonHtml);
	edit_win2_dom.find(".k-edit-buttons").prepend(
			baseWidget.treeAllExpandButtonHtml);
	edit_win2_dom.find(".base-grid-edit-expand").click(
			function() {
				user_edit_win2_role_treeView_data.expand(edit_win2_dom
						.find(".k-item"));
			});
	edit_win2_dom.find(".base-grid-edit-collapse").click(
			function() {
				user_edit_win2_role_treeView_data.collapse(edit_win2_dom
						.find(".k-item"));
			});
	/**
	 * 初始化二级弹出框的角色树。
	 * 用户选择某角色，该角色下的子角色不一定被选定，也就是说，当有角色软件部总经理，
	 * 它下面有应用开发部主管，和程序员，那么用户选定了软件部总经理，它并不会同时
	 * 担任应用开发部主管和程序员，但是就权限来说，它拥有了软件部总经理，应用开发部主管和
	 * 程序员的所有权限之和。但显示该用户是哪个角色时，我们只会显示软件部总经理。所以
	 * 用户的权限是它拥有的角色及该角色所有自角色的权限之和。
	 */
	window.edit_win2_treeView_kendo = baseWidget.treeViewByElement(
			$("#user_edit_win2_role_treeView"), null, null, [], "p_o_roleId",
			true);
	/**
	 * 点击一级弹出框的“角色绑定”，弹出二级弹出框（角色树）
	 */
	var clickUserSelectRoleIdToShowEditWin2 = function() {
		edit_win1_dom
				.find("#p_o_roleIds")
				.click(
						function() {
							user_edit_win2_role_treeView_data = $(
									"#user_edit_win2_role_treeView").data(
									"kendoTreeView");
							var user_edit_win2_role_treeView_dataSource = baseWidget
									.treeDataSource(
											ctx
													+ "/baseUserWS/RoleReadService/findChildrenByRoleIdLimitByDepartmentId",
											"p_o_roleId",
											function() {
												return {
													"p_o_departmentIds" : $(
															"#p_o_departmentIds")
															.val()
												};
											});
							user_edit_win2_role_treeView_data
									.setDataSource(user_edit_win2_role_treeView_dataSource);
							//setDataSource()方法执行时马上会调用一次请求，将数据源更新，并且刷新控件。
							base.editWin.showWin(edit_win2_kendo, baseUtil
									.val("B.Department.bindingRole"),
									edit_win2_form_validator, edit_win2_dom);
							baseWidget.expendAllTreeNodesAndCheckParent(
									edit_win2_dom,
									user_edit_win2_role_treeView_data, $(
											"#p_o_roleIds").val(), true, null,
									false);
						});
	};

	/**
	 * 初始化头像编辑弹出框
	 */
	base.editWin
			.init(
					divId,
					5,
					"user",
					"",
					function() {
						var userHeadImgData = {};
						if (baseUtil
								.isNoEmpty(window["currentUploadIdsuserHeadImg"])) {
							userHeadImgData["uploadId"] = window["currentUploadIdsuserHeadImg"];
						}
						if (baseUtil
								.isNoEmpty(window["imageCutResultuserHeadImg"])) {
							userHeadImgData["imageCutData"] = window["imageCutResultuserHeadImg"];
						}
						if ({} != userHeadImgData) {
							edit_win1_dom.find("#userHeadImg").attr("imageVal",
									JSON.stringify(userHeadImgData));
						}
					}, "post", null, 800);
	window.edit_win5_kendo = window["user_edit_win5_kendo"];
	window.edit_win5_dom = window["user_edit_win5_dom"];
	window.edit_win5_form = edit_win5_dom.find("form");
	window.edit_win5_form_validator = window["user_edit_win5_form_validator"];
	baseWidget.imageCut("userHeadImg", edit_win5_form, [ {
		width : 100,
		height : 100
	}, {
		width : 80,
		height : 80
	}, {
		width : 32.7,
		height : 32.7
	} ]);

});
