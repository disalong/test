window.base.grid = {
	/**
	 * 初始化列表，包括里面的增删改查。
	 * divId:列表安装于哪个div中，约定为“jsp名+Grid”;
	 * dataUrl:列表读取数据的url，如ctx+"/baseCodeGeneratorWS/TemplateProperties"返回kendo表格的操作对象。
	 * extendDataFirstBound:不同的页面要出列表都会调用base.grid.init()方法，然后进行额外的定制，有些定制必须在列表出来
	 * 之后完成，所以提供这个参数让调用base.grid.init()方法的时候传入。它相当于firstDataBound()方法，
	 * 也是仅在首次dataBound的时候执行，并且后于firstDataBound()方法执行。
	 * extendDataEachBound:仅仅用extendDataFirstBound不足以进行模块列表的个性化定制，因为extendDataFirstBound适用于
	 * 放置一些仅在列表首次出现时执行仅一次的代码，比如定制弹出输入框。但是有些内容是定制在列表自身的内容中的，比如将某个
	 * 列表单元格的内容改成图标，这种定制需要每次刷新列表都执行，所以加入此方法。
	 */
	init : function(divId, dataUrl, extendDataFirstBound, extendDataEachBound) {
		window.defaultTheme = baseUtil.val("fgConfig.defaultTheme");
		window.targetFields = baseUtil.json(baseUtil
				.jsonVal("targetFieldsJSON"));
		window.targetFieldProperties = baseUtil.json(baseUtil
				.jsonVal("targetFieldPropertiesJSON"));
		window.checkboxColumnWidth = base.fixUI.getCheckboxColumnWidth();
		/**
		 * checkbox列默认放在最左边。
		 */
		var _targetFieldProperties = {
			"selectCheckbox" : {
				"hide" : false
			}
		};
		for ( var fieldName in targetFieldProperties) {
			_targetFieldProperties[fieldName] = targetFieldProperties[fieldName];
		}
		targetFieldProperties = _targetFieldProperties;
		/**
		 * 可拖动列，也就是列的从新排序，每次拖动完都记录所有列的顺序到一个数组中，
		 * 将这个数组写到cookie中，下次初始化grid的时候，如果数组中有值，则按数组的顺序初始化columns，
		 * 但是就算没有拖动过列，我们也会一开始将字段的顺序放到这个数组中，如果cookie的数组字符串没有值的情况下，则使用默认的。
		 */
		window.dragColumnsCookieKey = divId + "_COLUMN_DRAG";
		window.columnOrder = [];
		/**
		 * 可隐藏列。当需要显示某列时，将该列的id从hideColumns字符串中移除。
		 * 当需要隐藏某列时，将该列的id添加到hideColumns字符串中。那么页面初始化
		 * 时，在hideColumns字符串拥有的id列，则改变对应的targetFieldProperties 的字段的hide属性为true.
		 * 
		 * 思路：一开始的时候，cookie中是没有隐藏列的内容的，那么字段配置的时候可以配置隐藏与否，我们将配置
		 * 了隐藏的字段放入cookie中，然后将targetFieldProperties的字段的hide属性设为false，意思是假设现在
		 * 所有字段都是显示的，然后再用一个循环根据cookie中的内容将字段的hide属性设为隐藏与否。
		 * 如果cookie中有内容，那么就用cookie中的内容决定字段的隐藏与否。
		 * 但是有一种情况是，cookie中没有内容，但是它并不是第一次初始化页面，比如当前页面的cookie只有id这个字段，
		 * 表示id是隐藏的，但是当我将id列显示出来，id会从cookie中移除，那么当我刷新页面的时候，cookie中就没有值了，
		 * 但是它是第一次展现页面吗，不是的，如果id的hide属性设置为true，那么就算我上一个页面的意图是想让id显示出来，
		 * 但是刷新页面之后，id列还是不见了，因为根据上面的逻辑，只要cookie中没有内容，就会根据最原始的属性的hide
		 * 来决定是否出该列，但是这种情况比较特殊，这时的cookie没有值意思是想出所有列，所以当我在grid的columnShow
		 * 方法中判断到cookie中没有值，我就添加一个SHOW_ALL，那么如果遇到SHOW_ALL，我就二话不说，全部列都显示。
		 * 
		 * ！！当使用templateProperties进行某个模块的列的隐藏或显示修改操作之后，需要删掉xxx_COLUMN_HIDE这个cookie
		 * 然后刷新页面才能有效果。因为当前的代码是尊重用户的操作的，比如说A列的原始设定（templateProperties中的设定）
		 * 是隐藏的，但是用户的xxx_COLUMN_HIDE已经有值，并且没有隐藏A列，只要xxx_COLUMN_HIDE有值，我们就认为用户进行
		 * 过列的隐藏、显示操作，那么此时我们是以cookie为准的，而不是原始设定，所以当你后面突然修改了原始设定，我们也
		 * 只会以cookie，也就是用户的操作为准，因为用户一旦操作了，就相当于他优先个性化了原始设定，如果每次都以原始设定
		 * 为准，那么cookie就没有作用了，所以只有用户没有进行操作，没有cookie时，才以原始设定为准。所以，当我们修改了
		 * 模块的templateProperties的原始设定，就必须让用户删掉xxx_COLUMN_HIDE的cookie才能生效。说白了就是，只要有cookie，
		 * 证明是用户的意愿，以cookie为准，没有cookie的时候，以原始设定为准。
		 * ！！那么真实环境中，如果你修改了原始设定，必须发邮件告诉用户清理cookie的，或者后面加代码，将templateProperties
		 * 的最后修改日期保存到cookie中，每次都判断该模块的template有没有修改，如果有修改，清掉cookie。
		 * 
		 */
		var hideColumnsCookieKey = divId + "_COLUMN_HIDE";
		var hideColumns = "";
		if ($.cookie(hideColumnsCookieKey)) {
			hideColumns = $.cookie(hideColumnsCookieKey);
		}
		if ("SHOW_ALL" != hideColumns) {
			if (!hideColumns) {
				for ( var fieldName in targetFieldProperties) {
					if (targetFieldProperties[fieldName]["hide"]) {
						hideColumns += (fieldName + "|");
					}
					targetFieldProperties[fieldName]["hide"] = false;
				}
			}
			for ( var fieldName in targetFieldProperties) {
				columnOrder.push(fieldName);
				if (hideColumns) {
					if (-1 != hideColumns.indexOf(fieldName + "|")) {
						targetFieldProperties[fieldName]["hide"] = true;
					} else {
						targetFieldProperties[fieldName]["hide"] = false;
					}
				}
			}
		} else {
			for ( var fieldName in targetFieldProperties) {
				columnOrder.push(fieldName);
				targetFieldProperties[fieldName]["hide"] = false;
			}
		}
		/**
		 * 封装columns
		 */
		var columns = window.base.grid.getColumns(targetFields,
				targetFieldProperties, dataUrl);

		/**
		 * 封装数据源
		 */
		var dataSource = window.base.grid.getDataSource(dataUrl, divId);

		/**
		 * 第一次加载完数据，做一些操作。
		 */
		window.firstDataBound = true;
		/**
		 * 第一次加载数据中，做一些操作。
		 */
		window.firstDataBinding = true;
		/**
		 * kendoGrid中设置的xxxable属性，如果是针对columns的，那么columns中的同样设置会优先于kendoGrid中的设置。
		 * 比如kendoGrid中有filterable属性true，而columns中也有filterable属性，那么如果columns中的filterable
		 * 不进行设置，则全部使用kendoGrid的filterable属性，否则优先考虑columns的filterable属性。
		 */
		return $("#" + divId)
				.kendoGrid(
						{
							dataSource : dataSource,
							// scrollable : { virtual : true },
							// 要滚动加载必须指定表格的高度，并且滚动加载暂时和分页不太兼容，所以只能选其一。
							scrollable : true,
							height : baseUtil.val("fgConfig.gridHeight") * 1,
							columns : columns,
							pageable : {
								buttonCount : baseUtil
										.val("fgConfig.pageButtonCount") * 1,
								input : true,
								refresh : true,
								pageSizes : [ 5, 10, 20, 30, 50, 100 ],
								messages : {
									display : baseUtil.val("N.rows")
											+ " {0}-{1} / {2}",
									refresh : baseUtil.val("N.refresh"),
									page : baseUtil.val("N.pages") + " ",
									of : "/ {0}",
									itemsPerPage : "",
									first : baseUtil.val("N.firstPage"),
									last : baseUtil.val("N.lastPage"),
									next : baseUtil.val("N.nextPage"),
									previous : baseUtil.val("N.previousPage"),
									morePages : baseUtil.val("N.morePages"),
									empty : baseUtil.val("N.noScore")
								}
							},
							//改变列宽度会影响filter column的输入框的伸长效果，而且，当前列表已经有tips，并且可以单元格拷贝，
							//所以让用户改变列宽度没有意义。
							//resizable : true,
							selectable : "multiple,cell",
							columnMenu : {
								sortable : false,
								filterable : false,
								messages : {
									columns : baseUtil.val("N.chooseColumns"),
								}
							},
							sortable : {
								mode : "multiple"
							},
							filterable : {
								mode : "row"
							},
							allowCopy : true,
							reorderable : true,
							/**
							 * 列表数据加载中时触发（未出列表数据）
							 */
							dataBinding : window.base.grid.dataBinding(divId,
									targetFields, targetFieldProperties,
									dataSource),
							/**
							 * 列表数据加载完成时触发（已出列表数据）
							 */
							dataBound : function() {
								base.grid.fixDifferUI(divId);
								base.grid.initSelectCheckBox(divId);
								//firstDataBound需要在列表调整完整之后才做，因为在里面有整个列表隐现的过程，
								//必须等列表调整完成后才隐现。而且隐现不是每次翻页都会发生，只在刷页面时发生。
								if (firstDataBound) {
									base.grid.firstDataBound(divId,
											targetFields);
									if (extendDataFirstBound) {
										extendDataFirstBound();
									}
								}
								if (extendDataEachBound) {
									extendDataEachBound();
								}
								base.grid.afterDataShow(divId);
								firstDataBound = false;
							},
							/**
							 * 显示某列时触发
							 */
							columnShow : function(e) {
								if (!e.column.field) {
									e.column.field = "selectCheckbox";
								}
								hideColumns = hideColumns.replace(new RegExp(
										e.column.field + "\\|", "g"), "");
								if (!hideColumns) {
									hideColumns = "SHOW_ALL";
								}
								$.cookie(hideColumnsCookieKey, hideColumns,
										cookieParams);
								/**
								 * 由于列表列是可隐藏的，那么在隐藏或显示列的时候，每列的宽度是随之改变的，所以必须在列隐藏或显示之后从新计算一下
								 * 列的宽度，因为表头的过滤输入框的伸长是在列表宽度的基础上做动画伸长的，如果列表的宽度改变了，伸长的基础宽度就必须
								 * 跟着改变。
								 */
								window.inputOriginWidth = $(
										$(".k-filtercell:visible")[0])
										.outerWidth();
							},
							/**
							 * 隐藏某列时触发
							 */
							columnHide : function(e) {
								if ("SHOW_ALL" == hideColumns) {
									hideColumns = "";
								}
								if (!e.column.field) {
									e.column.field = "selectCheckbox";
								}
								hideColumns += (e.column.field + "|");
								$.cookie(hideColumnsCookieKey, hideColumns,
										cookieParams);
								window.inputOriginWidth = $(
										$(".k-filtercell:visible")[0])
										.outerWidth();
							},
							/**
							 * 拖动列表完成排序后触发
							 */
							columnReorder : function(e) {
								/**
								 * 思路：当列拖动的时候，新列（包括）和旧列（包括）的范围以外的两边其实是不会改变的，
								 * 那么我们就分开两种情况，如果新列的位置大于原来的位置，也就是从左拖动到右，那么就
								 * 将原来位置往右一列，直到新位置之前一列的全部列往左挪动一个位置，另一种情况就是，如果新位置
								 * 小于旧位置，也就是从右往左拖动，那么就将旧位置往左一列，直到新位置之后一列的全部列往右移动
								 * 一个位置。当然做这些操作之前，必须先把旧列的名字记录下来，然后移动完成之后赋值于新位置。
								 */
								if ($.cookie(dragColumnsCookieKey)) {
									columnOrder = baseUtil.json($
											.cookie(dragColumnsCookieKey));
								}
								var old = columnOrder[e.oldIndex];
								if (e.newIndex > e.oldIndex) {
									for (var i = e.oldIndex; i < e.newIndex; i++) {
										columnOrder[i] = columnOrder[i + 1];
									}
								} else if (e.newIndex < e.oldIndex) {
									for (var i = e.oldIndex; i > e.newIndex; i--) {
										columnOrder[i] = columnOrder[i - 1];
									}
								}
								columnOrder[e.newIndex] = old;
								$.cookie(dragColumnsCookieKey, JSON
										.stringify(columnOrder), cookieParams);
							},
						}).data("kendoGrid");
	},

	/**
	 * 有些东西必须等到列表显示出来才能绑定的。
	 * 此方法是每次dataBound之后都会调用。
	 */
	afterDataShow : function(divId) {
		/**
		 * 为列表添加kendo tool tips。
		 */
		baseWidget.tips($("#" + divId).find("tbody").find(".kendo_title"));
		base.fixUI.afterDataShowAlways(divId, fixDifferUIGridContextHeight);
	},

	/**
	 * 初始化列表最左列，即checkbox列的一些事件。
	 * @param divId
	 */
	initSelectCheckBox : function(divId) {
		$("#checkAll")[0].checked = false;
		//事件方法中只需要控制checkbox的选中或者不选中，然后调用handle方法，表格就会进行渲染。
		var handle = function() {
			$(".checkOne").each(
					function() {
						if (this.checked) {
							$(this).closest("tr").find("td").addClass(
									"k-state-selected").attr("aria-selected",
									"true");
						} else {
							$(this).closest("tr").find("td").removeClass(
									"k-state-selected").attr("aria-selected",
									"false");
						}
					});
			$(".checkOne").each(function() {
				if ($(this).closest("td").is(".k-state-selected")) {
					$(this).closest("td").removeClass("k-state-selected");
				}
			});
		};
		var checkOneClick = function(checkbox) {
			if (checkbox.checked) {
				checkbox.checked = false;
			} else {
				checkbox.checked = true;
			}
			if ($(".checkOne:checked").length == $(".checkOne").length) {
				$(".checkAll")[0].checked = true;
			} else {
				$(".checkAll")[0].checked = false;
			}
			handle();
		};
		var checkAllClick = function(checkbox) {
			if (checkbox.checked) {
				checkbox.checked = false;
				$(".checkOne").each(function() {
					$(this)[0].checked = false;
				});
			} else {
				checkbox.checked = true;
				$(".checkOne").each(function() {
					$(this)[0].checked = true;
				});
			}
			handle();
		};
		$(".checkOne").unbind().bind("click", function() {
			checkOneClick(this);
		});
		$(".checkOne").closest("td").unbind().bind("click", function(evt) {
			var checkOne = $(this).find(".checkOne")[0];
			checkOneClick(checkOne);
			return false;
		});
		$(".checkAll").closest("th").unbind().bind("click", function(evt) {
			var checkAll = $(this).find(".checkAll")[0];
			checkAllClick(checkAll);
			return false;
		});
		//选中的行不会因为点击了某个单元格而消失。
		$("#" + divId).find("table.k-selectable td").click(function() {
			handle();
			if (0 == $(this).find(".checkOne").length) {
				$(this).addClass("k-state-selected");
			}
		});
		/**
		 * 双击选中一行，再次双击不选中该行，查看放出一个独立的查看按钮，修改，删除，查看都是按照checkbox的指示定位行，双击查看取消。
		 */
		$("#" + divId).find("table.k-selectable td").not(
				$(".checkOne").closest("td")).unbind("dblclick").bind(
				"dblclick", function() {
					var checkOne = $(this).closest("tr").find(".checkOne")[0];
					checkOneClick(checkOne);
				});
	},

	/**
	 * 把列表第一次出来需要加载的内容或者调整的内容放到这里来，因为有些内容不需要每次列表显示完成，
	 * 比如刷页之后要做的，比如添加tips呀，列表工具栏的一些调整操作呀等等。
	 * 这个方法适用于只需要在表格初次加载时的表格调整。
	 */
	firstDataBound : function(divId, targetFields) {
		base.fixUI.fixGridStyleOnes(divId);
		/**
		 * 表格渐现
		 */
		baseUtil.fadeIn("#" + divId);
		/**
		 * 计算过滤表头输入框的基础宽度，输入框的动画伸长是根据这个宽度的基础上进行的，这里只获取了其中一个可见列的宽度，
		 * 其他可见列都认为和这个列同宽度。所以列表的可见列的宽度不能有差异化。因为为过滤输入框绑定伸长事件的时候，原来
		 * 是可以循环每列的input框，然后获取每列的宽度进行事件绑定的，这些宽度都是局部变量，但是后来，当隐藏或显示列的
		 * 时候，每列的宽度都相应改变，这个时候不可能再按照改变后的列宽度重新为每列绑定事件，所以只能将每列的宽度设为一个
		 * 统一的全局变量，当隐藏或显示列的时候，直接改变这个全局列宽度，事件就会读取这个改变后的列宽度，基于新的列宽度，
		 * 实现显示或隐藏列之后，过滤输入框的动画伸长效果不变。
		 */
		//要获取filtercell（或者任何元素）的可视长度，你必须等到元素显示出来再调用方法，所以resizableFilterInput()方法的调用是在grid显示出来之后。
		window.inputOriginWidth = $($(".k-filtercell:visible")[0]).outerWidth();
		base.grid.resizableFilterInput(divId);
		/**
		 * 为表头的过滤输入框添加kendo tool tips时，要求input框要有id
		 */
		$(".k-filtercell .k-input").each(
				function() {
					var filtercellId = "filtercell_"
							+ $(this).closest(".k-filtercell").attr(
									"data-field");
					$(this).attr("id", filtercellId);
					$(this).attr("name", filtercellId);
					//baseWidget.tips($(this), "right");
				});
		$("table").css("border-collapse", "collapse");
		//1.先将filter column中的string输入框变成各种类型的输入框。
		base.fixUI.fixFilterColumnWidget(divId, targetFieldProperties);
		//2.然后给输入框赋回原来的值。
		base.grid.recoverFilterColumnSearchParams(divId);
		base.fixUI.fixEditWinInputItemByPropertiesType(targetFields,
				targetFieldProperties);
	},

	/**
	 * 刷新页面时恢复filter column的搜索数据。
	 */
	recoverFilterColumnSearchParams : function(divId) {
		var recoverGrid = baseUtil.json(baseUtil.jsonVal("recoverGridJSON"));
		var searchParams = recoverGrid["searchParams"];
		var fieldName, value, filtercellId, fieldType = "";
		for ( var searchFieldName in searchParams) {
			fieldName = searchFieldName.split("_")[1];
			value = searchParams[searchFieldName];
			filtercellId = "filtercell_" + fieldName;
			$("#" + filtercellId).val(value);
			$("#" + filtercellId).trigger("blur");
			fieldType = targetFieldProperties[fieldName]["type"];
			if ("singleSelect" == fieldType || "multiSelect" == fieldType) {
				var dropdownlist = $("#" + filtercellId).data(
						"kendoDropDownList");
				dropdownlist.value(value);
			}
		}
	},

	/**
	 * 当整个表格内容全部加载完毕之后，对表格进行微调。统一在这个方法中处理。 比如对每种不同的皮肤统一进行微调；UI的默认按钮位置进行调整等。
	 * 这个方法适用于每次数据加载完都需要的表格调整。
	 */
	fixDifferUI : function(divId) {
		/**
		 * kendo对每个浏览器会自动再<html>中添加一个class属性来作为识别，有些样式也根据这个<html>的class进行指定，比如页码栏的页码输入框，
		 * 所以造成的结果是，我们用css()都无法修改，所以需要干掉此属性。
		 */
		$("html").removeAttr("class");
		/**
		 * 当列表出现滚动条之后，页码栏的位置太往下，需要轻微调整，但是每种皮肤还不太一样，所以需要轻微调整。
		 * 因为我们通过grid的height属性指定了整个表格包括菜单栏的高度，但是表格记录内容的高度则是kendo计算
		 * 得出，得到的效果会有偏差，所以我们按实际情况调整表格记录内容的高度即可。
		 * 
		 * 因为当第一次加载调整了整个grid的高度之后，翻页表格内容的高度又会改变，所以我们第一次加载的时候就记录表格内容高度，
		 * 一下的每次翻页都调整表格内容高度为第一次的高度。保证表格高度不变。
		 */
		var gridHeight = baseUtil.val("fgConfig.gridHeight") * 1;
		window.fixDifferUIGridContextHeight = base.fixUI
				.getFixDifferUIGridContextHeight(divId, gridHeight);
		$("#" + divId).find(".k-grid-content").css("height",
				fixDifferUIGridContextHeight);
	},

	/**
	 * 由于用户屏幕大小的差别，有的用户屏幕非常小，比如笔记本，那么列表的列又比较多，当每一列都有filter表头的情况下，
	 * 有的列filter中可输入的地方就很短，所以解决的方案是当用户鼠标移进输入框的时候，动态将输入框拉长，鼠标离开输入框
	 * 的时候才将输入框还原。并且每个输入框都添加tips.
	 * 
	 * 旧！！（为什么不用onFocuse来出发输入框的伸长：因为当光标聚焦的时候，已经触发了tips，tips出来之后，会遮住输入框的输入，
	 * 所以换成onMouseover，鼠标一移进去，在触发tips之后，输入框已经伸长了，tips会出现在输入框的最右边，不会遮住输入。
	 * 但现在我们将tips显示在左侧，原则上是不会影响输入的，但是如果是最左侧的输入框，那么tips会自动显示在右侧。）
	 * 
	 * 最新，后面使用发现，用onMouseover来触发（参考“旧”）的用户体验并不好，所以我们将表头过滤的tips不要了，还是用回
	 * onFocuse。
	 */
	resizableFilterInput : function(divId) {
		var inputFinalWidth = 400;
		var animalDuration = 350;
		var inputZIndex = 10001;
		$(".k-filtercell").each(function() {
			var filtercell = $(this);
			var fieldName = filtercell.attr("data-field");
			var fieldType = targetFieldProperties[fieldName]["type"];
			if ("number" == fieldType || "singleSelect" == fieldType) {
				//如果是数字输入框，跳过，因为一半输入的数字不会很长，所以足够了，而且
				//会出现点击上下箭头的时候，输入框长度变长，不好。
			} else {
				var filterInput = filtercell.find(".k-input:not(span)");
				var onFousein = function() {
					if (inputOriginWidth > inputFinalWidth) {
						return false;
					}
					filtercell.css({
						"z-index" : inputZIndex,
						"position" : "absolute",
						//不同的浏览器这里会有差别，它会影响输入框伸长是否变形，微调这里就行。
						"bottom" : "8px",
						"width" : inputOriginWidth
					});
					filtercell.animate({
						width : inputFinalWidth
					}, animalDuration);
				};
				var onFocusout = function() {
					if (inputOriginWidth > inputFinalWidth) {
						return false;
					}
					filtercell.animate({
						width : inputOriginWidth
					}, animalDuration, function() {
						filtercell.removeAttr("style");
					});
				};
				var onBlur = function() {
					filterInput.next(".k-loading").css("bottom", "7px");
				};
				filterInput.bind("focusin", onFousein);
				filterInput.bind("focusout", onFocusout);
				filterInput.blur(onBlur);
			}
		});
	},

	/**
	 * 封装columns
	 */
	getColumns : function(targetFields, targetFieldProperties, dataUrl) {
		var columns = [];
		if ($.cookie(dragColumnsCookieKey)) {
			columnOrder = baseUtil.json($.cookie(dragColumnsCookieKey));
		}
		for (var i = 0; i < columnOrder.length; i++) {
			var fieldName = columnOrder[i];
			var fieldProperties = targetFieldProperties[fieldName];
			var kendo_title, kendo_title_class = "";
			var title = "";
			if ("selectCheckbox" == fieldName) {
				/**
				 * checkbox选择列。用于选定某行，或者所有行。
				 */
				columns
						.push({
							field : "selectCheckbox",
							title : "<input class='k-checkbox checkAll' type='checkbox' id='checkAll' name='checkAll' />"
									+ "<label class='k-checkbox-label' for='checkAll' title='"
									+ baseUtil.val("N.selectAllRows")
									+ "'></label>",
							template : "<input class='k-checkbox checkOne' type='checkbox' recordId='#="
									+ smallTarget
									+ "Id#' id='checkbox#="
									+ smallTarget
									+ "Id#' name='checkbox#="
									+ smallTarget
									+ "Id#' style='text-overflow:clip'/><label class='k-checkbox-label check-one-label' for='checkbox#="
									+ smallTarget + "Id#'></label>",
							width : checkboxColumnWidth,
							hidden : fieldProperties["hide"],
							filterable : false
						});
				continue;
			}
			if (fieldProperties["tips"]) {
				kendo_title = " kendo_title='#=baseUtil.format(" + fieldName
						+ ",'" + fieldProperties["selectData"] + "','"
						+ fieldProperties["selectFirstData"] + "','"
						+ fieldName + "')#' ";
				kendo_title_class = " kendo_title ";
			} else {
				title = " title='#=baseUtil.format(" + fieldName + ",'"
						+ fieldProperties["selectData"] + "','"
						+ fieldProperties["selectFirstData"] + "','"
						+ fieldName + "')#' ";
			}
			columns.push({
				field : fieldName,
				/**
				 * 为每个单元格加个id是因为kendo tool tips需要元素有id，具体查看baseWidget.tips
				 */
				template : "<div id='" + fieldName + "#=" + smallTarget
						+ "Id#' class='base-word-overflow " + fieldName
						+ kendo_title_class + "' " + title + kendo_title
						+ ">#=baseUtil.format(" + fieldName + ",'"
						+ fieldProperties["selectData"] + "','"
						+ fieldProperties["selectFirstData"] + "','"
						+ fieldName + "')#</div>",
				title : "<span title='" + targetFields[fieldName] + "'>"
						+ targetFields[fieldName] + "</span>",
				width : "220px",
				hidden : fieldProperties["hide"],
				format : fieldProperties["format"],
				filterable : {
					cell : {
						/**
						 * 列过滤输入框的autoComplate的加载方式，选项有：
						 * "startswith", "endswith", "contains"
						 */
						showOperators : false,
						/**
						 * 默认的，如果不配置operator，cell.operator是eq。因为我们的列的所有类型已经定死是string，
						 * 所以可选项是eq,neq,isnull,isnotnull,isempty,isnotempty,startswith,contains,dosenotcontain,endswith
						 */
						operator : "contains"
					}
				}
			});
		}
		return columns;
	},

	/**
	 * 封装数据源
	 */
	getDataSource : function(dataUrl, divId) {
		/**
		 * page和pageSize
		 */
		var recoverGrid = baseUtil.json(baseUtil.jsonVal("recoverGridJSON"));
		var page = baseUtil.val("fgConfig.page") * 1;
		if (recoverGrid["page"]) {
			page = recoverGrid["page"] * 1;
		}
		var pageSize = baseUtil.val("fgConfig.pageSize") * 1;
		if (recoverGrid["pageSize"]) {
			pageSize = recoverGrid["pageSize"] * 1;
		}
		var dataSource = new kendo.data.DataSource({
			/**
			 * 默认传递参数
			 * page=1
			 * pageSize=30
			 */
			serverPaging : true,
			/**
			 * 默认传递参数（查询n个参数会依次0-n的顺序传递参数）
			 * sort[0][dir]=asc
			 * sort[0][field]=templatePropertiesTarget	
			 */
			serverSorting : true,
			/**
			 * 默认传递参数（查询n个参数会依次0-n的顺序传递参数）
			 * filter[filters][0][field]=templatePropertiesWsName	
			 * filter[filters][0][operator]=eq	
			 * filter[filters][0][value]=查询内容
			 * filter[logic]=and
			 */
			serverFiltering : true,
			page : page,
			pageSize : pageSize,
			transport : {
				read : {
					// 默认传递参数，page(仅当有值时),pageSize,skip(相当于mysql的limit第一个参数),take(相当于mysql的limit的第二个参数)
					url : dataUrl,
					dataType : "json",
					type : "post",
					data : function() {
						// return $("#searchForm").serializeJson();
					}
				},
			},
			schema : {
				data : function(response) {
					if (response["e"]) {
						baseUtil.getError(response["e"]);
						response = {
							"page" : 0,
							"pageSize" : 10,
							"total" : 0,
							"results" : []
						};
					}
					response = baseUtil.noPermission(response);
					return response.results;
				},
				total : function(response) {
					return response.total;
				}
			}
		});
		return dataSource;
	},

	/**
	 * 表格加载数据后触发事件
	 */
	dataBinding : function(divId, targetFields, targetFieldProperties,
			dataSource, e) {
		if (!firstDataBinding) {
			firstDataBinding = false;
			return false;
		}
		var addTitle = baseUtil.val("N.add");
		var updateTitle = baseUtil.val("N.update");
		var deleteTitle = baseUtil.val("N.delete");
		var viewTitle = baseUtil.val("N.view");
		var excelExportTitle = baseUtil.val("N.excelExport");
		var pdfExportTitle = baseUtil.val("N.pdfExport");
		var jsonImportTitle = baseUtil.val("N.jsonImport");
		/**
		 * 列表工具栏
		 */
		$("<div class='k-header k-grid-toolbar'></div>").appendTo(
				$("#" + divId));
		window.toolbar = $("#" + divId).find(".k-grid-toolbar");
		var addButton, updateButton, viewButton, deleteButton;
		if ("9999" == templatePropertiesCrudItems) {
			//所有
			addButton = baseWidget.addButton(smallTarget + "_add", "",
					addTitle, toolbar);
			updateButton = baseWidget.updateButton(smallTarget + "_update", "",
					updateTitle, toolbar);
			viewButton = baseWidget.viewButton(smallTarget + "_view", "",
					viewTitle, toolbar);
			deleteButton = baseWidget.deleteButton(smallTarget + "_delete", "",
					deleteTitle, toolbar);
		}
		if (templatePropertiesCrudItems.indexOf("0001") != -1) {
			//新增
			addButton = baseWidget.addButton(smallTarget + "_add", "",
					addTitle, toolbar);
		}
		if (templatePropertiesCrudItems.indexOf("0002") != -1) {
			//删除
			deleteButton = baseWidget.deleteButton(smallTarget + "_delete", "",
					deleteTitle, toolbar);
		}
		if (templatePropertiesCrudItems.indexOf("0003") != -1) {
			//修改
			updateButton = baseWidget.updateButton(smallTarget + "_update", "",
					updateTitle, toolbar);
		}
		if (templatePropertiesCrudItems.indexOf("0004") != -1) {
			//查看
			viewButton = baseWidget.viewButton(smallTarget + "_view", "",
					viewTitle, toolbar);
		}

		//“导出”下拉条
		toolbar
				.append($("<input id='gridExcportDropDownList' class='base-grid-toolbar-dropdownlist' type='text' />"));
		var gridExportDropDownListData = [ {
			label : excelExportTitle,
			value : "fa fa-file-excel-o " + smallTarget + "_excelExport"
		}, {
			label : pdfExportTitle,
			value : "fa fa-file-pdf-o " + smallTarget + "_pdfExport"
		} ];
		var exportDropDownListKendo = baseWidget.dropDownListByElement(
				$("#gridExcportDropDownList"), "", "",
				gridExportDropDownListData, null, baseUtil.val("N.export")
						+ "...", baseUtil.val("N.export"),
				"<span class='#=value#'>&nbsp;#=label#</span>");
		exportDropDownListKendo.bind("close", function(e) {
			//this.value()
			//fa fa-file-pdf-o user_pdfExport
			//fa fa-file-excel-o user_excelExport
			if (this.value().indexOf("excelExport") != -1) {
				location.href = ctx + "/" + wsName + "/excelExport";
			}
		});
		var jsonImportButton = baseWidget.button(smallTarget + "_jsonExport",
				"", jsonImportTitle, toolbar, "", "fa fa-arrow-circle-o-down");
		/**
		 * 点击列表编辑弹出框的“确定”按钮
		 */
		var edit_win1_submit_function = function() {
			var j_m_o_jsonStr = baseUtil.formToJson(edit_win1_form);
			var saveUrl = ctx + "/" + wsName + "/" + target
					+ "WriteService/save";
			if ("update" == ACTION) {
				var j_m_o_target = baseUtil.json(j_m_o_jsonStr);
				j_m_o_target[smallTarget + "Id"] = updateTargetId;
				j_m_o_target[smallTarget + "ModifyDate"] = updateTargetModifyDay;
				j_m_o_jsonStr = JSON.stringify(j_m_o_target);
				saveUrl = ctx + "/" + wsName + "/" + target
						+ "WriteService/update";
			}
			/**
			 * 有的情况并不是一级弹出框提交的参数全部都是model的属性，比如说角色绑定权限，
			 * 角色的一级弹出框提交的时候，有一个参数叫p_o_permissionIds，这个参数并不是
			 * 角色对象的属性，但是角色保存的时候必须要这个参数去填充角色-权限关系表，所以
			 * 对于以及弹出框中那些不属于主表属性的参数，需要另外捡出来提交。
			 */
			var submitParamsJsonToModel = baseUtil.json(j_m_o_jsonStr);
			var saveParams = {};
			var j_m_o_target_smallTarget = {};
			for ( var paramKey in submitParamsJsonToModel) {
				if (-1 == paramKey.indexOf("_")) {
					j_m_o_target_smallTarget[paramKey] = submitParamsJsonToModel[paramKey];
				} else {
					saveParams[paramKey] = submitParamsJsonToModel[paramKey];
				}
			}
			saveParams["j_m_o_" + target + "_" + smallTarget] = JSON
					.stringify(j_m_o_target_smallTarget);
			baseUtil.saveAJ(saveUrl, saveParams, function(data) {
				dataSource.read();
				if ("update" == ACTION) {
					baseUtil.alertS(baseUtil.val("N.updateSuccess"));
				} else {
					baseUtil.alertS(baseUtil.val("N.addSuccess"));
				}
			});
		};
		/**
		 * 初始化一级弹出编辑框，具体的输入item在base.fixUI.fixEditWinInputItemByPropertiesType()方法中进行初始化。
		 */
		base.editWin.init(divId, 1, smallTarget, null,
				edit_win1_submit_function, null, null, 600);
		window.edit_win1_dom = window[smallTarget + "_edit_win1_dom"];
		window.edit_win1_form = edit_win1_dom.find("form");
		window.edit_win1_kendo = window[smallTarget + "_edit_win1_kendo"];
		window.edit_form1_validator = window[smallTarget
				+ "_edit_win1_form_validator"];
		/**
		 * 点击“新增”按钮
		 */
		window.ACTION;
		if (addButton) {
			addButton.click(function() {
				ACTION = "save";
				baseUtil.reset(edit_win1_form);
				baseUtil.notDisabled($("body"));
				base.editWin.showWin(edit_win1_kendo, addTitle,
						edit_form1_validator, edit_win1_dom);
			});
		}
		/**
		 * 点击“删除”按钮
		 */
		if (deleteButton) {
			deleteButton.click(function() {
				var deleteAJ = function(deleteIds) {
					var j_list_smallTargetId = {};
					j_list_smallTargetId["j_list_" + smallTarget + "Id"] = JSON
							.stringify(deleteIds);
					baseUtil
							.saveAJ(ctx + "/" + wsName + "/" + target
									+ "WriteService/delete",
									j_list_smallTargetId, function() {
										dataSource.read();
										baseUtil.alertS(baseUtil
												.val("N.deleteSuccess"));
									});
				};
				if (1 > $(".checkOne:checked").length) {
					baseUtil.alertE(baseUtil.val("E.selectOneToDelete"));
					return false;
				} else {
					if (confirm(baseUtil.val("N.deleteConfirm"))) {
						var deleteIds = [];
						$(".checkOne:checked").each(function() {
							deleteIds.push($(this).attr("recordId"));
						});
						deleteAJ(deleteIds);
					}
				}
			});
		}
		/**
		 * 点击“修改”按钮
		 */
		if (updateButton) {
			updateButton.click(function() {
				baseUtil.reset(edit_win1_form);
				baseUtil.notDisabled($("body"));
				if (1 != $(".checkOne:checked").length) {
					baseUtil.alertE(baseUtil.val("E.selectOneToUpdate"));
					return false;
				} else {
					ACTION = "update";
					//先findOne再show window，否则，当你在一级弹出框的"open"事件中处理内容时，如edit_win1_kendo.bind("open",function);
					//想获取updateTargetId就发现获取不到了，因为findOne还没有执行，所以updateTargetId是undefined的，所以得先findOne再
					//show window.
					base.grid.findOne($(".checkOne:checked").attr("recordId"));
					base.editWin.showWin(edit_win1_kendo, updateTitle,
							edit_form1_validator, edit_win1_dom);
				}
			});
		}
		/**
		 * 点击“查看”按钮
		 */
		if (viewButton) {
			viewButton.click(function() {
				baseUtil.reset(edit_win1_form);
				baseUtil.disabled($("body"));
				if (1 != $(".checkOne:checked").length) {
					baseUtil.alertE(baseUtil.val("E.selectOneToView"));
					return false;
				} else {
					ACTION = "view";
					base.grid.findOne($(".checkOne:checked").attr("recordId"));
					base.editWin.showWin(edit_win1_kendo, viewTitle,
							edit_form1_validator, edit_win1_dom);
				}
			});
		}
		/**
		 * 初始化导入弹出框
		 */
		base.editWin.init(divId, 4, smallTarget, null, function() {
			//baseUtil.JF(window["currentUploadIdscommonUpload"]);
		}, "post", null, 600);
		window.import_win4_kendo = window[smallTarget + "_edit_win4_kendo"];
		window.import_win4_dom = window[smallTarget + "_edit_win4_dom"];
		window.import_win4_form = import_win4_dom.find("form");
		window.import_win4_form_validator = window[smallTarget
				+ "_edit_win4_form_validator"];
		baseUtil.template("uploadTemplate", {
			"id" : "commonUpload"
		}, import_win4_form);
		var upload_kendo = base.upload.init("commonUpload");
		/**
		 * 点击jsonImport按钮
		 */
		jsonImportButton.click(function() {
			baseUtil.reset(import_win4_form);
			import_win4_form.attr("fieldAttachment", "");
			base.editWin.showWin(import_win4_kendo, jsonImportTitle,
					import_win4_form_validator, import_win4_dom);
			import_win4_form.attr("action", ctx + "/" + wsName + "/" + target
					+ "WriteService/jsonImport");
		});

	},

	/**
	 * 从选中行中获取单元格内容，参数：selectRows为选中行的jquery对象数组，dataKey为grid的DataSource.data的对象的键，
	 * 返回文本数组。这个方法获取的单元格的内容并不一定是页面看到的单元格内容，它是服务器返回的最基础的内容。因为页面的
	 * 内容我们从服务器获取之后还需要做一些微调，比如日期不需要那么长，比如状态是0,1，但显示出来是正常，作废等，这个方法
	 * 就是获取服务器的返回的原始列表内容。
	 * 
	 * 原本适用于var selectRows = window[smallTarget + "CRUDGrid"].select();得到选中的行，然后获取里面的dataSource中
	 * 的单元格内容，现在由于已经放弃使用kendo自身的点击单元格选中一行，所以这个方法也没用了。
	 */
	getDataFromSelectRowByDataKey : function(selectRows, dataKey) {
		var thing = [], data;
		for (var i = 0; i < selectRows.length; i++) {
			data = window[smallTarget + "CRUDGrid"].dataItem(selectRows[i]);
			thing.push(data[dataKey]);
		}
		return thing;
	},

	/**
	 * 获取单行数据实例
	 */
	findOne : function(id) {
		var edit_win1_dom = window[smallTarget + "_edit_win1_dom"];
		var edit_win1_form = edit_win1_dom.find("form");
		var idParam = {};
		idParam["p_o_" + smallTarget + "Id"] = id;
		baseUtil.AJpost(ctx + "/" + wsName + "/" + target
				+ "ReadService/findOne", idParam, function(data) {
			/**
			 * 这两个变量是每次用户点击“修改”或者双击查看记录的时候带回来的，作用是在修改记录提交的时候将这两个变量一同提交，
			 * 当后台接收到提交的model的id有值，表明这是一次修改操作，而updateTargetModifyDay则是防止用户在修改的过程中已经
			 * 有人进行了修改，所以用于对比记录的最后修改时间判断是否已经被修改。
			 */
			window.updateTargetId = data[smallTarget + "Id"];
			window.updateTargetModifyDay = data[smallTarget + "ModifyDate"];
			baseUtil.jsonToForm(JSON.stringify(data), edit_win1_form);
		});
	},

	/**
	 * 初始化一个基本的kendo表格对象
	 */
	simpleGrid : function(divId, dataSource, columns, height, dataBinding,
			dataBound) {
		$("#" + divId).kendoGrid({
			scrollable : true,
			dataSource : dataSource,
			columns : columns,
			dataBinding : dataBinding,
			dataBound : dataBound
		});
		$("#" + divId).find(".k-auto-scrollable").css("height", height + "px");
		return $("#" + divId).data("kendoGrid");
	},

	/**
	 * 构建一个简单的kendo表格的columns属性的其中一个column对象。
	 * field:对应kendo表格的dataSource下的data中的对应属性名，用于列表行中获取data的数据。
	 * template:每个列表行的单元格显示成什么样子，由这个template来调整。 title:列表每列的标题名字。
	 * width:每列的宽度。
	 */
	simpleColumn : function(field, template, title, width) {
		return {
			field : field,
			template : template,
			title : title,
			width : width
		};
	},

	/**
	 * 为表格添加一行，因为kendo的表格对象的addRow()实在是搞不懂，所以自己简单的复制表格的行样式，然后添加一行tr元素。
	 * 有两个点，一个是因为添加的是新行，所以表格单元格中如果是input框，那么里面的内容会被清空。第二点是我们使用的列表，
	 * 就算是自己绘制的简单列表，为了保持样式统一，都会使用kendo的样式，那么kendo列表的奇偶列的样式是不一样的，所以我们
	 * 添加完行之后要重绘奇偶列样式。 tableSelection：<tbody>的上级元素的jquery对象或选择器。
	 * deleteButtonSelections：（注意，它必须是一个选择器表达式，而不是jquery对象，因为jquery已经进行了选择器编译，它获取的不是当前最新的jquery对象，所以我们需要使用选择器重新获取）
	 * 当我们添加一行新行时，这一行的删除按钮不会被绑定事件，所以我们需要重新为所有的新的旧的删除按钮绑定删除事件。edit_win_form_validator:form表单的kendo
	 * validator，因为新增一行，整个表单需要校验一遍做提醒。
	 * callback:回调函数，回调函数默认会接收到一个参数就是新增的tr的jquery对象。
	 */
	addRow : function(tableSelection, deleteButtonSelections, validator,
			callback) {
		if (validator) {
			validator.hideMessages();
		}
		var tbody = $(tableSelection).find("tbody");
		var tr = tbody.find("tr:last").clone();
		tr.find("input,button").each(function() {
			$(this).val("");
		});
		tr.prependTo(tbody);
		base.grid.deleteRow(deleteButtonSelections);
		base.grid.reflashRow(tbody);
		// 每添加一行，清理掉与校验相关的所有内容，最后再重新校验一次。否则添加完成后，校验信息会各种混乱。
		tbody.find("input").removeClass("k-invalid");
		tbody.find(".k-invalid-msg").remove();
		if (callback) {
			callback(tr, true);
		}
		if (validator) {
			validator.validate();
		}
	},

	/**
	 * 删除一行，这个删除方法假定每一行都会有一个删除按钮，那么deleteButtonSelections参数传入的是所有的删除按钮的jquery表达式（注意，这里只能是表达式，以为jquery对象获取的内容是死的，而表达式能重新获取页面最新的内容，重新判断是否删剩一项需要），这个方法会为这些按钮绑定onclick事件，
	 * 一旦点击，移除该按钮最近的tr.
	 */
	deleteRow : function(deleteButtonSelections) {
		$(deleteButtonSelections).unbind("click");
		$(deleteButtonSelections).bind(
				"click",
				function() {
					if (1 == $(deleteButtonSelections).length) {
						baseUtil.alertE(baseUtil.val("E.keepAtLeastOneItem"));
						return false;
					}
					if (confirm(baseUtil.val("N.deleteConfirm"))) {
						$(this).closest("tr").remove();
						base.grid.reflashRow($(deleteButtonSelections).closest(
								"tbody"));
					}
				});
	},

	/**
	 * kendo列表的奇偶列的样式是不一样的，所以我们添加完或删除完行之后要重绘奇偶列样式。 
	 * tbodySelection:传出列表的<tbody>标签的jquery选择器或者jquery对象。
	 * 另外，每个input框都需要有不一样的id和name值，因为kendo的校验需要。
	 */
	reflashRow : function(tbodySelection) {
		$(tbodySelection)
				.find("tr")
				.each(
						function(i) {
							if ((i + 1) % 2 == 0) {
								$(this).addClass("k-alt");
							} else {
								$(this).removeClass("k-alt");
							}
							$(this).attr(
									"data-uid",
									$(this).attr("data-uid").split("_")[0]
											+ "_" + i);
							function reflashIdAndName() {
								if ($(this).attr("id")) {
									$(this).attr(
											"id",
											$(this).attr("id").split("_")[0]
													+ "_" + i);
								}
								if ($(this).attr("name")) {
									$(this).attr(
											"name",
											$(this).attr("name").split("_")[0]
													+ "_" + i);
								}
							}
							$(this).find("input,button").each(reflashIdAndName);
						});
	}
};