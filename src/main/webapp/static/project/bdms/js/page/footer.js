$(function() {

	/**
	 * 网页渐现，提高体验
	 */
	baseUtil.fadeIn(".bdms-fadeIn", 1, function() {
		/**
		 * 网页头部的"搜索框"保持固定位置浮动，由于stick_in_parent()方法必须要元素可见才起作用，
		 * 所以要等到页面显示出来后才能调用。
		 */
		$("#search-bar-container").stick_in_parent({
			parent : "body"
		});
	});
});
