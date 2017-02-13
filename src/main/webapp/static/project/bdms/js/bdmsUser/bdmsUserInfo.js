$(function() {
	/**
	 * 点击“账户设置→收货地址→添加收货地址”
	 */
	$("#J-add-address span").bind("click", function() {
		var addrForm = $("#J-add-address").find(".w-add-address-form");
		if (addrForm.is(":hidden")) {
			$("#J-add-address").addClass("add-address-active");
			baseUtil.fadeIn(addrForm);
		}
	});
	/**
	 * 账户设置tab切换
	 */
	$("#account-tab .n-tabs-item").click(function() {
		$(this).addClass("n-active");
		$("#account-tab .n-tabs-item").not($(this)).removeClass("n-active");
		var index = $("#account-tab .n-tabs-item").index($(this));
		var tabs = $("#account-tab .n-tabs-bd > div");
		var tabContent = $(tabs.get(index));
		tabContent.addClass("n-active");
		tabs.not(tabContent).removeClass("n-active");
	});
	/**
	 * 点击“添加收货地址”的取消按钮。
	 */
	$("#J-cancel-add-address").click(function() {
		var addrForm = $("#J-add-address").find(".w-add-address-form");
		baseUtil.fadeOut(addrForm);
	});
	/**
	 * 个人信息左侧导航点击的收缩和展开
	 */
	$("#j-uc-nav > li").click(function() {
		if ($(this).hasClass("nav-active")) {
			$(this).removeClass("nav-active");
		} else {
			$(this).addClass("nav-active");
		}
	});
});