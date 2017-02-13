$(function() {

	$("title").text(baseUtil.val("B.EmailSend"));
	/**
	 * 主列表初始化
	 */
	var divId = "emailSendCRUDGrid";
	var gridReadUrl = ctx + "/baseEmailWS/EmailSend";
	var extendDataFirstBound = function() {
		window.edit_win1_dom = window["emailSend_edit_win1_dom"];
		window.edit_win1_kendo = window["emailSend_edit_win1_kendo"];
		window.edit_win1_form = edit_win1_dom.find("form");
	};
	window.emailSendCRUDGrid = base.grid.init(divId, gridReadUrl,
			extendDataFirstBound);
});
