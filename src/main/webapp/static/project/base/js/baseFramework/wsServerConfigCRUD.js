$(function() {

	$("title").text(baseUtil.val("B.WsServerConfig"));
	/**
	 * 主列表初始化
	 */
	var divId = "wsServerConfigCRUDGrid";
	var gridReadUrl = ctx + "/baseFrameworkWS/WsServerConfig";
	var extendDataFirstBound = function() {
		window.edit_win1_dom = window["wsServerConfig_edit_win1_dom"];
		window.edit_win1_kendo = window["wsServerConfig_edit_win1_kendo"];
		window.edit_win1_form = edit_win1_dom.find("form");
		clickWsServerConfigHostPortToShowEditWin2();
	};
	window.wsServerConfigCRUDGrid = base.grid.init(divId, gridReadUrl,
			extendDataFirstBound);

	/**
	 * WsServerConfigWsName的值查询的是TemplatePropertiesWsName的值。
	 * 新增的时候，为了让已经选过的WS子服务不能再被选，所以需要重新获取一下WsName数据。
	 * 但是更新或者查看的时候，则要获取所有WsName数据，以供匹配显示。
	 */
	edit_win1_kendo
			.bind(
					"open",
					function() {
						var wsServerConfigWsNameKendoData = $(
								"#wsServerConfigWsName").data(
								"kendoDropDownList");
						var filterHasChooseWsNameUrl = ctx
								+ "/baseCodeGeneratorWS/TemplatePropertiesReadService/findAllTemplatePropertiesWsName";
						var filterParams = {};
						if ("save" == ACTION) {
							filterParams = {
								"p_o_filterHasChooseWsName" : "Y"
							};
							wsServerConfigWsNameKendoData.enable(true);
						} else {
							wsServerConfigWsNameKendoData.enable(false);
						}
						baseUtil.AJpost(filterHasChooseWsNameUrl, filterParams,
								function(data) {
									wsServerConfigWsNameKendoData.dataSource
											.data(data);
								});
					});

	/**
	 * 二级弹出式编辑框
	 */
	base.editWin.init(divId, 2, "wsServerConfig",
			$("<div id='wsServerConfig_edit_win2_grid'></div>"), function() {
				var hosts = edit_win2_dom.find(".host");
				var ports = edit_win2_dom.find(".port");
				var hostPorts = [];
				hosts
						.each(function(i) {
							hostPorts.push($(this).val() + "|"
									+ $(ports.get(i)).val());
						});
				edit_win1_form.find("#wsServerConfigHostPort").val(
						JSON.stringify(hostPorts));
				//估计作用是触发校验
				edit_win1_dom.find("#wsServerConfigHostPort").trigger("blur");
			}, null, null, 600);
	/**
	 * 这四个变量基本初始化弹出框之后都要获取，不管用不用
	 */
	window.edit_win2_kendo = window["wsServerConfig_edit_win2_kendo"];
	window.edit_win2_dom = window["wsServerConfig_edit_win2_dom"];
	window.edit_win2_form = edit_win2_dom.find("form");
	window.edit_win2_form_validator = window["wsServerConfig_edit_win2_form_validator"];

	/**
	 * 二级弹出框列表
	 */
	var deleteButtton = baseWidget.buttonHtml(
			"deleteWsServerConfigHostPortRow", "", baseUtil.val("N.delete"),
			"deleteHostPortButtonDiv", "fa fa-trash-o");
	/**
	 * 二级弹出框“新增”时的初始数据。
	 */
	var edit_win2_grid_data = [ {
		"deleteHostPortButton" : deleteButtton,
		"host" : "",
		"port" : ""
	} ];
	var edit_win2_grid_dataSource = new kendo.data.DataSource({
		data : edit_win2_grid_data
	});
	var edit_win2_grid_columns = [];
	edit_win2_grid_columns
			.push(base.grid
					.simpleColumn(
							"host",
							"<input title='"
									+ "子服务的 ip或者localhost"
									+ "' id='host' name='host' kendo_required='true' validationMessage='required' class='k-input k-textbox host' type='text' value='#=baseUtil.format(host)#' placeholder='"
									+ "子服务的 ip或者localhost" + "'></input>",
							"<div class='base-grid-title' title='Host'>Host"
									+ baseUtil.redStar + "</div>", "45%"));
	edit_win2_grid_columns
			.push(base.grid
					.simpleColumn(
							"port",
							"<input title='"
									+ "子服务的 port，如：8080"
									+ "' id='port' name='port' kendo_required='true' validationMessage='required' class='k-input k-textbox port' type='text' value='#=baseUtil.format(port)#' placeholder='"
									+ "子服务的 port，如：8080" + "'></input>",
							"<div class='base-grid-title' title='Port'>Port"
									+ baseUtil.redStar + "</div>", "45%"));
	edit_win2_grid_columns.push(base.grid.simpleColumn("deleteHostPortButton",
			"#=deleteHostPortButton#", baseWidget.buttonHtml(
					"addHostPortButton", "", baseUtil.val("N.add"), "",
					"fa fa-plus"), "10%"));
	var edit_win2_grid_dataBound = function() {
		var tbody = $("#wsServerConfig_edit_win2_grid").find("tbody");
		base.grid.reflashRow(tbody);
		$("#addHostPortButton").unbind("click").click(
				function() {
					base.grid.addRow($("#wsServerConfig_edit_win2_grid"),
							".deleteHostPortButtonDiv",
							edit_win2_form_validator, hostPortOnClick);
				});
		base.grid.deleteRow(".deleteHostPortButtonDiv");
		base.fixUI.fixLastRowBorderWidth(edit_win2_dom, 300);
	};
	window.edit_win2_grid_kendo = base.grid.simpleGrid(
			"wsServerConfig_edit_win2_grid", edit_win2_grid_dataSource,
			edit_win2_grid_columns, 396, null, edit_win2_grid_dataBound);
	/**
	 * 点击一级弹出框的“属性及注释”，弹出二级弹出框
	 */
	var clickWsServerConfigHostPortToShowEditWin2 = function() {
		edit_win1_dom
				.find("#wsServerConfigHostPort")
				.click(
						function() {
							var findOneData = [];
							baseUtil.reset(edit_win2_form);
							var wsServerConfigHostPort = baseUtil.json($(
									"#wsServerConfigHostPort").val());
							if ("save" == ACTION && !wsServerConfigHostPort) {
								//新增的时候展现二级弹出框有两种情况，一种是点击“+”按钮弹出一级弹出框，然后点击“属性及注释”
								//弹出二级弹出框，这时二级弹出框的内容肯定是初始内容。第二种情况是，我已经弹出了二级弹出框，
								//并且编辑了，然后确定关闭二级弹出框，再点击“属性及注释”，那么再次弹出的二级弹出框的内容就
								//不能是初始值，而是用户编辑过的二级弹出框，但是这些数据还没有保存，需要给用户还原出来。
								//所以，一旦是ACTION为SAVE，并且#wsServerConfigHostPort没有值的情况下，
								//才是第一种情况，给与二级弹出框初始值。
								findOneData = edit_win2_grid_data;
							} else {
								var data = [];
								for ( var i in wsServerConfigHostPort) {
									var d = {
										"deleteHostPortButton" : deleteButtton,
										"host" : wsServerConfigHostPort[i]
												.split("|")[0],
										"port" : wsServerConfigHostPort[i]
												.split("|")[1]
									};
									data.push(d);
								}
								findOneData = data;
							}
							edit_win2_grid_dataSource = new kendo.data.DataSource(
									{
										data : findOneData
									});
							edit_win2_grid_kendo
									.setDataSource(edit_win2_grid_dataSource);
							//setDataSource()方法执行时马上会调用一次请求，将数据源更新，并且刷新控件。
							if ("view" == ACTION) {
								baseUtil
										.disabled($("#wsServerConfig_edit_win2_grid"));
							} else {
								baseUtil
										.notDisabled($("#wsServerConfig_edit_win2_grid"));
							}
							edit_win2_form.find("tbody td").css("border-width",
									"1px 0px");
							base.editWin.showWin(edit_win2_kendo, "Host Port",
									edit_win2_form_validator, edit_win2_dom);
							/**
							 * 调整二级弹出框的列表行高度。
							 */
							edit_win2_dom.find("[role=gridcell]").css(
									"padding", "5px");
							hostPortOnClick(edit_win2_dom);
						});
	};

	function hostPortOnClick(selection) {
		/**
		 * 让列表可拖动排序
		 */
		$("#wsServerConfig_edit_win2_grid tbody").kendoSortable({
			hint : function(element) {
				return element.clone().addClass("base-hostPort-hint");
			},
			ignore : "input,button",
			cursor : "move",
			axis : "y"
		});
	}
});
