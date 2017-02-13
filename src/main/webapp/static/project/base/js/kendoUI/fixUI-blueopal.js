/**
 * kendo ui中，每个样式的界面都会有轻微的变形，需要js中进行调整。
 * 添加一种样式，在此文件的同级目录中添加多一个文件即可，命名规范
 * 是"fixUI-样式名.js"。每个文件的方法名都是一致的。我们会按照
 * 不同的样式名来加载不同的fixUI-xxx.js文件
 */

base.fixUI = {};

/**
 * 当列表出现滚动条之后，页码栏的位置太往下，需要轻微调整，但是每种皮肤还不太一样，所以需要轻微调整。
 * 因为我们通过grid的height属性指定了整个表格包括菜单栏的高度，但是表格记录内容的高度则是kendo计算
 * 得出，得到的效果会有偏差，所以我们按实际情况调整表格记录内容的高度即可。
 * 
 * divId:整个grid的外层id的id，约定为“jsp名+Grid”;
 * gridHeight：配置中指定的fgConfig.gridHeight，整个列表的高度。
 */
base.fixUI.getFixDifferUIGridContextHeight = function(divId, gridHeight) {
	var fixDifferUIGridContextHeight = gridHeight - 161;
	return fixDifferUIGridContextHeight;
};

/**
 * 调整表格的css
 */
base.fixUI.fixGridStyle = function(divId) {
	/**
	 * 调节页码栏高度
	 */
	$(".k-pager-wrap").css("min-height", "0px");
	$(".k-floatwrap .k-pager-nav").css("padding-top", "3px");
	/**
	 * 调整页码栏输入跳页输入框位置。
	 */
	$("#" + divId).find(".k-pager-input").css("padding-top", "8px");
	/**
	 * 调整页码栏选择pageSize。
	 */
	$("#" + divId).find(".k-pager-sizes").css("padding-top", "13px");
	$("#" + divId).find(".k-pager-sizes .k-dropdown-wrap").css({
		"height" : "28px",
		"margin-top" : "-2px"
	});
	$("#" + divId).find(".k-pager-sizes .k-dropdown-wrap").find(".k-input")
			.css("line-height", "0.8em");
	$("#" + divId).find(".k-pager-sizes .k-dropdown-wrap .k-i-arrow-s").css(
			"margin-top", "-2px");
	/**
	 * 调整页码栏的按钮图标位置。
	 */
	$("#" + divId).find(".k-pager-wrap a .k-icon").css({
		"margin-top" : "3px",
		"margin-right" : "2px"
	});
	/**
	 * 调整页码栏刷新图标位置。
	 */
	$(".k-pager-refresh").css("margin-top", "7px");
	$("#" + divId).find(".k-pager-wrap .k-i-refresh").css({
		"margin-top" : "8px",
		"margin-right" : "4px"
	});
	/**
	 * 调整页面所有操作按钮图标位置。
	 */
	$(".k-button .k-icon:not(.k-filtercell .k-icon)").css({
		"margin-top" : "3px",
	});
	/**
	 * 调整列头动态列图标位置。
	 */
	$(".k-header-column-menu .k-icon").css({
		"margin-top" : "3px",
	});
	/**
	 * 调整表头过滤行的输入框。
	 */
	$(".k-filter-row .k-input").css({
		"height" : "13px"
	});
	$(".k-filtercell .k-button-icon").css({
		"height" : "32.7px",
		"width" : "32.7px",
		"margin-right" : "-7px"
	});
	$(".k-filtercell .k-button-icon .k-i-close").css({
		"margin-top" : "-4px",
		"margin-left" : "-2px"
	});
	$(".k-grid-header th.k-header, .k-filter-row th").css("padding",
			"0.61em 0.6em 0.4em");
	/**
	 * 调整页面所有数字选择框
	 */
	$(".k-numeric-wrap .k-select .k-i-arrow-s").parent().css("margin-top",
			"-1px");
	$(".k-numeric-wrap .k-select .k-icon").css("margin-top", "3px");
	$(".k-numeric-wrap").css("height", "31px");
	$(".k-numeric-wrap .k-link").css({
		"width" : "34px",
		"height" : "16px"
	});
	/**
	 * 调整页面所有日期选择框
	 */
	$(".k-picker-wrap").css("height", "31px");
	$(".k-picker-wrap .k-i-calendar, .k-picker-wrap .k-i-clock").css(
			"margin-top", "8px");
	$(".k-picker-wrap .k-input").css("height", "13px");
	/**	
	 * 调整列表行高度
	 */
	$(".k-grid td").css("padding", "0.45em 1.286em");
	/**
	 * 字体以及样式
	 */
	$("html").css({
		"font-size" : "86%",
		"font-weight" : "normal",
		"font-family" : "Arial,Helvetica,sans-serif"
	});
	/**
	 * 列表编辑按钮调整。
	 */
	$(".k-grid-toolbar button").css("height", "29px");
	$(".k-grid-toolbar .k-icon").css("margin-top", "-6px");
	/**
	* 调整弹出框的输入框高度
	*/
	$(".k-edit-field .k-input:not(span .k-input)").css("height", "32.7px");
	$(".k-edit-field span .k-input").css("height", "14px");
	/**
	 * 列表单元格不要有左边框。
	 */
	$("#" + divId).find("table.k-selectable").find("td").css("border-width",
			"1px 0 0 0");
};
