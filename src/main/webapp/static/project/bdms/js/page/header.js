$(function() {
	/**
	 * 鼠标移动到"全部分类"展现具体分类。
	 */
	$("#j-catg .nav-item.all-cate").bind("mouseenter", function() {
		$(this).addClass("active");
	}).bind("mouseleave", function() {
		$(this).removeClass("active");
	});
	/**
	 * 网页头部广告轮播器
	 */
	$('#j-topSpread').slick({
		autoplay : true,
		autoplaySpeed : 5000,
		draggable : true,
		arrows : false,
		dots : true,
		fade : true,
		speed : 1000,
		infinite : true,
		easing : 'easeInOutQuint',
		touchThreshold : 100
	});
	/**
	 * 点击“x”关闭最顶部的广告栏轮播器
	 */
	$("#j-topSpreadClose").click(function() {
		$("#j-topSpreadClose").hide();
		$('#j-topSpread').animate({
			height : '0px'
		}, 300, "easeInQuad", function() {
			$('#j-topSpread').hide();
		});
	});
	/**
	 * 网页头用户导航条为导航项添加hover class，使css起效，显示导航项内容。
	 */
	$(".j-bar-dropdown,#j-visitedArea").bind("mouseenter", function() {
		$(this).addClass("hover");
	}).bind("mouseleave", function() {
		$(this).removeClass("hover");
	});
	/**
	 * 功能导航条，鼠标移上去添加selected class，使css起效，显示功能导航项内容。
	 */
	$(".level-item").bind("mouseenter", function() {
		$(this).addClass("selected");
	}).bind("mouseleave", function() {
		$(this).removeClass("selected");
	});
	/**
	 * 出现或隐藏“返回顶端”按钮。
	 */
	$('#j-go-top').hide();
	$(window).scroll(function() {
		if ($(window).scrollTop() > 0) {
			if ($('#j-go-top').is(":hidden")) {
				baseUtil.fadeIn('#j-go-top', 0.5);
			}
		} else {
			if ($('#j-go-top').is(":visible")) {
				baseUtil.fadeOut('#j-go-top', 0.5);
			}
		}
	});

});