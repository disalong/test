<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/project/base/reference.jsp"%>
<!-- 弹出编辑窗口 -->
<%@include file="/WEB-INF/jsp/project/base/component/editWin.jsp"%>

<!-- 为网页title添加图标 -->
<link rel="icon"
	href="${ctx }/static/project/bdms/style/image/bdms-favicon.ico"
	type="image/x-icon" />
<link rel="shortcut icon"
	href="${ctx }/static/project/bdms/style/image/bdms-favicon.ico"
	type="image/x-icon" />
<title>本地美食</title>
<link rel="stylesheet"
	href="${ctx }/static/project/bdms/style/css/${fgConfig.defaultTheme }/page/header.css"></link>

<div id="bdms_fadeIn_header_area" class="bdms-fadeIn">
	<!-- 轮播器 -->
	<div id="j-topSpread" class="w-top-spread" mon="area=topBanner">
		<div style="background-color: #181743">
			<img alt="中秋佳节"
				src="${ctx }/static/project/bdms/style/image/342ac65c1038534306efef8a9b13b07eca80887d.jpg" />
		</div>
		<div style="background-color: #6BC8F4">
			<img alt="缤纷夏日"
				src="${ctx }/static/project/bdms/style/image/b8389b504fc2d5620c6a1044ef1190ef76c66c3d.jpg" />
		</div>
		<div style="background-color: #19162B">
			<img alt="星际迷航3"
				src="${ctx }/static/project/bdms/style/image/cf1b9d16fdfaaf51855ea61d845494eef11f7ad6.jpg" />
		</div>
		<div style="background-color: #B1885C">
			<img alt="健康美味"
				src="${ctx }/static/project/bdms/style/image/d6ca7bcb0a46f21fc99eaefffe246b600d33aef0.jpg" />
		</div>
	</div>
	<a id="j-topSpreadClose" class="close" href="javascript:;"></a>

	<!-- 右侧回到头部侧边栏 -->
	<ul mon="area=right_anchor" class="nav n-go-top" id="j-go-top"
		style="display: block;">
		<li><a class="item with-top-border go-top-2" href="#"><span
				class="gotop-ico inner-ico"><i class="fa fa-angle-up"></i></span><span
				class="inner-text">回到顶部</span></a></li>
		<li><div class="qrcode-side item">
				<i class="fa fa-qrcode"></i>
				<div class="qrcode-img">
					<a target="_blank" href="//d.nuomi.com/?1009764s"><p
							class="img qrcode-discount">二维码</p></a>
				</div>
			</div></li>
		<li><a
			href="http://uxsurvey.baidu.com/index.php?sid=58946&amp;newtest=Y&amp;lang=zh-Hans"
			class="item" target="_blank"><span class="question-ico inner-ico"><i
					class="fa fa-clipboard"></i></span><span class="inner-text">问卷调查</span></a></li>
	</ul>

	<!-- 用户菜单 -->
	<div id="header-bar"
		class="header-bar static-hook-real static-hook-id-1"
		mon="area=navigation">
		<div class="header-inner clearfix flexible ">
			<ul class="left-city first-level">
				<li class="with-padding">北京 <span class="sep-lines"></span>
				</li>
				<li class="city j-bar-dropdown"><a
					href="//www.nuomi.com/pcindex/main/changecity"> 切换城市 <span
						class="arrow-down-logo"></span>
				</a>
					<div class="city-drop-down">
						<h3>热门城市</h3>
						<ul>
							<li><a href="//bj.nuomi.com">北京</a></li>
							<li><a href="//sh.nuomi.com">上海</a></li>
							<li><a href="//gz.nuomi.com">广州</a></li>
							<li class="no-right-margin"><a href="//sz.nuomi.com">深圳</a></li>
							<li><a href="//tj.nuomi.com">天津</a></li>
							<li><a href="//hz.nuomi.com">杭州</a></li>
							<li><a href="//xa.nuomi.com">西安</a></li>
							<li class="no-right-margin"><a href="//cd.nuomi.com">成都</a></li>
							<li><a href="//zz.nuomi.com">郑州</a></li>
							<li><a href="//xm.nuomi.com">厦门</a></li>
							<li><a href="//qd.nuomi.com">青岛</a></li>
							<li class="no-right-margin"><a href="//ty.nuomi.com">太原</a></li>
							<li><a href="//cq.nuomi.com">重庆</a></li>
							<li><a href="//wh.nuomi.com">武汉</a></li>
							<li><a href="//nj.nuomi.com">南京</a></li>
							<li class="no-right-margin"><a href="//sy.nuomi.com">沈阳</a></li>
							<li><a href="//jn.nuomi.com">济南</a></li>
							<li><a href="//hrb.nuomi.com">哈尔滨</a></li>
						</ul>
						<a class="link morelink"
							href="//www.nuomi.com/pcindex/main/changecity">更多城市 ></a>
					</div></li>
			</ul>
			<div class="city-tip-area" style="display: none">
				系统定位您在珠海市，是否 <a href="//zh.nuomi.com">切换</a> ？ <a
					id="j-bubble-close" class="bubble-close"></a>
			</div>
			<div id="j-ucOrderStatus" class="uc-order-status"
				style="display: none">
				<ul>
					<li>有即将到期的糯米券 <a id="j-ucStatusLink-b"
						href="//www.nuomi.com/uc/order/order?status=2">查看</a>
					</li>
					<li><span></span> 笔订单未评价 <a id="j-ucStatusLink-c"
						href="//www.nuomi.com/uc/comment/not">去评价</a></li>
					<li><span></span> 笔订单未付款 <a id="j-ucStatusLink-d"
						href="//www.nuomi.com/uc/order/order?status=3">去付款</a></li>
					<li><span></span> 条新的商家回复 <a id="j-ucStatusLink-e"
						href="//www.nuomi.com/uc/comment/reply">查看</a></li>
				</ul>
				<a id="j-ucStatusLink-a" class="close-button" title="关闭消息框"
					href="javascript:;"></a>
			</div>
			<ul id="j-ucLoginList" class="right-util first-level has-login">
				<li class="welcome-text"><span id="j-welcomeTag"
					class="welcome-tag">Hi，chantingbo</span></li>
				<li class="login"><a id="j-barLoginBtn" href="#">登录</a> <span
					class="sep-lines"></span></li>
				<li class="reg"><a id="j-barRegBtn" href="#">注册</a> <span
					class="sep-lines"></span></li>
				<li class="logout"><a id="j-logout"
					href="https://passport.baidu.com/?logout">退出</a> <span
					class="sep-lines"></span></li>
				<li><a href="https://passport.baidu.com/?logout">我的优惠券</a> <span
					class="sep-lines"></span></li>
				<li class="j-bar-dropdown"><a
					href="${ctx }/baseUserWS/UserReadService/findOne/bdms?p_o_userId=9905610629035149eb3c01113e4419c8bec52c94d5dde8b">
						我的美食 <span class="arrow-down-logo"></span>
				</a> <span class="sep-lines"></span>
					<div class="uc-list header-dropmenu">
						<a href="//www.nuomi.com/uc/collection/online">我的优惠券</a> <a
							href="//www.nuomi.com/uc/collection/online">我的收藏</a> <a
							href="//www.nuomi.com/uc/comment/not">我的评价</a> <a
							href="//www.nuomi.com/uc/user/userinfo">帐户设置</a>
					</div></li>
				<li id="j-visitedArea" class=""><a href="#"> <span
						class="j-visitedArea-title">最近浏览</span> <span
						class="arrow-down-logo"></span>
				</a> <span class="sep-lines"></span>
					<div id="j-visitedContainer"
						class="header-dropmenu items right-side">
						<a class="item first" target="_blank"
							data-item-st="5130159779c7bbcb3d19a8042f63952a"
							mon="s=5130159779c7bbcb3d19a8042f63952a&element=2911325&position=1&element_type=item"
							href="//www.nuomi.com/deal/esibf2q8.html"> <img width="120"
							height="74"
							src="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/wh%3D230%2C140/sign=7e599e45ac51f3dec3e7b166a7dedc2e/6a63f6246b600c33640b8847194c510fd8f9a1cb.jpg">
							<div class="title-area">
								<div class="title">蜀秀酒楼100代金券</div>
								<div class="price-area">
									<span class="price">￥88</span> <span class="ori-price">￥100</span>
								</div>
							</div>
						</a>
						<div class="visited-clear">
							<a class="link j-clearVisited" href="javascript:;">清空浏览记录</a>
						</div>
					</div></li>
				<li class="j-bar-dropdown"><a href="#"> <span>我是商家</span> <span
						class="arrow-down-logo"></span>
				</a> <span class="sep-lines"></span>
					<div class="merchant-list header-dropmenu">
						<a target="_blank" href="http://y.nuomi.com">商户中心</a> <a
							target="_blank" href="http://cooperation.nuomi.com/clue/index">我想合作</a>
					</div></li>
				<li class="j-bar-dropdown"><a href="#"> <span
						class="j-visitedArea-title">关注</span> <span
						class="arrow-down-logo"></span>
				</a> <span class="sep-lines"></span>
					<div class="notice-drop">
						<div class="new-erweima">
							<img
								src="//gss0.bdstatic.com/8r1VfDn7KggZnd_b8IqT0jB-xx1xbK/static/common/img/new/new-erweima_c0dcfe4.png?__sprite">
							</img>
						</div>
						<h4>
							百度糯米: <span class="hot">nuomivip</span>
						</h4>
					</div></li>
				<li class="no-right-border"><a href="//www.nuomi.com/help">帮助中心</a></li>
			</ul>
		</div>
	</div>

	<!-- 搜索栏 -->
	<div id="search-bar-container">
		<div
			class="search-bar clearfix flexible static-hook-real static-hook-id-2"
			mon="area=searchTop">
			<div class="logo-area">
				<img alt="本地美食网商标"
					src="${ctx }/static/project/bdms/style/image/bdms-logo.jpg">
			</div>
			<div class="search-area clearfix">
				<div class="form-wrap clearfix n-textbox" data-ui-id="main-searcher"
					data-ctrl-context="default" data-ctrl-id="main-searcher">
					<form id="j-searchForm" action="//www.nuomi.com/search"
						method="get">
						<input id="j-searchInput" class="searchinput input-placeholder"
							type="text" autocomplete="off" placeholder="搜索商家或地点"
							data-placeholder="" value="" name="k" style="">
						<div class="searchbtn-wrap">
							<input id="j-searchBtn" class="searchbtn" type="submit" value=""><i
								class="fa fa-search"></i>
						</div>
						<input id="j-input-hidden" type="hidden"
							value="0c155054b6ca558e763bf73310e8e279" name="rid">
					</form>
					<div id="ctrl-textbox-main-searcher-autocomplete"
						class="n-textbox-autocomplete" style="position: absolute;"></div>
				</div>
				<ul class="reco-list">
					<li><a
						href="//bj.nuomi.com/search?k=%E8%81%9A%E4%BC%98%E6%83%A0%E9%A4%90%E9%A5%AE&rid=5deb7da52009da1d526c0046a163c5ae">聚优惠餐饮</a>
					</li>
					<li><a
						href="//bj.nuomi.com/search?k=%E5%A5%BD%E4%BC%A6%E5%93%A5&rid=5deb7da52009da1d526c0046a163c5ae">好伦哥</a>
					</li>
					<li><a
						href="//bj.nuomi.com/search?k=%E7%83%A4%E9%B8%AD&rid=5deb7da52009da1d526c0046a163c5ae">烤鸭</a>
					</li>
				</ul>
			</div>
			<div class="utils clearfix">
				<a target="_blank" href="//www.nuomi.com/pcindex/about/promise">
					<div class="util-item refund">
						<i class="refund fa fa-bell-o"></i>
						<div class="util-tip">是否推荐，看鸣钟！</div>
					</div>
					<div class="util-item mid">
						<i class="fa fa-balance-scale pei"></i>
						<div class="util-tip">货真价实，看天枰！</div>
					</div>
					<div class="util-item last">
						<i class="fa fa-diamond money"></i>
						<div class="util-tip">消费档次，看钻石！</div>
					</div>
				</a>
			</div>
		</div>
	</div>

	<!-- 功能菜单 -->
	<div
		class="nav-bar-header nav-area-index static-hook-real static-hook-id-3"
		id="bdms_function_menu">
		<div class="nav-inner flexible clearfix">
			<ul id="j-catg" class="nav-list clearfix"
				mon="area=nav&element_type=nav">
				<li class="nav-item cate-row all-cate deep"><span class="item ">全部分类</span><span
					class="arrow-down"></span>
					<div id="j-catg-list" class="left-menu clearfix">
						<div class="level-item" catg-id="326">
							<div class="first-level j-catg-row has-second-lever"
								mon="area=catg_326" data-index="0">
								<dl>
									<dt class="title">
										<a target="_top" href="//bj.nuomi.com/326">中国菜</a>
									</dt>
									<dd>
										<a class="" target="_top" href="//t10.nuomi.com/pc/t10/index">八大菜系</a>
									</dd>
								</dl>
							</div>
							<div class="second-level with-min" mon="area=catg_hover_326">
								<div class="section clearfix">
									<div class="section-item clearfix no-top-border ">
										<span class="bdms-menu-second-title"><a href="#">川菜（鱼香味、麻辣味、酸辣味等）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 回锅肉</a>、<a class="" target="_top"
												href="//bj.nuomi.com/364"> 鱼香肉丝</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 宫爆鸡丁</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 水煮鱼</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 麻婆豆腐</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 干烧鱼</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 钵钵鸡</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 毛血旺</a><a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 夫妻肺片</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 赖汤元</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 龙抄手</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 钟水饺</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 担担面</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 三大炮</a><a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 玉米饼</a>、<a class="" target="_top"
												href="//bj.nuomi.com/364"> 小笼包</a>、<a class="" target="_top"
												href="//bj.nuomi.com/364"> 蒸饺</a>、<a class="" target="_top"
												href="//bj.nuomi.com/364"> 糍粑</a>、<a class="" target="_top"
												href="//bj.nuomi.com/364"> 面皮</a>、<a class="" target="_top"
												href="//bj.nuomi.com/364"> 小馒头</a><a class="bdms-mu-all"
												class="" target="_top" href="//bj.nuomi.com/364">
													&nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
									<div class="section-item clearfix no-top-border ">
										<span class="bdms-menu-second-title"><a href="#">鲁菜（咸、鲜、浓油赤酱）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
									<div class="section-item clearfix no-top-border ">
										<span class="bdms-menu-second-title"><a href="#">粤菜（原汁原味、咸、鲜、清淡）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
									<div class="section-item clearfix no-top-border ">
										<span class="bdms-menu-second-title"><a href="#">苏菜（甜、黄酒味）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
									<div class="section-item clearfix no-top-border ">
										<span class="bdms-menu-second-title"><a href="#">闽菜（咸甜（南部）、香辣（北部））</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
									<div class="section-item clearfix no-top-border ">
										<span class="bdms-menu-second-title"><a href="#">徽菜（重油味、重盐）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
									<div class="section-item clearfix no-top-border ">
										<span class="bdms-menu-second-title"><a href="#">湘菜（重油、重盐、重辣、腌制腊味）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
									<div
										class="section-item clearfix no-top-border no-bottom-border">
										<span class="bdms-menu-second-title"><a href="#">浙菜（酱香味浓）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="level-item" catg-id="345">
							<div class="first-level j-catg-row has-second-lever"
								mon="area=catg_345" data-index="1">
								<dl>
									<dt class="title">
										<a target="_top" href="//bj.nuomi.com/movie">东南亚菜</a>
									</dt>
									<dd>
										<a class="" target="_top" href="//bj.nuomi.com/xuanzuo/">泰国</a>
									</dd>
									<dd>
										<a class="" target="_top" href="//bj.nuomi.com/film/">越南</a>
									</dd>
									<dd>
										<a class="" target="_top" href="//bj.nuomi.com/film/">印度</a>
									</dd>
								</dl>
							</div>
							<div class="second-level with-min" mon="area=catg_hover_345">
								<div class="section clearfix">
									<div class="section-item clearfix no-top-border ">
										<span class="bdms-menu-second-title"><a href="#">泰国菜（酸、辣、咖喱）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
									<div class="section-item clearfix no-top-border ">
										<span class="bdms-menu-second-title"><a href="#">印度菜（各种辣度的咖喱，极富层次感）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
									<div class="section-item clearfix no-top-border ">
										<span class="bdms-menu-second-title"><a href="#">越南菜（偏酸辣）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="level-item" catg-id="320">
							<div class="first-level j-catg-row has-second-lever"
								mon="area=catg_320" data-index="2">
								<dl>
									<dt class="title">
										<a target="_top" href="//bj.nuomi.com/320">西餐</a>
									</dt>
									<dd>
										<a class="" target="_top" href="//bj.nuomi.com/341">意式</a>
									</dd>
									<dd>
										<a class="" target="_top" href="//bj.nuomi.com/338">法式</a>
									</dd>
								</dl>
							</div>
							<div class="second-level with-min" mon="area=catg_hover_320">
								<div class="section clearfix">
									<div class="section-item clearfix no-top-border ">
										<span class="bdms-menu-second-title"><a href="#">法式（酸、辣、咖喱）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
									<div class="section-item clearfix no-top-border ">
										<span class="bdms-menu-second-title"><a href="#">英式（各种辣度的咖喱，极富层次感）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
									<div class="section-item clearfix no-top-border ">
										<span class="bdms-menu-second-title"><a href="#">意式（偏酸辣）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
									<div
										class="section-item clearfix no-top-border no-bottom-border">
										<span class="bdms-menu-second-title"><a href="#">俄式（偏酸辣）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title ">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="level-item" catg-id="330">
							<div class="first-level j-catg-row has-second-lever"
								mon="area=catg_330" data-index="3">
								<dl>
									<dt class="title">
										<a target="_blank"
											href="//vip.baidu.com/act/xuyuan?vip_frm=1yuanqiang_nuomi_pc_mu">港澳台美食</a>
									</dt>
									<dd>
										<a target="_blank"
											href="//vip.baidu.com/act/xuyuan?vip_frm=1yuanqiang_nuomi_pc_mu_1">香港</a>
									</dd>
									<dd>
										<a target="_blank"
											href="//vip.baidu.com/act/xuyuan?vip_frm=1yuanqiang_nuomi_pc_mu_2">澳门</a>
									</dd>
								</dl>
							</div>
							<div class="second-level with-min" mon="area=catg_hover_320">
								<div class="section clearfix">
									<div class="section-item clearfix no-top-border ">
										<span class="bdms-menu-second-title"><a href="#">香港（酸、辣、咖喱）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
									<div class="section-item clearfix no-top-border ">
										<span class="bdms-menu-second-title"><a href="#">澳门（各种辣度的咖喱，极富层次感）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
									<div
										class="section-item clearfix no-top-border no-bottom-border">
										<span class="bdms-menu-second-title"><a href="#">台湾（偏酸辣）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="level-item" catg-id="316">
							<div class="first-level j-catg-row has-second-lever"
								mon="area=catg_316" data-index="4">
								<dl>
									<dt class="title">
										<a target="_top" href="//bj.nuomi.com/316">日韩料理</a>
									</dt>
									<dd>
										<a class="" target="_top" href="//bj.nuomi.com/956">韩国</a>
									</dd>
									<dd>
										<a class="" target="_top" href="//bj.nuomi.com/703">日本</a>
									</dd>
								</dl>
							</div>
							<div class="second-level with-min" mon="area=catg_hover_316">
								<div class="section clearfix">
									<div class="section-item clearfix no-top-border ">
										<span class="bdms-menu-second-title"><a href="#">韩国（各种辣度的咖喱，极富层次感）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
									<div
										class="section-item clearfix no-top-border no-bottom-border">
										<span class="bdms-menu-second-title"><a href="#">日本（偏酸辣）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="level-item" catg-id="642">
							<div class="first-level j-catg-row has-second-lever"
								mon="area=catg_642" data-index="5">
								<dl>
									<dt class="title">
										<a target="_top" href="//t.nuomi.com">快餐即食</a>
									</dt>
									<dd>
										<a class="" target="_top" href="//t.nuomi.com/bj">粥粉面</a>
									</dd>
									<dd>
										<a class="" target="_top" href="//t.nuomi.com/sh">饭食</a>
									</dd>
								</dl>
							</div>
							<div class="second-level with-min" mon="area=catg_hover_316">
								<div class="section clearfix">
									<div class="section-item clearfix no-top-border ">
										<span class="bdms-menu-second-title"><a href="#">韩国（各种辣度的咖喱，极富层次感）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
									<div
										class="section-item clearfix no-top-border no-bottom-border">
										<span class="bdms-menu-second-title"><a href="#">日本（偏酸辣）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="level-item" catg-id="708">
							<div class="first-level j-catg-row has-second-lever"
								mon="area=catg_708" data-index="6">
								<dl>
									<dt class="title">
										<a target="_top" href="//v.nuomi.com">靓汤甜品速递</a>
									</dt>
									<dd>
										<a class="" target="_top" href="//v.nuomi.com/1000338">甜品</a>
									</dd>
									<dd>
										<a class="" target="_top" href="//v.nuomi.com/1000700">汤</a>
									</dd>
								</dl>
							</div>
							<div class="second-level with-min" mon="area=catg_hover_708">
								<div class="section clearfix">
									<div class="section-item clearfix no-top-border ">
										<span class="bdms-menu-second-title"><a href="#">韩国（各种辣度的咖喱，极富层次感）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
									<div
										class="section-item clearfix no-top-border no-bottom-border">
										<span class="bdms-menu-second-title"><a href="#">日本（偏酸辣）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="level-item" catg-id="955">
							<div
								class="first-level j-catg-row first-level-last has-second-lever"
								mon="area=catg_955" data-index="7">
								<dl>
									<dt class="title">
										<a target="_top" href="//bj.nuomi.com/955">个人作品</a>
									</dt>
									<dd>
										<a class="" target="_top" href="//bj.nuomi.com/646">私人美味</a>
									</dd>
								</dl>
							</div>
							<div class="second-level with-min" mon="area=catg_hover_955">
								<div class="section clearfix">
									<div class="section-item clearfix no-top-border ">
										<span class="bdms-menu-second-title"><a href="#">韩国（各种辣度的咖喱，极富层次感）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
									<div
										class="section-item clearfix no-top-border no-bottom-border">
										<span class="bdms-menu-second-title"><a href="#">日本（偏酸辣）</a></span>
										<div class="bdms-menu-third-title">
											<span>菜肴：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 烧腊</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 粥 </a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 葱油鸡 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 烧乳猪 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 蒸肉饼 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 乳鸽</a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 煲仔饭 </a>、<a
												class="" target="_top" href="//bj.nuomi.com/364"> 海鲜砂锅粥
											</a><a class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>小吃：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 粉果</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 沙翁</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 粽子</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 濑粉</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 脆麻花</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
										<div class="bdms-menu-third-title">
											<span>甜品，点心，汤：<a class="" target="_top"
												href="//bj.nuomi.com/327"> 红豆沙</a><span>、</span><a class=""
												target="_top" href="//bj.nuomi.com/364"> 八宝粥</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 芝麻糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 杏仁糊</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 汤丸</a>、<a class=""
												target="_top" href="//bj.nuomi.com/364"> 双皮奶</a>、<a
												class="bdms-mu-all" class="" target="_top"
												href="//bj.nuomi.com/364"> &nbsp;&nbsp;&nbsp;&nbsp;所有...</a></span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div></li>
				<li class="nav-item nav-item-first"><a class="item first"
					target="_top" href="//bj.nuomi.com">首页</a></li>
				<li class="nav-item hot-item-l"><a class="item " target="_top"
					href="//t10.nuomi.com/pc/t10/index?tid=t10_bj_pc">精选品牌</a> <i
					class="fa fa-star"></i></li>
				<li class="nav-item hot-item-s"><a class="item " target="_top"
					href="//bj.nuomi.com/movie">电影</a> <i class="fa fa-star"></i></li>
				<li class="nav-item"><a class="item " target="_top"
					href="//t.nuomi.com">酒店</a></li>
				<li class="nav-item item-dropdown">
					<div class="item">出行</div> <i
					class="fa fa-angle-down item-icon-arrowdown"></i>
					<ul class="item-arrowdown-container">
						<li class="arrowdown-item"><a class="arrowdown-item-link"
							target="_blank"
							href="http://flight.baidu.com/flight/h5redirect?v=1.0&type=1&client=pcweb&app_from=bainuo&src_from=bainuo_pc_main">
								<div>机票</div>
						</a></li>
						<li class="arrowdown-item"><a class="arrowdown-item-link"
							target="_blank"
							href="http://api.kuai.baidu.com/cserver/train/redirectctrip?&u=http%253a%252f%252ftrains.ctrip.com%252f%253f%2526mkt_header%253dbdkx%2526allianceID%253d106175%2526sid%253d549977%0a&us=nuomi_pc">
								<div>火车票</div>
						</a></li>
						<li class="arrowdown-item"><a class="arrowdown-item-link"
							target="_blank"
							href="//kuai.baidu.com/pc/index/index?us=nuomi_pc">
								<div>汽车票</div>
						</a></li>
					</ul>
				</li>
				<li class="nav-item"><a class="item " target="_blank"
					href="//vip.baidu.com/act/xuyuan?vip_frm=1yuanqiang_nuomi_pc_ba">一元抢宝</a>
				</li>
				<li class="nav-item"><a class="item" target="_blank"
					href="http://waimai.baidu.com/?utm_source=bainuo&utm_medium=nav&utm_content=toububiaoqian&utm_term=default&utm_campaign=beijing&cid=PC_%E5%93%81%E7%89%8C%E6%8E%A8%E5%B9%BF_940766">外卖</a>
				</li>
				<li class="nav-item"><a class="item " target="_top"
					href="//bj.nuomi.com/new">今日新单</a></li>
			</ul>
		</div>
	</div>
</div>

<script type="text/javascript"
	src="${ctx }/static/project/bdms/js/login.js"></script>
<script type="text/javascript"
	src="${ctx }/static/project/bdms/js/page/header.js"></script>
