$(function() {

	$("title").text(baseUtil.val("B.BgConfig"));
	/**
	 * 主列表初始化
	 */
	var divId = "bgConfigCRUDGrid";
	var gridReadUrl = ctx + "/baseFrameworkWS/BgConfig";
	var extendDataFirstBound = function() {
		window.edit_win1_dom = window["bgConfig_edit_win1_dom"];
		window.edit_win1_kendo = window["bgConfig_edit_win1_kendo"];
		window.edit_win1_form = edit_win1_dom.find("form");
	};
	var extendDataEachBound = function() {
	};
	window.bgConfigCRUDGrid = base.grid.init(divId, gridReadUrl,
			extendDataFirstBound, extendDataEachBound);

	baseUtil.alertW(baseUtil.val("E.coutionEdit") + "<a href=''>《"
			+ baseUtil.val("N.systemCookBook") + "》</a>");
});
