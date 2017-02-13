$(function() {

	$("title").text(baseUtil.val("B.FgConfig"));
	/**
	 * 主列表初始化
	 */
	var divId = "fgConfigCRUDGrid";
	var gridReadUrl = ctx + "/baseFrameworkWS/FgConfig";
	var extendDataFirstBound = function() {
		window.edit_win1_dom = window["fgConfig_edit_win1_dom"];
		window.edit_win1_kendo = window["fgConfig_edit_win1_kendo"];
		window.edit_win1_form = edit_win1_dom.find("form");
	};
	window.fgConfigCRUDGrid = base.grid.init(divId, gridReadUrl,
			extendDataFirstBound);
});
