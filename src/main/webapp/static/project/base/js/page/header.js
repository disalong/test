$(function() {

	(function() {

		/**
		 * 判断用户时候已经登录，如果登录，显示用户头像，否则显示“登录|注册”。
		 */
		function showUserLinkOrUserLogo() {
			var userOprationDiv = $("#userOprationDiv");
			var loginUrl = $("#loginUrl");
			if (loginToken_user) {
				var userName = loginToken_user.userNickname
						|| loginToken_user.userName
						|| loginToken_user.userMobilePhone
						|| loginToken_user.userEmail;
				$(".userNameLi").prepend(userName);
				$("#userOprationUl").kendoMenu();
				$(".userNameLi").find('.k-icon').remove();
				var load = function() {
					$(".base-head-content .base-head-pic").show();
					userOprationDiv.show();
					userOprationDiv.animo({
						animation : "fadeIn",
						duration : 1,
						keep : false
					});
					setTimeout(function() {
						$("#logoutButton").click(function() {
							baseUtil.AJpost(url3, {}, function(data) {
								location.href = ctx + "/login";
							});
						});
					}, 1000);
				};
				if (loginToken_user["userHeadImg"]) {
					baseWidget.giveHeadImg(
							$(".base-head-content .base-head-pic"),
							loginToken_user["userHeadImg"]);
					$(".base-head-content .base-head-pic")[0].onload = load;
				} else {
					load();
				}
			} else {
				loginUrl.show();
			}
			$("#baseLogo").bind("mouseover", function() {
				$("#baseLogo").animo({
					animation : "jello",
					duration : 1,
					keep : false
				});
			});
		}

		var url = ctx + "/baseUserWS/MenuReadService/findMenuItems";
		var url2 = ctx
				+ "/baseUserWS/MenuReadService/findIsPermissionMenuIdByUserId";
		var url3 = ctx + "/baseUserWS/logout";
		baseUtil.AJpost(url, {
			"p_o_lang" : $.cookie("lang"),
			"p_o_ctx" : ctx
		}, function(data) {
			var topMenu = $("#topMenu");
			var topMenuDiv = $("#topMenuDiv");
			var topMenuData = topMenu.kendoMenu({
				dataSource : data
			}).data("kendoMenu");
			topMenuData.enable(".menuIsLeafMenu", false);
			setTimeout(function() {
				topMenuDiv.show();
				if (baseUtil.isIE68()) {
					showUserLinkOrUserLogo();
				} else {
					topMenuDiv.animo({
						animation : "slideInDown",
						duration : 0.2,
						keep : false
					});
					setTimeout(function() {
						showUserLinkOrUserLogo();
					}, 200);
				}
				baseUtil.AJpost(url2, {}, function(data) {
					for ( var i in data) {
						topMenuData.enable("." + data[i], true);
					}
				});
			}, 1000);
		});
	})();
});
