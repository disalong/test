$(function() {

	$("title").text(baseUtil.val("B.ExceptionPersistence"));
	/**
	 * 主列表初始化
	 */
	var divId = "exceptionPersistenceCRUDGrid";
	var gridReadUrl = ctx + "/baseExceptionPersistenceWS/ExceptionPersistence";
	var extendDataFirstBound = function() {
		window.edit_win1_dom = window["exceptionPersistence_edit_win1_dom"];
		window.edit_win1_kendo = window["exceptionPersistence_edit_win1_kendo"];
		window.edit_win1_form = edit_win1_dom.find("form");
	};
	window.exceptionPersistenceCRUDGrid = base.grid.init(divId, gridReadUrl,
			extendDataFirstBound);
});
