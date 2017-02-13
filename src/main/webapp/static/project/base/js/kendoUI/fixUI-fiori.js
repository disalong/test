/**
 * kendo ui中，每个样式的界面都会有轻微的变形，需要js中进行调整。
 * 添加一种样式，在此文件的同级目录中添加多一个文件即可，命名规范
 * 是"fixUI-样式名.js"。每个文件的方法名都是一致的。我们会按照
 * 不同的样式名来加载不同的fixUI-xxx.js文件
 */

base.fixUI = {};

/**
 * 因为kendo的单元格的width是将单元格的宽度和里边内容的宽度，算出内容的padding，所以没法用css指定。
 */
base.fixUI.getCheckboxColumnWidth = function() {
	return checkboxColumnWidth = "56px";
};

/**
 * 当列表出现滚动条之后，页码栏的位置太往下，需要轻微调整，但是每种皮肤还不太一样，所以需要轻微调整。
 * 因为我们通过grid的height属性指定了整个表格包括菜单栏的高度，但是表格记录内容的高度则是kendo计算
 * 得出，得到的效果会有偏差，所以我们按实际情况调整表格记录内容的高度即可。
 * 
 * divId:整个grid的外层id的id，约定为“jsp名+Grid”;
 * gridHeight：配置中指定的fgConfig.gridHeight，整个列表的高度。
 * 
 * 此方法每次dataBound之后都会调用。
 */
base.fixUI.getFixDifferUIGridContextHeight = function(divId, gridHeight) {
	var fixDifferUIGridContextHeight = gridHeight - 178;
	if (baseUtil.isChrome()) {
		fixDifferUIGridContextHeight = gridHeight - 177;
	} else if (baseUtil.isIE()) {
		fixDifferUIGridContextHeight = gridHeight - 178;
	}
	return fixDifferUIGridContextHeight;
};

/**
 * 调整表格的css
 * 此方法只会在第一次dataBound之后调用。
 */
base.fixUI.fixGridStyleOnes = function(divId) {
	/**
	 * 表格底部的“输入页码跳转”的输入框位置调整到“跳到最后一页”按钮之后。
	 */
	$("#" + divId).find(".k-pager-last").after(
			$("#" + divId).find(".k-pager-input"));
	/**
	 * "每页显示多少条记录"下拉条的title提示
	 */
	$("#" + divId).find(".k-pager-sizes .k-dropdown-wrap").attr("title",
			baseUtil.val("N.rowsPerPage"));
	/**
	 * 让表头checkAll的旁边的表头显示隐藏按钮隐藏，否则会影响checkAll的显示（没法改成css，因为必须从id=checkAll定位它的父元素，css做不到）。
	 */
	var checkAll = $("#" + divId).find("#checkAll");
	checkAll.closest("th").find(".k-header-column-menu").hide();
};

/**
 * 后期将filter column的date类型的输入框变成日期选择控件，并微调控件的位置。
 * 具体原因查看getColumns()中"date" == fieldType的解释。
 * 
 * 对于不同的数据类型（string,number,singleSelect,date)，列搜索框的形式是不同。
 * 比如date类型，原本在columns.filterable.cell.template中可以将arg.element变成一个
 * 日期选择控件，但是由于这样做日期控件不受控制（不是onblur触发搜索，而是选中
 * 日期触发，那么我们想手动触发搜索输入框的onblur从而达到还原搜索选项的目的达不到，而且
 * 选中的日期无法停留在输入框中），所以思路是，date类型的搜索框依然简单的认为是
 * string类型的搜索框，然后再后面将搜索框变成日期选择控件。
 * 所以这个方法的作用是时候将date、number、singleSelect等类型的表头搜索框改变样式。让他们统一
 * onblur的时候进行搜索请求。
 */
base.fixUI.fixFilterColumnWidget = function(divId, targetFieldProperties) {
	var fieldType, filtercell, filtercellSpan, fieldProperties, selectData, selectFirstData = "";
	for ( var fieldName in targetFieldProperties) {
		fieldProperties = targetFieldProperties[fieldName];
		fieldType = fieldProperties["type"];
		fieldFormat = fieldProperties["format"];
		fieldLength = fieldProperties["length"];
		selectData = fieldProperties["selectData"];
		selectFirstData = fieldProperties["selectFirstData"];
		filtercell = $("#filtercell_" + fieldName);
		filtercellSpan = filtercell.closest(".k-filtercell");
		/**
		 * 当我们初始化grid的时候，设置了filterable : {mode : "row"}，那么就会出现列头的搜索，
		 * 这个搜索当鼠标移出时会进行自动的请求。并且默认的，它对于string,number,date,dataTime
		 * 这些控件还会进行autocomplete，这个autocomplete的搜索方式是kendo的filter row已经内置的，
		 * 在grid文档中没有额外的属性进行修改。所以我们想修改只能用以下的方式，通过后期得到autocomplete
		 * 对象，然后调用它的setOptions方法进行修改，比如，默认的，这个autocomplete是忽略大小写查询的，
		 * 即你输入的不管是大写还是小写，都转化为小写提交，但是数据库的查询是区分大小写的，所以它前端的转化
		 * 其实去到后台是查不到的，所以为了让前端提交最原始的数据，我们将控件的ignoreCase设为false，
		 * 至于搜索本身应该是要忽略大小写的，我们在后台处理。
		 */
		if ($(filtercell).data("kendoAutoComplete")) {
			$(filtercell).data("kendoAutoComplete").setOptions({
				"ignoreCase" : false
			});
		}
		if ("date" == fieldType || "dateTime" == fieldType) {
			if ("date" == fieldType) {
				baseWidget
						.datePicker(filtercell, null, null, fieldFormat, null);
			} else if ("dateTime" == fieldType) {
				baseWidget.dateTimePicker(filtercell, null, null, fieldFormat,
						null);
			}
		} else if ("number" == fieldType) {
			baseWidget.numericInput(filtercell, null, null, fieldFormat);
			filtercellSpan.find(".k-button").click(
					function() {
						//有闭包的问题，不能在onclick方法中直接使用filtercell，否则全部都是作用于最后一个filtercell，
						//只能使用this来重新定位内容，因为只有this不是外部定义的。
						$(this).closest(".k-filtercell").find(
								".k-formatted-value").val("");
					});
		} else if ("singleSelect" == fieldType || "multiSelect" == fieldType) {
			baseWidget.dropDownListByElement(filtercell, null, null,
					baseSelectItems[selectData] || selectData, null, baseUtil
							.val(selectFirstData)
							|| baseUtil.val("N.pleaseSelect"));
			filtercellSpan.find(".k-button").click(
					function() {
						//有闭包的问题，不能在onclick方法中直接使用filtercell，否则全部都是作用于最后一个filtercell，
						//只能使用this来重新定位内容，因为只有this不是外部定义的。
						$(this).closest(".k-filtercell").find("input.k-input")
								.data("kendoDropDownList").value("");
					});
		}
		$(".k-filtercell .k-button").attr("title", baseUtil.val("N.clear"));
	}
};

/**
 * 有些东西必须等到列表显示出来才能绑定的。
 * 此方法是每次dataBound之后都会调用。
 */
base.fixUI.afterDataShowAlways = function(divId, fixDifferUIGridContextHeight) {
	base.fixUI.fixLastRowBorderWidth($("#" + divId),
			fixDifferUIGridContextHeight);
};

/**
 * 如果表格的内容中出现了滚动条，那么最后一行的td的是不需要下边框的，也就是border-width: 1px 0px 0px;
 * 否则需要下边框，也就是border-width: 1px 0px 1px;因为当表格的数据不足以出现下拉条的时候，最后一行
 * 如果没有下边框则不好看了。
 * dom：根据这个dom找列表table；
 * gridContentHeight：列表内容高度。
 */
base.fixUI.fixLastRowBorderWidth = function(dom, gridContentHeight) {
	if (gridContentHeight > $(dom).find(".k-grid-content table").height()) {
		$(dom).find(".k-grid-content table tr:last td").css("border-width",
				"1px 0px 1px");
	}
};

/**
 * 根据targetFieldProperties中model属性的类型来生成一级弹出框的输入框的形式。比如date，number等类型，
 * 会显示不同的输入组件。
 */
base.fixUI.fixEditWinInputItemByPropertiesType = function(targetFields,
		targetFieldProperties) {
	//为了控制弹出框的高度，让弹出框中的内容出现纵向滚动条，我们将所有的编辑输入框都放到弹出框的form下面的class=k-grid-content的div中。
	var edit_win1_scroll_content = edit_win1_form.find(".k-grid-content");
	var fieldProperties, fieldType, fieldFormat, colour, attachment, selectData, selectFirstData = "";
	for ( var i in targetFields) {
		if (targetFieldProperties[i]["editable"]) {
			fieldProperties = targetFieldProperties[i];
			fieldType = fieldProperties["type"];
			fieldFormat = fieldProperties["format"];
			colour = targetFieldProperties[i]["colour"];
			attachment = targetFieldProperties[i]["attachment"];
			selectData = targetFieldProperties[i]["selectData"];
			selectFirstData = targetFieldProperties[i]["selectFirstData"];
			if ("date" == fieldType || "dateTime" == fieldType) {
				if ("date" == fieldType) {
					base.editWin.editWinDatePicker(targetFields[i], i, i,
							edit_win1_scroll_content, fieldFormat, null,
							"260px");
				} else if ("dateTime" == fieldType) {
					base.editWin.editWinDateTimePicker(targetFields[i], i, i,
							edit_win1_scroll_content, fieldFormat, null,
							"260px");
				}
			} else if ("number" == fieldType) {
				base.editWin.editWinNumericInput(targetFields[i], i, i,
						edit_win1_scroll_content, fieldFormat, null, "260px");
			} else if ("singleSelect" == fieldType) {
				base.editWin.editWinLocalSelect(targetFields[i], i, i,
						baseSelectItems[selectData] || selectData,
						edit_win1_scroll_content, null, baseUtil
								.val(selectFirstData), "259px",
						targetFieldProperties[i]["editTips"]);
			} else if ("multiSelect" == fieldType) {
				base.editWin.editWinLocalMultiSelect(targetFields[i], i, i,
						baseSelectItems[selectData] || selectData,
						edit_win1_scroll_content, null, baseUtil
								.val(selectFirstData), "260px",
						targetFieldProperties[i]["editTips"]);
			} else if ("button" == fieldType) {
				base.editWin.editWinButton(targetFields[i], i, i,
						targetFieldProperties[i]["editTips"], null,
						edit_win1_scroll_content,
						targetFieldProperties[i]["fontAwesome"]);
			} else if ("textarea" == fieldType) {
				base.editWin.editWinTextarea(targetFields[i], i, i,
						edit_win1_scroll_content, null, "260px",
						targetFieldProperties[i]["editTips"]);
			} else if ("image" == fieldType) {
				base.editWin.editWinImage(targetFields[i], i, i,
						edit_win1_scroll_content, null,
						targetFieldProperties[i]["editTips"], ctx
								+ targetFieldProperties[i]["originSrc"]);
			} else {
				base.editWin.editWinInput(targetFields[i], i, i,
						edit_win1_scroll_content, null, "260px",
						targetFieldProperties[i]["editTips"]);
			}
			//添加拾色器
			if (colour) {
				var colourPicker = $("<input class='colourPicker' fieldType='"
						+ fieldType + "'/>");
				var editField = $("#" + i).closest(".k-edit-field");
				editField.append(colourPicker);
				if ("allColors" == colour) {
					baseWidget.colorPickerByElement(colourPicker, i
							+ "_edit_colourPicker", null);
				} else if ("basicColor" == colour) {
					baseWidget.colorPickerByElement(colourPicker, i
							+ "_edit_colourPicker", null, null, "basic");
				} else if ("webSafeColor" == colour) {
					baseWidget.colorPickerByElement(colourPicker, i
							+ "_edit_colourPicker", null, null, "websafe");
				} else {
					baseUtil
							.AJpost(
									ctx
											+ "/baseFrameworkWS/ColourPaletteReadService/findOne",
									{
										"p_o_colourPaletteId" : colour
									},
									function(data) {
										baseWidget
												.colorPickerByElement(
														colourPicker,
														i
																+ "_edit_colourPicker",
														null,
														null,
														data["colourPaletteCellColours"]);
									});
				}
				//因为一级弹出框中的控件后面是可能跟拾色器的，所以一旦后面跟的是拾色器，那么该控件的长度就应该缩短，
				//下面就根据控件的类型不同来进行长度的缩短。
				var prevWidget = editField.find(".base-baseWidget:first");
				if (prevWidget.parent().is(".k-edit-field")) {
					if (!prevWidget.is("button")) {
						//button和input输入框的上级都是k-edit-field，但是button不进行缩短。
						prevWidget.css("width", "194px");
					}
				} else {
					prevWidget.closest(".k-widget").css("width", "194px");
				}
				//如果在一个基本属性输入框后面添加的颜色输入属于附加输入，添加一个class作为标识，好写css
				$("#" + i + "_edit_colourPicker").closest(
						".k-widget.k-colorpicker")
						.addClass("additional-widget");
			}
			//添加附件
			if (attachment) {
				var fieldInport = baseWidget
						.button(i + "_inport", "",
								baseUtil.val("N.attachment"),
								$("#" + i).closest(".k-edit-field"), "",
								"fa fa-upload").wrap(
								"<span class='edit-field-btn'></span>");
				fieldInport
						.click(function() {
							baseUtil.reset(import_win4_form);
							var fieldId = $(this).attr("id").split("_")[0];
							import_win4_form.attr("fieldAttachment", fieldId);
							var attachment_extendData = targetFieldProperties[fieldId]["attachment_extendData"];
							window["uploadAttachmentType" + fieldId] = attachment_extendData["attachmentType"]
									.join("|");
							window["uploadAttachmentSize" + fieldId] = attachment_extendData["attachmentSize"];
							window["uploadAttachmentTypeRegx" + fieldId] = attachment_extendData["attachmentTypeRegx"];
							base.editWin
									.showWin(import_win4_kendo,
											targetFields[fieldId] + "-"
													+ baseUtil.val("N.upload"),
											import_win4_form_validator,
											import_win4_dom);
						});
			}
			/**
			 * 校验，第一步都是将所有需要校验的input
			 * text框或者textArea框都需要有一个属性叫validationMessage，属性值为校验提示内容，
			 * 这个需要数据显示的之后，校验之前赋上。baseUtil.simpleValidator方法已经内置了"kendo_required"和"kendo_pattern"这两种校验方法，
			 * 只要在需要校验的输入框节点中提前加上这两个属性，就会进行相应的校验，这两个校验可以涵盖大部分的校验需求。
			 * 如果还有特殊的校验需求，可以在校验节点上加上属性validMethod，指定一个方法名，校验器会自动调用。
			 * 校验功能统一放在了initEditWin方法中完成。
			 */
			$("#" + i).attr("validationMessage",
					targetFieldProperties[i]["validationMessage"]);
			$("#" + i).attr("kendo_required",
					targetFieldProperties[i]["required"]);
			$("#" + i).attr("kendo_pattern",
					targetFieldProperties[i]["pattern"]);
		}
	}
};

/**
 * 对base.editWin.editWinLocalSelect出来的下拉条进行微调。
 * id：下拉框对应的input的id
 */
base.fixUI.fixEditWinLocalSelect = function(id, width) {
	$("#" + id).closest("span.k-dropdown").css({
		"width" : width
	});
};

/**
 * 对base.editWin.multiSelectByElement出来的多选下拉条进行微调。
 * id：多选下拉框对应的input的id
 */
base.fixUI.fixEditWinMultiSelect = function(id, width) {
	var editField = $("#" + id).closest(".k-edit-field");
	editField.find(".k-multiselect").css("width", width);
	editField.find(".k-multiselect-wrap").css("width", width);
};

/**
 * 对base.editWin.editWinInput出来的输入框进行微调。
 * id：输入框对应的input的id
 */
base.fixUI.fixEditWinInput = function(id, width) {
	$("#" + id).css({
		"width" : width
	});
};

/**
 * 对base.editWin.editWinTextarea出来的textarea输入框进行微调。
 * id：输入框对应的textarea的id
 */
base.fixUI.fixEditWinTextarea = function(id, width) {
	$("#" + id).css({
		"height" : "80px",
		"margin-left" : "-13px",
		"width" : width
	});
};

/**
 * 对base.editWin.editWinNumericInput出来的输入框进行微调。
 * id：输入框对应的input的id
 */
base.fixUI.fixEditWinNumericInput = function(id, width) {
	var editInput = $("#" + id);
	editInput.closest(".k-numerictextbox").css({
		"width" : width
	});
};

/**
 * 对base.editWin.editWinDateTimePicker出来的输入框进行微调。
 * id：输入框对应的input的id
 */
base.fixUI.fixEditWinDateTimePicker = function(id, width) {
	var editInput = $("#" + id);
	var editInputParent = editInput.closest(".k-edit-field");
	editInputParent.find(".k-widget").css("width", width);
};

/**
 * 对base.editWin.editWinDatePicker出来的输入框进行微调。
 * id：输入框对应的input的id
 */
base.fixUI.fixEditWinDatePicker = function(id, width) {
	var editInput = $("#" + id);
	var editInputParent = editInput.closest(".k-edit-field");
	editInputParent.find(".k-widget").css("width", width);
};

/**
 * 对baseWidget.colorPickerByElement出来的拾色器进行微调。
 * id：输入框对应的input的id
 */
base.fixUI.fixColorPicker = function(id) {
	var editInput = $("#" + id);
	var fieldType = editInput.attr("fieldType");
	var editInputParent = editInput.closest(".k-colorpicker");
	var pickerWrapHeight = "31.7px";
	var selectColorHeight = "25.7px";
	if ("date" == fieldType) {
		pickerWrapHeight = "32px";
	} else if ("singleSelect" == fieldType) {
		editInputParent.find(".k-picker-wrap").css("margin-top", "-2px");
	} else if ("number" == fieldType) {
		selectColorHeight = "26px";
	} else if ("string" == fieldType) {
		pickerWrapHeight = "30.7px";
		selectColorHeight = "24.7px";
	}
	editInputParent.find(".k-picker-wrap").css({
		"height" : pickerWrapHeight,
		"width" : "25px"
	});
	editInputParent.find(".k-selected-color").css({
		"height" : selectColorHeight,
		"width" : "30px"
	});
	editInputParent.find(".k-select").css("width", "30px");
	editInputParent.find(".k-icon").css({
		"margin-top" : "8px",
		"margin-left" : "1px"
	});
};
