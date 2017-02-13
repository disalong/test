$(function() {
	$("title").text(baseUtil.val("B.Permission"));
	/**
	 * 主列表初始化
	 */
	var divId = "permissionCRUDGrid";
	var gridReadUrl = ctx + "/baseUserWS/Permission";
	var extendDataFirstBound = function() {
		window.edit_win1_dom = window["permission_edit_win1_dom"];
		window.edit_win1_kendo = window["permission_edit_win1_kendo"];
		window.edit_win1_form = edit_win1_dom.find("form");
		//调整一级输入框高度，每个模块的一级数据框高度基本都要手动调整一下。
		edit_win1_form.find(".k-grid-content").css("min-height", "400px");
	};
	window.permissionCRUDGrid = base.grid.init(divId, gridReadUrl,
			extendDataFirstBound);

	//修改或者查看的时候，让一级弹出框的源模块“只读”，不允许修改。
	edit_win1_kendo.bind("open", function() {
		var permissionTargetNameKendoData = $("#permissionTargetName").data(
				"kendoDropDownList");
		if ("save" == ACTION) {
			permissionTargetNameKendoData.enable(true);
		} else {
			permissionTargetNameKendoData.enable(false);
		}
		permissionNameOnClick(edit_win1_dom);
	});

	//告诉你当前那个属性正在点开多语言弹出框，编辑多语言的内容，用于多语言编辑框确定之后，值赋回该属性中。
	window.i18nEditField = "";

	/**
	 * 弹出式多语言编辑框
	 */
	base.editWin.init(divId, 5, "permission", null, function() {
		var formToJson = baseUtil.formToJson(edit_win5_form);
		$("#" + i18nEditField).val(formToJson);
		$("#" + i18nEditField).trigger("blur");
	}, null, null, 600);
	window.edit_win5_kendo = window["permission_edit_win5_kendo"];
	window.edit_win5_dom = window["permission_edit_win5_dom"];
	window.edit_win5_form = edit_win5_dom.find("form");
	window.edit_win5_form_validator = window["permission_edit_win5_form_validator"];
	//为了控制弹出框的高度，让弹出框中的内容出现纵向滚动条，我们将所有的编辑输入框都放到弹出框的form下面的class=k-grid-content的div中。
	var edit_win5_scroll_content = edit_win5_form.find(".k-grid-content");
	edit_win5_scroll_content.css("height", "220px");
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
	 * 点击一级弹出框的“权限名”输入框，弹出多语言编辑框
	 */
	function permissionNameOnClick(selection) {
		selection.find("#permissionName").unbind("click");
		var title = baseUtil.val("B.TemplateProperties.editI18n") + " - "
				+ baseUtil.val("B.Permission.permissionName");
		selection.find("#permissionName").bind(
				"click",
				function(e) {
					i18nEditField = "permissionName";
					baseUtil.reset(edit_win5_form);
					base.editWin.showWin(edit_win5_kendo, title,
							edit_win5_form_validator, edit_win5_dom);
					baseUtil.jsonToForm($("#permissionName").val(),
							edit_win5_form);
				});
	}
});
