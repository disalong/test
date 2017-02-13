$(function() {
	/**
	 * 头部中央轮播器
	 */
	$('#base-header-center-slide').slick({
		autoplay : true,
		autoplaySpeed : 5000,
		draggable : true,
		arrows : false,
		dots : true,
		fade : false,
		speed : 1000,
		infinite : true,
		easing : 'easeInOutQuint',
		touchThreshold : 100,
		lazyLoad : 'ondemand',
		slidesToShow : 1,
		slidesToScroll : 1
	});
	/**
	 * 鼠标移动到“全部区域”的下箭头，添加class,使动画有效。
	 */
	$(".mid-area .all-locate .locate-logo").bind("mouseenter", function() {
		$("#all-location-list").addClass("hover");
	});
	$("#all-location-list").bind("mouseleave", function() {
		$("#all-location-list").removeClass("hover");
	});
	/**
	 * 头部中央右边小轮播器
	 */
	$('#j-rightAd').slick({
		autoplay : true,
		autoplaySpeed : 6000,
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
	 * 网页左侧楼层导航条跟随滚动
	 */
	$("#sticky-panel").css("margin-top", (screenHeight / 3) + "px");
	baseWidget.scrollMenu($("#sticky-panel"));
	/**
	 * 首页最下方的热门分类tab切换添加事件
	 */
	$("#c-bottom .tab-nav a").click(
			function() {
				$(this).addClass("active");
				$("#c-bottom .tab-nav a").not($(this)).removeClass("active");
				var index = $("#c-bottom .tab-nav a").index($(this));
				var bottomContent = $($("#c-bottom .bottom-content")[index]);
				bottomContent.css("display", "block");
				$("#c-bottom .bottom-content").not(bottomContent).css(
						"display", "none");
			});
});