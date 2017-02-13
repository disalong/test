$(function() {
	/**
	*弹出错误提示，比如校验失败，系统错误等等。
	*/
	window.alertError = $("#error_notification").kendoNotification({
		position : {
			pinned : true,
			top : 0
		},
		autoHideAfter : 10000,
		//有的时候可能希望可以选中错误提示文字，所以不让他点击关闭。
		hideOnClick : false,
		stacking : "down",
		animation : false,
		templates : [ {
			type : "error",
			template : $("#errorTemplate").html()
		} ],
		show : function(e) {
			var elementBeingShown = e.element;
			elementBeingShown.animo({
				animation : "flipInX",
				duration : 1,
				keep : false
			});
		}
	}).data("kendoNotification");

	/**
	*弹出成功提示，比如删除成功，操作成功等。
	*/
	window.alertSuccess = $("#success_notification").kendoNotification({
		position : {
			pinned : true,
			top : 0
		},
		stacking : "down",
		autoHideAfter : 4000,
		hideOnClick : false,
		animation : false,
		templates : [ {
			type : "success",
			template : $("#successTemplate").html()
		} ],
		show : function(e) {
			var elementBeingShown = e.element;
			elementBeingShown.animo({
				animation : "flipInX",
				duration : 0.8,
				keep : false
			});
		}
	}).data("kendoNotification");

	/**
	*弹出信息提示，比如收到邮件等等。
	*/
	window.alertInfo = $("#info_notification").kendoNotification({
		position : {
			pinned : true,
			bottom : 0
		},
		stacking : "up",
		autoHideAfter : 30000,
		hideOnClick : false,
		animation : false,
		templates : [ {
			type : "info",
			template : $("#infoTemplate").html()
		} ],
		show : function(e) {
			var elementBeingShown = e.element;
			elementBeingShown.animo({
				animation : "flipInX",
				duration : 0.8,
				keep : false
			});
		}
	}).data("kendoNotification");

	/**
	*弹出警告提示，比如剩下密码尝试次数警告等等。
	*/
	window.alertWarm = $("#warm_notification").kendoNotification({
		position : {
			pinned : true,
			top : 0
		},
		stacking : "down",
		autoHideAfter : 10000,
		hideOnClick : false,
		animation : false,
		templates : [ {
			type : "warm",
			template : $("#warmTemplate").html()
		} ],
		show : function(e) {
			var elementBeingShown = e.element;
			elementBeingShown.animo({
				animation : "flipInX",
				duration : 0.8,
				keep : false
			});
		}
	}).data("kendoNotification");
});