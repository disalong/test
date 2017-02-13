$(function() {
	$("title").text(baseUtil.val("B.Session"));
	/**
	 * 主列表初始化
	 */
	var divId = "sessionCRUDGrid";
	var gridReadUrl = ctx + "/baseSessionWS/Session";
	var extendDataFirstBound = function() {
		window.edit_win1_dom = window["session_edit_win1_dom"];
		window.edit_win1_kendo = window["session_edit_win1_kendo"];
		window.edit_win1_form = edit_win1_dom.find("form");
	};
	window.sessionCRUDGrid = base.grid.init(divId, gridReadUrl,
			extendDataFirstBound);
});
