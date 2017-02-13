$(function() {
	$("title").text(baseUtil.val("B.ColourPalette"));
	/**
	 * 主列表初始化
	 */
	var divId = "colourPaletteCRUDGrid";
	var gridReadUrl = ctx + "/baseFrameworkWS/ColourPalette";
	var extendDataFirstBound = function() {
		window.edit_win1_dom = window["colourPalette_edit_win1_dom"];
		window.edit_win1_kendo = window["colourPalette_edit_win1_kendo"];
		window.edit_win1_form = edit_win1_dom.find("form");
		//调整一级输入框高度，每个模块的一级数据框高度基本都要手动调整一下。
		edit_win1_form.find(".k-grid-content").css("min-height", "185px");
		clickColourPaletteCellColoursToShowEditWin2();
	};
	var extendDataEachBound = function() {
		/**
		 * 将“色块集合”列的内容显示成一个图标，移动到图标上方，显示色块集合的缩略图。
		 */
		$(".colourPaletteCellColours")
				.each(
						function(i) {
							$(this).removeAttr("title");
							var colorPaletteImg = "<img id='colorPaletteImg"
									+ i
									+ "' src='"
									+ ctx
									+ "/static/project/base/style/image/fioir-ColorPalette-colorSet-24px.png' style='height: 22px'/>";
							var colorSetText = $(this).text();
							$(this).html(colorPaletteImg);
							var colorPaletteImgDom = $(this).find(
									"#colorPaletteImg" + i);
							colorPaletteImgDom.attr("kendo_title_type",
									"colorPalette");
							colorPaletteImgDom
									.attr("kendo_title", colorSetText);
							baseWidget.tips(colorPaletteImgDom, null, false);
							baseUtil.fadeIn($(this));
						});
	};
	window.colourPaletteCRUDGrid = base.grid.init(divId, gridReadUrl,
			extendDataFirstBound, extendDataEachBound);

	/**
	 * 二级弹出式编辑框
	 */
	base.editWin
			.init(
					divId,
					2,
					"colourPalette",
					$("<div id='colourPalette_edit_win2_grid' style='border-top: 0px'></div>"),
					function() {
						var seq_cellColorValues = {};
						var sequences = [];
						var cellColorValues = [];
						edit_win2_form.find(".colourPicker").each(function() {
							var seq = $(this).closest("td").find(".sequence");
							seq_cellColorValues[seq.val()] = $(this).val();
							sequences.push(seq.val());
						});
						sequences = baseUtil.sortArrayASC(sequences);
						for ( var i in sequences) {
							cellColorValues
									.push(seq_cellColorValues[sequences[i]]);
						}
						$("#colourPaletteCellColours").val(
								cellColorValues.join(","));
					}, null, null, 600);
	/**
	 * 这四个变量基本初始化弹出框之后都要获取，不管用不用
	 */
	window.edit_win2_kendo = window["colourPalette_edit_win2_kendo"];
	window.edit_win2_dom = window["colourPalette_edit_win2_dom"];
	window.edit_win2_form = edit_win2_dom.find("form");
	window.edit_win2_form_validator = window["colourPalette_edit_win2_form_validator"];

	var edit_win2_grid_dataSource = new kendo.data.DataSource({
		data : []
	});
	var edit_win2_grid_columns = [];
	edit_win2_grid_columns
			.push(base.grid
					.simpleColumn(
							"cellColour0",
							"<input title='"
									+ baseUtil
											.val("B.ColourPalette.sequence.placeholder")
									+ "' name='sequence' kendo_required='true' kendo_pattern='"
									+ baseConstant.pattern.numberOnly
									+ "' validationMessage='"
									+ baseUtil.val("E.required")
									+ ","
									+ baseUtil.val("E.numberOnly")
									+ "' class=' k-input k-textbox sequence' style='width:40px; height:33.7px;margin-right: 2px' type='text' value='#=baseUtil.format(sequence0)#'></input>"
									+ "<input id='#=id0#' name='#=name0#' class='colourPicker' value='#=baseUtil.format(value0)#'/>",
							"", "20%"));
	edit_win2_grid_columns
			.push(base.grid
					.simpleColumn(
							"cellColour1",
							"<input title='"
									+ baseUtil
											.val("B.ColourPalette.sequence.placeholder")
									+ "' name='sequence' kendo_required='true' kendo_pattern='"
									+ baseConstant.pattern.numberOnly
									+ "' validationMessage='"
									+ baseUtil.val("E.required")
									+ ","
									+ baseUtil.val("E.numberOnly")
									+ "' class=' k-input k-textbox sequence' style='width:40px; height:33.7px;margin-right: 2px' type='text' value='#=baseUtil.format(sequence1)#'></input>"
									+ "<input class='colourPicker' id='#=id1#' name='#=name1#' value='#=baseUtil.format(value1)#'/>",
							"a", "20%"));
	edit_win2_grid_columns
			.push(base.grid
					.simpleColumn(
							"cellColour2",
							"<input title='"
									+ baseUtil
											.val("B.ColourPalette.sequence.placeholder")
									+ "' name='sequence' kendo_required='true' kendo_pattern='"
									+ baseConstant.pattern.numberOnly
									+ "' validationMessage='"
									+ baseUtil.val("E.required")
									+ ","
									+ baseUtil.val("E.numberOnly")
									+ "' class=' k-input k-textbox sequence' style='width:40px; height:33.7px;margin-right: 2px' type='text' value='#=baseUtil.format(sequence2)#'></input>"
									+ "<input class='colourPicker' id='#=id2#' name='#=name2#' value='#=baseUtil.format(value2)#'/>",
							"", "20%"));
	edit_win2_grid_columns
			.push(base.grid
					.simpleColumn(
							"cellColour3",
							"<input title='"
									+ baseUtil
											.val("B.ColourPalette.sequence.placeholder")
									+ "' name='sequence' kendo_required='true' kendo_pattern='"
									+ baseConstant.pattern.numberOnly
									+ "' validationMessage='"
									+ baseUtil.val("E.required")
									+ ","
									+ baseUtil.val("E.numberOnly")
									+ "' class=' k-input k-textbox sequence' style='width:40px; height:33.7px;margin-right: 2px' type='text' value='#=baseUtil.format(sequence3)#'></input>"
									+ "<input class='colourPicker' id='#=id3#' name='#=name3#' value='#=baseUtil.format(value3)#'/>",
							"", "20%"));
	var edit_win2_grid_dataBound = function() {
		edit_win2_form.find(".colourPicker").each(function() {
			baseWidget.colorPickerByElement($(this), null, null);
		});
		base.fixUI.fixLastRowBorderWidth(edit_win2_dom, 300);
		edit_win2_form.find(".k-grid-content td").css("padding",
				"5px 10px 5px 15px");
		edit_win2_form.find(".k-grid-header").remove();
	};
	window.edit_win2_grid_kendo = base.grid.simpleGrid(
			"colourPalette_edit_win2_grid", edit_win2_grid_dataSource,
			edit_win2_grid_columns, 396, null, edit_win2_grid_dataBound);

	/**
	 * 点击一级弹出框的“色块集合”，弹出二级弹出框
	 */
	var clickColourPaletteCellColoursToShowEditWin2 = function() {
		edit_win1_dom
				.find("#colourPaletteCellColours")
				.click(
						function() {
							/**
							 * 二级弹出框“新增”时的初始数据。
							 */
							var colourPaletteCellCount = $(
									"#colourPaletteCellCount").val();
							var edit_win2_grid_data = [];
							var colorCellSequence = -1;
							for (var i = 0; i < (colourPaletteCellCount / 4); i++) {
								colorCellSequence++;
								edit_win2_grid_data.push({
									"sequence0" : (colorCellSequence + 1),
									"value0" : "#ffffff",
									"id0" : "colourPicker" + colorCellSequence,
									"name0" : "colourPicker"
											+ colorCellSequence,
									"sequence1" : (colorCellSequence + 2),
									"value1" : "#ffffff",
									"id1" : "colourPicker"
											+ (colorCellSequence += 1),
									"name1" : "colourPicker"
											+ colorCellSequence,
									"sequence2" : (colorCellSequence + 2),
									"value2" : "#ffffff",
									"id2" : "colourPicker"
											+ (colorCellSequence += 1),
									"name2" : "colourPicker"
											+ colorCellSequence,
									"sequence3" : (colorCellSequence + 2),
									"value3" : "#ffffff",
									"id3" : "colourPicker"
											+ (colorCellSequence += 1),
									"name3" : "colourPicker"
											+ colorCellSequence
								});
							}
							if (!$("#colourPaletteCellCount").val()) {
								baseUtil
										.alertE(baseUtil
												.val("E.ColourPalette.specifyCellCount"));
								return false;
							}
							var findOneData = [];
							baseUtil.reset(edit_win2_form);
							if ("save" == ACTION && !colourPaletteCellColours) {
								findOneData = edit_win2_grid_data;
							} else {
								var data = [];
								var colourPaletteCellColours = $(
										"#colourPaletteCellColours").val();
								var cellColours = colourPaletteCellColours
										.split(",");
								var seq = -1;
								for (var i = 0; i < cellColours.length; i++) {
									seq++;
									var d = {
										"sequence0" : (seq + 1),
										"value0" : cellColours[i],
										"id0" : "colourPicker" + seq,
										"name0" : "colourPicker" + seq,
										"sequence1" : (seq + 2),
										"value1" : cellColours[(i += 1)],
										"id1" : "colourPicker" + (seq += 1),
										"name1" : "colourPicker" + seq,
										"sequence2" : (seq + 2),
										"value2" : cellColours[(i += 1)],
										"id2" : "colourPicker" + (seq += 1),
										"name2" : "colourPicker" + seq,
										"sequence3" : (seq + 2),
										"value3" : cellColours[(i += 1)],
										"id3" : "colourPicker" + (seq += 1),
										"name3" : "colourPicker" + seq
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
							edit_win2_grid_kendo.refresh();
							if ("view" == ACTION) {
								baseUtil
										.disabled($("#colourPalette_edit_win2_grid"));
							} else {
								baseUtil
										.notDisabled($("#colourPalette_edit_win2_grid"));
							}
							base.editWin
									.showWin(
											edit_win2_kendo,
											baseUtil
													.val("B.ColourPalette.colourPaletteCellColours"),
											edit_win2_form_validator,
											edit_win2_dom);
						});
	};
});
