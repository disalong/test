<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/jsp/project/bdms/page/header.jsp"%>
<link rel="stylesheet"
	href="${ctx }/static/project/bdms/style/css/${fgConfig.defaultTheme }/index.css"></link>
<title></title>
</head>
<body mon="page=index_new">
	<div id="bdms_fadeIn_index_area" class="bdms-fadeIn">
		<!-- 头部中央区域（轮播器+热门链接） -->
		<div class="container clearfix flexible" id="bdms_slide_area">
			<div class="top-container clearfix">
				<div class="mid-area">
					<div id="base-header-center-slide" class="slide-holder"
						mon="area=recomHot">
						<div>
							<img alt="base-header-center-slide-1"
								src="${ctx }/static/project/bdms/style/image/base-header-center-slide-1.jpg" />
						</div>
						<div>
							<img alt="base-header-center-slide-2"
								src="${ctx }/static/project/bdms/style/image/base-header-center-slide-2.jpg" />
						</div>
						<div>
							<img alt="base-header-center-slide-3"
								src="${ctx }/static/project/bdms/style/image/base-header-center-slide-3.jpg" />
						</div>
					</div>
					<div class="list-container clearfix">
						<div class="list-wrapper clearfix"
							mon="area=mid_category_hot_tuangou">
							<div class="title">热门美食</div>
							<ul class="mid-list">
								<li><a class="" mon="element=电影&position=0"
									href="//www.nuomi.com/deal/movies">盐焗鸡</a></li>
								<li><a class="hot" mon="element=自助餐&position=1"
									href="//www.nuomi.com/392">自助餐</a></li>
								<li><a class="" mon="element=KTV&position=2"
									href="//www.nuomi.com/341">汤包</a></li>
								<li><a class="hot" mon="element=火锅&position=3"
									href="//www.nuomi.com/364">火锅</a></li>
								<li><a class="" mon="element=蛋糕&position=4"
									href="//www.nuomi.com/881">蛋糕</a></li>
								<li><a class="hot" mon="element=酒店&position=5"
									href="//t.nuomi.com">海鲜</a></li>
								<li><a class="" mon="element=小吃快餐&position=6"
									href="//www.nuomi.com/380">小吃快餐</a></li>
								<li><a class="" mon="element=西餐&position=7"
									href="//www.nuomi.com/391">西餐</a></li>
								<li><a class="" mon="element=川菜&position=8"
									href="//www.nuomi.com/393">川菜</a></li>
								<li><a class="hot" mon="element=家居家纺&position=9"
									href="//w.nuomi.com/?/357-0-0-f-gn">家居家纺</a></li>
							</ul>
						</div>
						<div class="list-wrapper clearfix"
							mon="area=mid_category_all_zone">
							<div class="title">全部区域</div>
							<ul id="j-location-list" class="mid-list">
								<li><a class="" mon="element=地铁附近&position=0"
									href="//bj.nuomi.com/all/1">地铁附近</a></li>
								<li><a class="" mon="element=朝阳区&position=1"
									href="//bj.nuomi.com/all/307">朝阳区</a></li>
								<li><a class="" mon="element=海淀区&position=2"
									href="//bj.nuomi.com/all/392">海淀区</a></li>
								<li><a class="" mon="element=丰台区&position=3"
									href="//bj.nuomi.com/all/395">丰台区</a></li>
								<li><a class="" mon="element=昌平区&position=4"
									href="//bj.nuomi.com/all/406">昌平区</a></li>
								<li><a class="" mon="element=通州区&position=5"
									href="//bj.nuomi.com/all/408">通州区</a></li>
								<li><a class="" mon="element=西城区&position=6"
									href="//bj.nuomi.com/all/396">西城区</a></li>
								<li><a class="" mon="element=大兴区&position=7"
									href="//bj.nuomi.com/all/409">大兴区</a></li>
								<li><a class="" mon="element=东城区&position=8"
									href="//bj.nuomi.com/all/394">东城区</a></li>
								<li><a class="" mon="element=房山区&position=9"
									href="//bj.nuomi.com/all/6544">房山区</a></li>
								<li><a class="" mon="element=顺义区&position=10"
									href="//bj.nuomi.com/all/6545">顺义区</a></li>
								<li><a class="" mon="element=石景山区&position=11"
									href="//bj.nuomi.com/all/410">石景山区</a></li>
								<li><a class="" mon="element=密云县&position=12"
									href="//bj.nuomi.com/all/6548">密云县</a></li>
								<li><a class="" mon="element=怀柔区&position=13"
									href="//bj.nuomi.com/all/6546">怀柔区</a></li>
								<li><a class="" mon="element=平谷区&position=14"
									href="//bj.nuomi.com/all/6547">平谷区</a></li>
								<li><a class="" mon="element=延庆县&position=15"
									href="//bj.nuomi.com/all/6549">延庆县</a></li>
								<li><a class="" mon="element=门头沟区&position=16"
									href="//bj.nuomi.com/all/5985">门头沟区</a></li>
							</ul>
							<div class="all-locate">
								<i class="locate-logo fa fa-angle-down"></i>
							</div>
							<div id="all-location-list" class="all-location-list">
								<div class="title">全部区域</div>
								<ul class="mid-list">
									<li><a class="" mon="element=地铁附近&position=0"
										href="//bj.nuomi.com/all/1">地铁附近</a></li>
									<li><a class="" mon="element=朝阳区&position=1"
										href="//bj.nuomi.com/all/307">朝阳区</a></li>
									<li><a class="" mon="element=海淀区&position=2"
										href="//bj.nuomi.com/all/392">海淀区</a></li>
									<li><a class="" mon="element=丰台区&position=3"
										href="//bj.nuomi.com/all/395">丰台区</a></li>
									<li><a class="" mon="element=昌平区&position=4"
										href="//bj.nuomi.com/all/406">昌平区</a></li>
									<li><a class="" mon="element=通州区&position=5"
										href="//bj.nuomi.com/all/408">通州区</a></li>
									<li><a class="" mon="element=西城区&position=6"
										href="//bj.nuomi.com/all/396">西城区</a></li>
									<li><a class="" mon="element=大兴区&position=7"
										href="//bj.nuomi.com/all/409">大兴区</a></li>
									<li><a class="" mon="element=东城区&position=8"
										href="//bj.nuomi.com/all/394">东城区</a></li>
									<li><a class="" mon="element=房山区&position=9"
										href="//bj.nuomi.com/all/6544">房山区</a></li>
									<li><a class="" mon="element=顺义区&position=10"
										href="//bj.nuomi.com/all/6545">顺义区</a></li>
									<li><a class="" mon="element=石景山区&position=11"
										href="//bj.nuomi.com/all/410">石景山区</a></li>
									<li><a class="" mon="element=密云县&position=12"
										href="//bj.nuomi.com/all/6548">密云县</a></li>
									<li><a class="" mon="element=怀柔区&position=13"
										href="//bj.nuomi.com/all/6546">怀柔区</a></li>
									<li><a class="" mon="element=平谷区&position=14"
										href="//bj.nuomi.com/all/6547">平谷区</a></li>
									<li><a class="" mon="element=延庆县&position=15"
										href="//bj.nuomi.com/all/6549">延庆县</a></li>
									<li><a class="" mon="element=门头沟区&position=16"
										href="//bj.nuomi.com/all/5985">门头沟区</a></li>
								</ul>
							</div>
						</div>
						<div id="j-hotRange" class="list-wrapper clearfix last"
							mon="area=mid_category_hot_circle">
							<div class="title">热门商圈</div>
							<ul class="mid-list no-bottom-border">
								<li><a class="link " mon="position=0&element=望京"
									href="//bj.nuomi.com/all/307-1388">望京</a></li>
								<li><a class="link " mon="position=1&element=青年路"
									href="//bj.nuomi.com/all/307-6440">青年路</a></li>
								<li><a class="link " mon="position=2&element=亚运村"
									href="//bj.nuomi.com/all/307-1396">亚运村</a></li>
								<li><a class="link " mon="position=3&element=五道口"
									href="//bj.nuomi.com/all/392-1318">五道口</a></li>
								<li><a class="link " mon="position=4&element=马家堡"
									href="//bj.nuomi.com/all/395-7932">马家堡</a></li>
								<li><a class="link " mon="position=5&element=方庄"
									href="//bj.nuomi.com/all/395-1325">方庄</a></li>
								<li><a class="link " mon="position=6&element=清河"
									href="//bj.nuomi.com/all/392-1440">清河</a></li>
								<li><a class="link " mon="position=7&element=昌平镇"
									href="//bj.nuomi.com/all/406-1397">昌平镇</a></li>
								<li><a class="link " mon="position=8&element=北太平庄"
									href="//bj.nuomi.com/all/392-1372">北太平庄</a></li>
								<li><a class="link " mon="position=9&element=万柳"
									href="//bj.nuomi.com/all/392-8001">万柳</a></li>
								<li><a class="link " mon="position=10&element=管庄"
									href="//bj.nuomi.com/all/307-1411">管庄</a></li>
								<li><a class="link " mon="position=11&element=回龙观"
									href="//bj.nuomi.com/all/406-1405">回龙观</a></li>
								<li><a class="link " mon="position=12&element=朝阳大悦城"
									href="//bj.nuomi.com/all/307-11565">朝阳大悦城</a></li>
								<li><a class="link " mon="position=13&element=通州北苑"
									href="//bj.nuomi.com/all/408-11574">通州北苑</a></li>
								<li><a class="link " mon="position=14&element=亦庄"
									href="//bj.nuomi.com/all/409-1418">亦庄</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="right-sidebar">
				<!-- 中右小轮播器 -->
				<div id="j-rightAd" class="right-ad">
					<div>
						<img alt="base-header-center-right-slide-1"
							src="${ctx }/static/project/bdms/style/image/base-header-center-right-slide-1.jpg" />
					</div>
					<div>
						<img alt="base-header-center-right-slide-2"
							src="${ctx }/static/project/bdms/style/image/base-header-center-right-slide-2.jpg" />
					</div>
					<div>
						<img alt="base-header-center-right-slide-3"
							src="${ctx }/static/project/bdms/style/image/base-header-center-right-slide-3.jpg" />
					</div>
				</div>
				<div class="right-erweima" mon="area=app_download">
					<a class="qrcode-discount"
						mon="element=https://d.nuomi.com/?1009764s" target="_blank"
						href="//d.nuomi.com/?1009764s" style="visibility: visible;">下载手机版</a>
				</div>
				<div id="new-index-right-sidebar-wrap" style="display: none"></div>
			</div>
			<div id="j-top-search-show" class="content-container">
				<div class="no-recom-container">
					<div id="j-fix-right-container" class="fix-right-container">
						<div id="j-hotTopic" class="hot-area no-bottom-border">
							<h2>热门专题</h2>
							<ul alog-group="bainuo-list-hotTopic"
								alog-alias="bainuo-list-hotTopic" bn_box="topic&amp;position"
								mon="area=topic&amp;element_type=nav" class="hotlist">
								<li><a class="clearfix"
									mon="element=adver_16877&amp;position=1"
									href="http://top.baidu.com/category?c=521"><div
											class="left-content">
											<h3>百度风云榜</h3>
											<p>餐饮品类大数据</p>
										</div>
										<div class="right-pic">
											<img
												src="//gss0.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/lbs/pic/item/14ce36d3d539b6002fe77a6aef50352ac75cb7c5.jpg">
										</div></a></li>
							</ul>
						</div>
						<div id="j-hotMall" class="hot-mall">
							<a
								mon="page=new_index&amp;area=hardWide&amp;element=marketAds&amp;position=1"
								target="_blank" href="/pcindex/market/marketlist"
								class="hot-mall-detail"> <img
								src="//gss0.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/lbs/pic/item/d439b6003af33a87a3053801c05c10385343b544.jpg"
								class="mall-pic">
							</a>
						</div>
					</div>
					<div>
						<div mon="area=t10" id="sticky-refer" class="top-collect">
							<div class="top-title clearfix">
								<span class="title">精选品牌</span><span class="sub-title">Brand
									selection</span><span class="right-all"><a
									mon="element=link_all"
									href="//t10.nuomi.com/pc/t10/index?tid=t10_bj_pc">全部<span
										class="all-cate-arrow"></span></a></span>
							</div>
							<div id="j-t10logo-box">
								<div class="t10-logo-wall clearfix">
									<div class="left-img">
										<img
											src="//gss0.bdstatic.com/8r1VfDn7KggZnd_b8IqT0jB-xx1xbK/static/list/img/t10logo_left_81e0b43.png">
									</div>
									<div class="logo-list clearfix">
										<a mon="element=link" target="_blank" class="t10-logo"
											href="//t10.nuomi.com/pc/t10/index?tid=t10_bj_pc">
											<div class="logo-item">
												<div class="logo-border">
													<img
														src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/nuomi/pic/item/b3b7d0a20cf431ad839255124c36acaf2edd985c.jpg"
														style="height: 75px; width: auto;">
												</div>
											</div>
											<div class="logo-item">
												<div class="logo-border">
													<img
														src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/nuomi/pic/item/6d81800a19d8bc3e835f4676848ba61ea8d34532.jpg"
														style="height: 75px; width: auto;">
												</div>
											</div>
											<div class="logo-item">
												<div class="logo-border">
													<img
														src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/nuomi/pic/item/cdbf6c81800a19d8aeb0222034fa828ba61e4667.jpg"
														style="height: 75px; width: auto;">
												</div>
											</div>
											<div class="logo-item">
												<div class="logo-border">
													<img
														src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/nuomi/pic/item/d31b0ef41bd5ad6e0309a0c286cb39dbb6fd3c22.jpg"
														style="height: 75px; width: auto;">
												</div>
											</div>
											<div class="logo-item">
												<div class="logo-border">
													<img
														src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/nuomi/pic/item/9922720e0cf3d7ca548a06a4f41fbe096a63a9e7.jpg"
														style="height: 75px; width: auto;">
												</div>
											</div>
											<div class="logo-item">
												<div class="logo-border">
													<img
														src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/nuomi/pic/item/03087bf40ad162d9bd2e983616dfa9ec8b13cddc.jpg"
														style="height: 75px; width: auto;">
												</div>
											</div>
											<div class="logo-item">
												<div class="logo-border">
													<img
														src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/nuomi/pic/item/d833c895d143ad4b6c1b5beb85025aafa40f06e7.jpg"
														style="height: 75px; width: auto;">
												</div>
											</div>
											<div class="logo-item">
												<div class="logo-border">
													<img
														src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/nuomi/pic/item/279759ee3d6d55fb93404e0d6a224f4a20a4dd12.jpg"
														style="height: 75px; width: auto;">
												</div>
											</div>
											<div class="logo-item">
												<div class="logo-border">
													<img
														src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/nuomi/pic/item/b17eca8065380cd7cfd393c6a644ad34588281cf.jpg"
														style="height: 75px; width: auto;">
												</div>
											</div>
											<div class="logo-item">
												<div class="logo-border">
													<img
														src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/nuomi/pic/item/96dda144ad345982066363be0bf431adcbef8435.jpg"
														style="height: 75px; width: auto;">
												</div>
											</div>
											<div class="logo-item">
												<div class="logo-border">
													<img
														src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/nuomi/pic/item/cb8065380cd791236512d302ab345982b3b780d2.jpg"
														style="height: 75px; width: auto;">
												</div>
											</div>
											<div class="logo-item">
												<div class="logo-border">
													<img
														src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/nuomi/pic/item/09fa513d269759ee25be41e7b5fb43166d22df2b.jpg"
														style="height: 75px; width: auto;">
												</div>
											</div>
											<div class="logo-item">
												<div class="logo-border">
													<img
														src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/nuomi/pic/item/ac4bd11373f08202f602980d4cfbfbedab641b6b.jpg"
														style="height: 75px; width: auto;">
												</div>
											</div>
											<div class="logo-item">
												<div class="logo-border">
													<img
														src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/nuomi/pic/item/48540923dd54564ee514f415b4de9c82d1584fac.jpg"
														style="height: 75px; width: auto;">
												</div>
											</div>
											<div class="logo-item">
												<div class="logo-border">
													<img
														src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/nuomi/pic/item/472309f790529822657f2cefd0ca7bcb0a46d449.jpg"
														style="height: 75px; width: auto;">
												</div>
											</div>
											<div class="logo-item">
												<div class="logo-border">
													<img
														src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/nuomi/pic/item/908fa0ec08fa513dc3861f293b6d55fbb2fbd91d.jpg"
														style="height: 75px; width: auto;">
												</div>
											</div>
											<div class="logo-item">
												<div class="logo-border">
													<img
														src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/nuomi/pic/item/35a85edf8db1cb1308d45324d954564e92584b43.jpg"
														style="height: 75px; width: auto;">
												</div>
											</div>
											<div class="logo-item">
												<div class="logo-border">
													<img
														src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/nuomi/pic/item/4afbfbedab64034f169776fea9c379310b551deb.jpg"
														style="height: 75px; width: auto;">
												</div>
											</div>
											<div class="logo-item">
												<div class="logo-border">
													<img
														src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/nuomi/pic/item/9e3df8dcd100baa19f5719964010b912c8fc2ea7.jpg"
														style="height: 75px; width: auto;">
												</div>
											</div>
											<div class="logo-item">
												<div class="logo-border">
													<img
														src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/nuomi/pic/item/b17eca8065380cd77c92e256a644ad34588281f9.jpg"
														style="height: 75px; width: auto;">
												</div>
											</div>
										</a>
									</div>
								</div>
							</div>
						</div>
						<div id="bdms_floor_menu" class="sidecate nav  t10-fix">
							<ul mon="area=floor_anchor" id="sticky-panel"
								style="left: auto; top: auto; margin-right: 0px; margin-left: 0px; margin-top: 0px;">
								<li class="current"><a mon="element=美食&amp;position=1"
									href="#section-floor-1"><i id="left-panel-1"
										class="inner-ico fa fa-heart-o"></i><span class="inner-text">美食</span></a></li>
								<li><a mon="element=电影&amp;position=2"
									href="#section-floor-2"><i id="left-panel-2"
										class="inner-ico fa fa-film"></i><span class="inner-text">电影</span></a></li>
								<li><a mon="element=娱乐&amp;position=3"
									href="#section-floor-3"><i id="left-panel-3"
										class="inner-ico fa fa-gift"></i><span class="inner-text">娱乐</span></a></li>
								<li><a mon="element=生活&amp;position=5"
									href="#section-floor-5"><i id="left-panel-5"
										class="inner-ico fa fa-home"></i><span class="inner-text">生活</span></a></li>
								<li><a mon="element=酒店&amp;position=6"
									href="#section-floor-6"><i id="left-panel-6"
										class="inner-ico fa fa-building"></i><span class="inner-text">酒店</span></a></li>
								<li><a mon="element=丽人&amp;position=8"
									href="#section-floor-8"><i id="left-panel-8"
										class="inner-ico fa fa-venus"></i><span class="inner-text">丽人</span></a></li>
							</ul>
						</div>
						<div id="floor-content-start">
							<div style="display: none" id="today-recom-wrap"></div>
							<div bn_box="floor_326&amp;position" mon="area=floor_content_326"
								id="section-floor-1" class="floor-content" data-index="1">
								<div class="floor-header clearfix">
									<span id="title-floor-1" class="title-floor"><i
										class="fa fa-heart-o"></i></span>
									<h3>美食</h3>
									<ul class="reco-words">
										<li><a mon="element=精选品牌&amp;position=0" target="_blank"
											href="//t10.nuomi.com/pc/t10/index">精选品牌</a></li>
										<li><a mon="element=小吃快餐&amp;position=1" target="_blank"
											href="//bj.nuomi.com/380">小吃快餐</a></li>
										<li><a mon="element=自助餐&amp;position=2" target="_blank"
											href="//bj.nuomi.com/392">自助餐</a></li>
										<li><a mon="element=其他美食&amp;position=3" target="_blank"
											href="//bj.nuomi.com/327">其他美食</a></li>
										<li><a target="_blank" href="//bj.nuomi.com/326"
											mon="element=top_link"
											class="no-right-border no-right-padding">全部<span
												class="all-cate-arrow"></span></a></li>
									</ul>
								</div>
								<ul class="itemlist clearfix eight-row-height">
									<li
										class="row-first-item  narow-first-item  clear-first j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31522751&amp;position=1&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=31522751" class="" target="_blank"
										href="//www.nuomi.com/deal/700plo77k.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>三元桥 朝外大街 西单 西直门 国贸 万寿路
														望京 三里屯 五棵松 大望路 管庄 崇文门 青年路 万柳 太阳宫 朝阳大悦城…
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D99/sign=45a249b9e150352aa52e7f486e73d7c2/f636afc379310a55cc4898fabf4543a98226104b.jpg"
														src="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D99/sign=45a249b9e150352aa52e7f486e73d7c2/f636afc379310a55cc4898fabf4543a98226104b.jpg"
														style="display: inline;">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31522751&amp;position=1&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=31522751" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/700plo77k.html"><div
													class="header clearfix">
													<h4 class="title ">【14店通用】绿茶餐厅</h4>
												</div>
												<p>100元代金券！免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>99</span><span
													class="ori-price">价值<span class="price-line">¥<span>100</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.6分</span><span class="sold">已售10376</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=30927428&amp;position=2&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=30927428" class="" target="_blank"
										href="//www.nuomi.com/deal/c00p8l4mk.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>三元桥 魏公村 安贞 北下关 酒仙桥 东直门
														中关村 方庄 远大路 北太平庄 万寿路 潘家园 苏州桥 双井 上地 亚运村…
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D80/sign=c059cdaf6c600c33e4368488277c7d3f/c995d143ad4bd113d8cab9895dafa40f4bfb0501.jpg"
														src="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D80/sign=c059cdaf6c600c33e4368488277c7d3f/c995d143ad4bd113d8cab9895dafa40f4bfb0501.jpg"
														style="display: inline;">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=30927428&amp;position=2&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=30927428" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/c00p8l4mk.html"><div
													class="header clearfix">
													<h4 class="title ">【36店通用】汉拿山</h4>
												</div>
												<p>100元代金券！免费WiFi，需预约！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>89</span><span
													class="ori-price">价值<span class="price-line">¥<span>100</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.5分</span><span class="sold">已售29748</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=32402398&amp;position=3&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=32402398" class="" target="_blank"
										href="//www.nuomi.com/deal/u00q4z7rl.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>三元桥 魏公村 北下关 左家庄 六里桥 丽泽桥
														劲松 望京 亚运村 顺义 航天桥 回龙观 大望路 管庄 房山 黄村 天通苑…
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D99/sign=4f4db215a444ad343af0ddc7ed9220c4/f703738da97739126d759599fd198618377ae2f3.jpg"
														src="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D99/sign=4f4db215a444ad343af0ddc7ed9220c4/f703738da97739126d759599fd198618377ae2f3.jpg"
														style="display: inline;">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=32402398&amp;position=3&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=32402398" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/u00q4z7rl.html"><div
													class="header clearfix">
													<h4 class="title ">【48店通用】大鸭梨烤鸭店</h4>
												</div>
												<p>200元代金券！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>184</span><span
													class="ori-price">价值<span class="price-line">¥<span>200</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.5分</span><span class="sold">已售6838</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=3815535&amp;position=4&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=3815535" class="" target="_blank"
										href="//www.nuomi.com/deal/ke0370si.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>安贞 六里桥 丽泽桥 安定门 劲松 昌平镇
														航天桥 房山 平谷 通州区 通州北苑 良乡
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D79/sign=82b2a44a5543fbf2d163fc638d4ee6b0/b219ebc4b74543a9c6c87b8e18178a82b80114a4.jpg"
														src="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D79/sign=82b2a44a5543fbf2d163fc638d4ee6b0/b219ebc4b74543a9c6c87b8e18178a82b80114a4.jpg"
														style="display: inline;">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=3815535&amp;position=4&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=3815535" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/ke0370si.html"><div
													class="header clearfix">
													<h4 class="title ">【8店通用】好伦哥</h4>
												</div>
												<p>单人自助餐！免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>52</span><span
													class="ori-price">价值<span class="price-line">¥<span>56</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.6分</span><span class="sold">已售332234</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="  narow-first-item  j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=4558458&amp;position=5&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=4558458" class="" target="_blank"
										href="//www.nuomi.com/deal/ntakm39c.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>顺义
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C1%2C2300%2C1392%3Bw%3D720%3Bq%3D99/sign=a0928cc998510fb36c562dd7e403e4a4/0df3d7ca7bcb0a46b44049496d63f6246b60af64.jpg"
														src="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C1%2C2300%2C1392%3Bw%3D720%3Bq%3D99/sign=a0928cc998510fb36c562dd7e403e4a4/0df3d7ca7bcb0a46b44049496d63f6246b60af64.jpg"
														style="display: inline;">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=4558458&amp;position=5&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=4558458" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/ntakm39c.html"><div
													class="header clearfix">
													<h4 class="title ">【顺义】比亚森啤酒健康烤肉</h4>
												</div>
												<p>【推荐】顺义店单人自助！节假日通用，店内提供免费WiFi，免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>59.6</span><span
													class="ori-price">价值<span class="price-line">¥<span>69</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.6分</span><span class="sold">已售78767</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="row-first-item   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=32474380&amp;position=6&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=32474380" class="" target="_blank"
										href="//www.nuomi.com/deal/t00q6r6bg.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>崇文门
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C6%2C648%2C392%3Bw%3D470%3Bq%3D80/sign=7f6a7df1a1773912d069df21c529aa2e/35a85edf8db1cb13c03d075fd554564e92584b21.jpg"
														src="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C6%2C648%2C392%3Bw%3D470%3Bq%3D80/sign=7f6a7df1a1773912d069df21c529aa2e/35a85edf8db1cb13c03d075fd554564e92584b21.jpg"
														style="display: inline;">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=32474380&amp;position=6&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=32474380" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/t00q6r6bg.html"><div
													class="header clearfix">
													<h4 class="title ">【13店通用】国瑞城美食通券</h4>
												</div>
												<p>代金券1张！免费WiFi！</p></a>
											<div class="add-info">
												<span class="promo">立减8元</span>
											</div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>88</span><span
													class="ori-price">价值<span class="price-line">¥<span>100</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.7分</span><span class="sold">已售3121</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=32610528&amp;position=7&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=32610528" class="" target="_blank"
										href="//www.nuomi.com/deal/p00q95fbi.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>魏公村 北下关 东直门 朝外大街 方庄 王府井
														对外经贸 国贸 苏州桥 亚运村 顺义 大望路 管庄 亦庄 鲁谷 鸟巢 小营 常营
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C470%2C285%3Bw%3D470%3Bq%3D79/sign=2789355c89cb39dbd58f3d16ed262514/faf2b2119313b07e30cd01be04d7912397dd8c10.jpg"
														src="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C470%2C285%3Bw%3D470%3Bq%3D79/sign=2789355c89cb39dbd58f3d16ed262514/faf2b2119313b07e30cd01be04d7912397dd8c10.jpg"
														style="display: inline;">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=32610528&amp;position=7&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=32610528" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/p00q95fbi.html"><div
													class="header clearfix">
													<h4 class="title ">【12店通用】旺顺阁鱼头泡饼</h4>
												</div>
												<p>一斤鱼头3选1！免费WiFi！每次消费限使用一张，需预约！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>19.9</span><span
													class="ori-price">价值<span class="price-line">¥<span>109</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.8分</span><span class="sold">已售1255</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=7570044&amp;position=8&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=7570044" class="j-topten"
										target="_blank"
										href="//t10sc.nuomi.com/pc/goods/detail?tiny_url=t7zikwki"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>安贞 酒仙桥 和平里 国贸 万寿路 望京 五棵松
														复兴门 太阳宫 霄云路
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D1%2C0%2C1279%2C775%3Bw%3D719%3Bq%3D99/sign=416c19cc64d0f703f2fdcf9c35cb7d0d/6a600c338744ebf8d1332be4dff9d72a6159a7af.jpg"
														src="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D1%2C0%2C1279%2C775%3Bw%3D719%3Bq%3D99/sign=416c19cc64d0f703f2fdcf9c35cb7d0d/6a600c338744ebf8d1332be4dff9d72a6159a7af.jpg"
														style="display: inline;">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=7570044&amp;position=8&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=7570044" class="j-topten"
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank"
												href="//t10sc.nuomi.com/pc/goods/detail?tiny_url=t7zikwki"><div
													class="header clearfix">
													<h4 class="title ">【9店通用】渝乡人家</h4>
												</div>
												<p>300元储值卡！免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>263</span><span
													class="ori-price">价值<span class="price-line">¥<span>300</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.5分</span><span class="sold">已售3755</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="  narow-first-item  j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=3808383&amp;position=9&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=3808383" class="" target="_blank"
										href="//www.nuomi.com/deal/s1l8u1bl.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>管庄 房山 亦庄 公益西桥 双桥 良乡
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C58%2C800%2C484%3Bw%3D720%3Bq%3D80/sign=d8c769614c90f60310ffc60704229f2e/63d9f2d3572c11dffba95a73652762d0f703c262.jpg"
														src="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C58%2C800%2C484%3Bw%3D720%3Bq%3D80/sign=d8c769614c90f60310ffc60704229f2e/63d9f2d3572c11dffba95a73652762d0f703c262.jpg"
														style="display: inline;">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=3808383&amp;position=9&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=3808383" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/s1l8u1bl.html"><div
													class="header clearfix">
													<h4 class="title ">【14店通用】北京稻香村</h4>
												</div>
												<p>100元代金券！可叠加使用！节假日通用，请提前2小时预约，需预约！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>89</span><span
													class="ori-price">价值<span class="price-line">¥<span>100</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.7分</span><span class="sold">已售7487</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=10569347&amp;position=10&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=10569347" class="" target="_blank"
										href="//www.nuomi.com/deal/a9ftjl2o.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>公主坟 万寿路
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D80/sign=947905dfceea15ce55a1ba498b3016c3/78310a55b319ebc420071dc38526cffc1e171668.jpg"
														src="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D80/sign=947905dfceea15ce55a1ba498b3016c3/78310a55b319ebc420071dc38526cffc1e171668.jpg"
														style="display: inline;">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=10569347&amp;position=10&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=10569347" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/a9ftjl2o.html"><div
													class="header clearfix">
													<h4 class="title ">【公主坟】鲜境豆捞</h4>
												</div>
												<p>翠微广场店单人自助火锅！节假日通用，提供免费WiFi，免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>79</span><span
													class="ori-price">价值<span class="price-line">¥<span>88</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.6分</span><span class="sold">已售2841</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="row-first-item   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=156848&amp;position=11&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=156848" class="" target="_blank"
										href="//www.nuomi.com/deal/b4ebmocu.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>中关村 双井
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C554%2C336%3Bw%3D469%3Bq%3D80/sign=fbc52740ad64034f1b82984692f35501/fcfaaf51f3deb48f3c6a4843f61f3a292df57828.jpg"
														src="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C554%2C336%3Bw%3D469%3Bq%3D80/sign=fbc52740ad64034f1b82984692f35501/fcfaaf51f3deb48f3c6a4843f61f3a292df57828.jpg"
														style="display: inline;">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=156848&amp;position=11&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=156848" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/b4ebmocu.html"><div
													class="header clearfix">
													<h4 class="title ">【2店通用】东来顺</h4>
												</div>
												<p>中关村海淀大街店、双井店4-5人火锅套餐！中华老字号，传统铜锅涮肉！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>168</span><span
													class="ori-price">价值<span class="price-line">¥<span>484</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.6分</span><span class="sold">已售31810</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31785360&amp;position=12&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=31785360" class="" target="_blank"
										href="//www.nuomi.com/deal/v00pqswnb.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>三元桥 广外大街 安贞 北下关 五道口 酒仙桥
														双榆树 朝外大街 中关村 方庄 西单 远大路 王府井 东单 左家庄 北太平庄…
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D80/sign=602978e12f34349b604934c5f4da39fe/024f78f0f736afc33c35a69eb419ebc4b745120b.jpg"
														src="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D80/sign=602978e12f34349b604934c5f4da39fe/024f78f0f736afc33c35a69eb419ebc4b745120b.jpg"
														style="display: inline;">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31785360&amp;position=12&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=31785360" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/v00pqswnb.html"><div
													class="header clearfix">
													<h4 class="title ">【多店通用】必胜客</h4>
												</div>
												<p>必胜客工作日特惠A餐1套！免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>30</span><span
													class="ori-price">价值<span class="price-line">¥<span>55</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.6分</span><span class="sold">已售37139</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="  narow-first-item  j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=3229169&amp;position=13&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=3229169" class="" target="_blank"
										href="//www.nuomi.com/deal/0sotypbc.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>西直门
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/wh%3D470%2C285/sign=0ef6ab8fd61b0ef46cbd905aeaf47de8/37d12f2eb9389b50e5f603f38135e5dde7116e02.jpg"
														src="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/wh%3D470%2C285/sign=0ef6ab8fd61b0ef46cbd905aeaf47de8/37d12f2eb9389b50e5f603f38135e5dde7116e02.jpg"
														style="display: inline;">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=3229169&amp;position=13&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=3229169" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/0sotypbc.html"><div
													class="header clearfix">
													<h4 class="title ">【西直门】东方沪园大酒楼</h4>
												</div>
												<p>100元代金券！节假日通用，请提前24小时预约，可叠加使用，需预约！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>79</span><span
													class="ori-price">价值<span class="price-line">¥<span>100</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.7分</span><span class="sold">已售2833</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=10499371&amp;position=14&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=10499371" class="" target="_blank"
										href="//www.nuomi.com/deal/c5ovegov.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>五道口 远大路 十里堡 万柳
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D79/sign=ed3f6d6eb4de9c82b22aa3cf51b1ac3a/730e0cf3d7ca7bcb75214e78b9096b63f624a80b.jpg"
														src="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D79/sign=ed3f6d6eb4de9c82b22aa3cf51b1ac3a/730e0cf3d7ca7bcb75214e78b9096b63f624a80b.jpg"
														style="display: inline;">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=10499371&amp;position=14&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=10499371" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/c5ovegov.html"><div
													class="header clearfix">
													<h4 class="title ">【3店通用】东来顺</h4>
												</div>
												<p>特惠双人餐！节假日通用，提供免费WiFi，免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>99</span><span
													class="ori-price">价值<span class="price-line">¥<span>303</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.6分</span><span class="sold">已售6025</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=8253891&amp;position=15&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=8253891" class="" target="_blank"
										href="//www.nuomi.com/deal/sxyvr2rp.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>北下关 六里桥 虎坊桥 劲松 潘家园 双井
														十里堡 管庄 房山 黄村 天通苑 旧宫 八角 清河 北大地 看丹桥 青年路 马家堡…
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D80/sign=d6d6f1f2d6c8a786aa65104e5a39e50d/b7003af33a87e950c6e3a26417385343faf2b4c6.jpg"
														src="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D80/sign=d6d6f1f2d6c8a786aa65104e5a39e50d/b7003af33a87e950c6e3a26417385343faf2b4c6.jpg"
														style="display: inline;">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=8253891&amp;position=15&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=8253891" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/sxyvr2rp.html"><div
													class="header clearfix">
													<h4 class="title ">【19店通用】蝎王府羊蝎子</h4>
												</div>
												<p>100元代金券！可使用包间，免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>89.9</span><span
													class="ori-price">价值<span class="price-line">¥<span>100</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.7分</span><span class="sold">已售62478</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="row-first-item   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=10500075&amp;position=16&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=10500075" class="" target="_blank"
										href="//www.nuomi.com/deal/qjcoafgh.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>五道口 远大路 十里堡 万柳
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D79/sign=b8126119cd8065386fa5fe53aaed8d74/cefc1e178a82b90161912764748da9773912efad.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=10500075&amp;position=16&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=10500075" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/qjcoafgh.html"><div
													class="header clearfix">
													<h4 class="title ">【3店通用】东来顺</h4>
												</div>
												<p>4人餐！节假日通用，免费WiFi，免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>178</span><span
													class="ori-price">价值<span class="price-line">¥<span>655</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.5分</span><span class="sold">已售3263</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="  narow-first-item  j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31737912&amp;position=17&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=31737912" class="" target="_blank"
										href="//www.nuomi.com/deal/m00pqsq7u.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>王府井 北太平庄 望京 十里堡 慈云寺
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C158%2C470%2C285%3Bw%3D470%3Bq%3D79/sign=fc2862db96510fb36c562dd7e403e4a4/6c224f4a20a44623131289009022720e0df3d7f3.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31737912&amp;position=17&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=31737912" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/m00pqsq7u.html"><div
													class="header clearfix">
													<h4 class="title ">【4店通用】鹿港小镇</h4>
												</div>
												<p>100元代金券！</p></a>
											<div class="add-info">
												<span class="promo">新客减7元</span>
											</div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>90</span><span
													class="ori-price">价值<span class="price-line">¥<span>100</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.5分</span><span class="sold">已售1499</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=3227325&amp;position=18&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=3227325" class="" target="_blank"
										href="//www.nuomi.com/deal/wvoa9sde.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>西单 北太平庄 房山 旧宫 五路居
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/wh%3D470%2C285/sign=c5254357229759ee4a0568cf85cb6f24/962bd40735fae6cdb6568c3b0bb30f2443a70f8d.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=3227325&amp;position=18&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=3227325" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/wvoa9sde.html"><div
													class="header clearfix">
													<h4 class="title ">【5店通用】蜀湘缘万州烤全鱼</h4>
												</div>
												<p>烤鱼套餐！无需预约，堂食、外带均可，节假日通用！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>78.8</span><span
													class="ori-price">价值<span class="price-line">¥<span>178</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.6分</span><span class="sold">已售8212</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=4161700&amp;position=19&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=4161700" class="" target="_blank"
										href="//www.nuomi.com/deal/7mgc0fzo.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>朝阳公园 什刹海
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D99/sign=12e5e8d5a744ad343af0ddc7ed9220c4/f703738da977391230ddcf59fe198618367ae20b.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=4161700&amp;position=19&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=4161700" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/7mgc0fzo.html"><div
													class="header clearfix">
													<h4 class="title ">【2店通用】孔乙己</h4>
												</div>
												<p>100元代金券！可叠加使用！节假日通用！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>85</span><span
													class="ori-price">价值<span class="price-line">¥<span>100</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.4分</span><span class="sold">已售7106</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=4081721&amp;position=20&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=4081721" class="" target="_blank"
										href="//www.nuomi.com/deal/54lrcsj5.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>三元桥 方庄 大望路 刘家窑
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D99/sign=b4d309deec24b899ca732378533631a5/4034970a304e251f0921c726a286c9177e3e531d.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=4081721&amp;position=20&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=4081721" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/54lrcsj5.html"><div
													class="header clearfix">
													<h4 class="title ">【3店通用】蟹老宋</h4>
												</div>
												<p>2-3人餐！节假日通用，免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>86</span><span
													class="ori-price">价值<span class="price-line">¥<span>331</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.5分</span><span class="sold">已售6298</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li
										class="row-first-item  narow-first-item  clear-first j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=4646166&amp;position=21&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=4646166" class="" target="_blank"
										href="//www.nuomi.com/deal/rnpcbn8m.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>五道口 酒仙桥 双榆树 东直门 朝外大街 中关村
														西单 东单 对外经贸 国贸 万寿路 苏州桥 望京 亚运村 五棵松 十里堡…
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D99/sign=efa290b0ab6eddc432a8eebb04eb9acd/b3b7d0a20cf431ad2ab9fd6c4d36acaf2edd9878.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=4646166&amp;position=21&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=4646166" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/rnpcbn8m.html"><div
													class="header clearfix">
													<h4 class="title ">【25店通用】巴黎贝甜</h4>
												</div>
												<p>80元代金券！仅限自提！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>68</span><span
													class="ori-price">价值<span class="price-line">¥<span>80</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.8分</span><span class="sold">已售55220</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=4945841&amp;position=22&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=4945841" class="" target="_blank"
										href="//www.nuomi.com/deal/eqpqosjn.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>五道口 东直门 对外经贸 万寿路 亚运村 昌平镇
														五棵松 回龙观 亦庄 旧宫 新华大街 清河 通州区 万柳 太阳宫 通州北苑…
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D99/sign=8e35e69eb4119313d30ca5f0580820e7/b64543a98226cffcc36197eebf014a90f603ea27.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=4945841&amp;position=22&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=4945841" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/eqpqosjn.html"><div
													class="header clearfix">
													<h4 class="title ">【12店通用】猫山王</h4>
												</div>
												<p>千层榴莲！节假日通用，可叠加使用！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>28</span><span
													class="ori-price">价值<span class="price-line">¥<span>32</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.8分</span><span class="sold">已售22282</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=30895333&amp;position=23&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=30895333" class="" target="_blank"
										href="//www.nuomi.com/deal/i00p8ftcw.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>对外经贸 亚运村 甜水园
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C239%2C533%2C323%3Bw%3D470%3Bq%3D79/sign=4d020b100255b31988b6d8357e99ae14/37d3d539b6003af3d8469b713d2ac65c1038b627.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=30895333&amp;position=23&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=30895333" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/i00p8ftcw.html"><div
													class="header clearfix">
													<h4 class="title ">【2店通用】正院大宅门</h4>
												</div>
												<p>100元晚市代金券！免费停车，免费停车，免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>80</span><span
													class="ori-price">价值<span class="price-line">¥<span>100</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.8分</span><span class="sold">已售778</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=9232705&amp;position=24&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=9232705" class="" target="_blank"
										href="//www.nuomi.com/deal/ljt01kvs.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>安贞 双榆树 对外经贸 苏州桥 望京 三里屯
														阜成门 亚运村 顺义 管庄 房山 亦庄 旧宫 平谷 颐和园 崇文门 通州区…
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D99/sign=f3d8b18e6e600c33e4368488277c7d3f/d50735fae6cd7b8906ea48190a2442a7d8330ea1.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=9232705&amp;position=24&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=9232705" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/ljt01kvs.html"><div
													class="header clearfix">
													<h4 class="title ">【24店通用】新辣道</h4>
												</div>
												<p>100元代金券！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>68</span><span
													class="ori-price">价值<span class="price-line">¥<span>100</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.6分</span><span class="sold">已售20598</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="  narow-first-item  j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=8755113&amp;position=25&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=8755113" class="j-topten"
										target="_blank"
										href="//t10sc.nuomi.com/pc/goods/detail?tiny_url=4lxzoz4m"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>方庄 六里桥 丽泽桥 房山 亦庄 黄村 天通苑
														梨园 牛街 通州区 菜市口 青年路 马家堡 太阳宫 大红门 马驹桥 高碑店…
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D99/sign=14be2014d30735fa85bf14f9a3612383/8c1001e93901213f07a8ccd353e736d12f2e9522.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=8755113&amp;position=25&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=8755113" class="j-topten"
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank"
												href="//t10sc.nuomi.com/pc/goods/detail?tiny_url=4lxzoz4m"><div
													class="header clearfix">
													<h4 class="title ">【17店通用】青年餐厅</h4>
												</div>
												<p>200元储值卡！免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>176</span><span
													class="ori-price">价值<span class="price-line">¥<span>200</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.5分</span><span class="sold">已售24005</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="row-first-item   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=7530473&amp;position=26&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=7530473" class="j-topten"
										target="_blank"
										href="//t10sc.nuomi.com/pc/goods/detail?tiny_url=26siequh"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>五道口 酒仙桥 中关村 王府井 西直门 国贸
														双井 望京 昌平镇 顺义 回龙观 大望路 管庄 天通苑 平谷 颐和园 清河…
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C21%2C690%2C418%3Bw%3D470%3Bq%3D79/sign=6805402ee6fe9925df433310099872ed/f9dcd100baa1cd1120a72acbbf12c8fcc2ce2dc3.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=7530473&amp;position=26&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=7530473" class="j-topten"
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank"
												href="//t10sc.nuomi.com/pc/goods/detail?tiny_url=26siequh"><div
													class="header clearfix">
													<h4 class="title ">【32店通用】多乐之日</h4>
												</div>
												<p>200元储值卡！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>170</span><span
													class="ori-price">价值<span class="price-line">¥<span>200</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.7分</span><span class="sold">已售17541</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=7460912&amp;position=27&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=7460912" class="" target="_blank"
										href="//www.nuomi.com/deal/b7lk8xmt.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>亮马桥 三元桥 魏公村 广外大街 安贞 北下关
														五道口 酒仙桥 双榆树 东直门 朝外大街 中关村 方庄 西单 远大路 王府井…
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D99/sign=2fa81ea99458d109d0acf3f2ec68e08f/91529822720e0cf32536332c0c46f21fbf09aa20.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=7460912&amp;position=27&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=7460912" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/b7lk8xmt.html"><div
													class="header clearfix">
													<h4 class="title ">【多店通用】金凤成祥</h4>
												</div>
												<p>200元代金券！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>160</span><span
													class="ori-price">价值<span class="price-line">¥<span>200</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.7分</span><span class="sold">已售3335</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=4958604&amp;position=28&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=4958604" class="" target="_blank"
										href="//www.nuomi.com/deal/4sfb46q3.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>昌平镇 管庄 黄村 常营
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D79/sign=500bf43c1b950a7b617a148437e14ee9/d0c8a786c9177f3e7b0a530776cf3bc79f3d56f9.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=4958604&amp;position=28&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=4958604" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/4sfb46q3.html"><div
													class="header clearfix">
													<h4 class="title ">【3店通用】便宜坊烤鸭店</h4>
												</div>
												<p>100元代金券！免费WiFi，需预约！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>89</span><span
													class="ori-price">价值<span class="price-line">¥<span>100</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.2分</span><span class="sold">已售5968</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="  narow-first-item  j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=10330114&amp;position=29&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=10330114" class="" target="_blank"
										href="//www.nuomi.com/deal/kcvljdk7.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>回龙观
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C21%2C690%2C418%3Bw%3D470%3Bq%3D79/sign=2a0bd87e6d600c33e4368488277c7d3d/30adcbef76094b36edc70087a5cc7cd98d109d06.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=10330114&amp;position=29&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=10330114" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/kcvljdk7.html"><div
													class="header clearfix">
													<h4 class="title ">【多城市】一品焖锅</h4>
												</div>
												<p>100元代金券！免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>85</span><span
													class="ori-price">价值<span class="price-line">¥<span>100</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.3分</span><span class="sold">已售8888</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=669703&amp;position=30&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=669703" class="" target="_blank"
										href="//www.nuomi.com/deal/xkmi42um.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>劲松
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D79/sign=9a2a081fceea15ce55a1ba498b3016c3/5bafa40f4bfbfbed327550e57ff0f736afc31f7f.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=669703&amp;position=30&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=669703" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/xkmi42um.html"><div
													class="header clearfix">
													<h4 class="title ">【劲松】金滏山烤肉</h4>
												</div>
												<p>单人自助午餐！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>42</span><span
													class="ori-price">价值<span class="price-line">¥<span>49</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.5分</span><span class="sold">已售61950</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="row-first-item   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=1271078&amp;position=31&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=1271078" class="" target="_blank"
										href="//www.nuomi.com/deal/mwxer4qu.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>建外大街
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D79/sign=7c35be4cc81b9d169e88c021ceee98bf/f3d3572c11dfa9ec80e07a8464d0f703908fc152.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=1271078&amp;position=31&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=1271078" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/mwxer4qu.html"><div
													class="header clearfix">
													<h4 class="title ">【建外大街】瑞景大宅门</h4>
												</div>
												<p>【推荐】价值100元代金劵！精选优质食材，精心烹制，鲜香可口，健康营养，让您用餐惬意十足，免费停车，免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>50</span><span
													class="ori-price">价值<span class="price-line">¥<span>100</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.6分</span><span class="sold">已售1761</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=8768429&amp;position=32&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=8768429" class="" target="_blank"
										href="//www.nuomi.com/deal/68ul6wlq.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>安贞 对外经贸
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C8%2C1024%2C620%3Bw%3D720%3Bq%3D80/sign=793a0ad6c91b9d169e88c021ceee98b7/3ac79f3df8dcd100b55d6028758b4710b8122ff1.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=8768429&amp;position=32&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=8768429" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/68ul6wlq.html"><div
													class="header clearfix">
													<h4 class="title ">【安贞】京家缘</h4>
												</div>
												<p>100元代金券！可叠加使用，提供免费WiFi，节假日通用，免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>88</span><span
													class="ori-price">价值<span class="price-line">¥<span>100</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.7分</span><span class="sold">已售2701</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="  narow-first-item  j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=6135115&amp;position=33&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=6135115" class="" target="_blank"
										href="//www.nuomi.com/deal/yibtjxfn.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>顺义 石门
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D79/sign=fb477f4ce0cd7b89fd2360c332146e97/3801213fb80e7bec7ba77c67292eb9389b506b32.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=6135115&amp;position=33&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=6135115" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/yibtjxfn.html"><div
													class="header clearfix">
													<h4 class="title ">【顺义】大鸭梨烤鸭店</h4>
												</div>
												<p>顺义区西门店标准果木烤鸭1套！提供免费WiFi，免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>35</span><span
													class="ori-price">价值<span class="price-line">¥<span>118</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.6分</span><span class="sold">已售5369</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=10474419&amp;position=34&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=10474419" class="" target="_blank"
										href="//www.nuomi.com/deal/6pg1b1za.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>回龙观 生命科学园
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D80/sign=13c34df7c4fdfc03f137b9f8e90faba4/ac345982b2b7d0a2d7cbbf94ccef76094b369abd.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=10474419&amp;position=34&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=10474419" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/6pg1b1za.html"><div
													class="header clearfix">
													<h4 class="title ">【2店通用】盛百味</h4>
												</div>
												<p>100元代金券！全场通用，可叠加使用，免费WiFi、停车位，免费停车，免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>89</span><span
													class="ori-price">价值<span class="price-line">¥<span>100</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.7分</span><span class="sold">已售5365</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=4290561&amp;position=35&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=4290561" class="" target="_blank"
										href="//www.nuomi.com/deal/zgfwk7sq.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>门头沟
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D6%2C0%2C632%2C384%3Bw%3D470%3Bq%3D90/sign=3b826939cf3d70cf58b5f04dc5eafd30/023b5bb5c9ea15ce726fdb09b0003af33a87b228.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=4290561&amp;position=35&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=4290561" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/zgfwk7sq.html"><div
													class="header clearfix">
													<h4 class="title ">【门头沟】轩和火锅家常菜</h4>
												</div>
												<p>100元全场通用代金券！可叠加使用，节假日通用，提供免费WiFi、停车位，可使用包间，免费停车，免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>85</span><span
													class="ori-price">价值<span class="price-line">¥<span>100</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.7分</span><span class="sold">已售1930</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="row-first-item   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=10480978&amp;position=36&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=10480978" class="" target="_blank"
										href="//www.nuomi.com/deal/5c1tv4bb.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>三元桥 广外大街 五道口 酒仙桥 东直门 中关村
														方庄 东单 对外经贸 六里桥 北太平庄 安定门 劲松 潘家园 苏州桥 上地…
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C470%2C285%3Bw%3D470%3Bq%3D99/sign=f5ba4ecf59df8db1a86126243413f164/562c11dfa9ec8a13cafd18b7f003918fa1ecc086.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=10480978&amp;position=36&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=10480978" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/5c1tv4bb.html"><div
													class="header clearfix">
													<h4 class="title ">【多店通用】必胜宅急送</h4>
												</div>
												<p>比萨套餐！到店自取买大送小！仅限自提不配送，节假日通用！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>62</span><span
													class="ori-price">价值<span class="price-line">¥<span>91</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.7分</span><span class="sold">已售10045</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="  narow-first-item  j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31857661&amp;position=37&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=31857661" class="" target="_blank"
										href="//www.nuomi.com/deal/w00ptkc9v.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>顺义 黄村 旧宫 怀柔 石门
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D99/sign=c2aaf69d31d3d539d572558307b7c560/4afbfbedab64034f73b01465a8c379310a551d57.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31857661&amp;position=37&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=31857661" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/w00ptkc9v.html"><div
													class="header clearfix">
													<h4 class="title ">【9店通用】九九嘉</h4>
												</div>
												<p>100元代金券！免费停车，免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>85</span><span
													class="ori-price">价值<span class="price-line">¥<span>100</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.5分</span><span class="sold">已售1390</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=13000874&amp;position=38&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=13000874" class="" target="_blank"
										href="//www.nuomi.com/deal/ktsromh4.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>北下关 五道口 朝外大街 远大路 万寿路 望京
														亚运村 五棵松 新华大街 通州区 马家堡 万柳 鸟巢 大红门 通州北苑
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C560%2C1332%2C806%3Bw%3D720%3Bq%3D99/sign=87ecb63dfb039245b5fabb4fbaa488f7/6609c93d70cf3bc7db1f8d1cd600baa1cd112a26.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=13000874&amp;position=38&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=13000874" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/ktsromh4.html"><div
													class="header clearfix">
													<h4 class="title ">【12店通用】果麦de鲜饮创作</h4>
												</div>
												<p>超值饮品3选1！节假日通用！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>6.99</span><span
													class="ori-price">价值<span class="price-line">¥<span>12</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.9分</span><span class="sold">已售4883</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=5930283&amp;position=39&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=5930283" class="" target="_blank"
										href="//www.nuomi.com/deal/e3nua90w.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>东单 新街口 东四 双桥
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D79/sign=9ba76ed1b0fd5266b36466549628bb1b/77094b36acaf2eddb9a02bd38b1001e9390193b2.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=5930283&amp;position=39&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=5930283" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/e3nua90w.html"><div
													class="header clearfix">
													<h4 class="title ">【4店通用】滇越乘象云南餐厅</h4>
												</div>
												<p>2-3人！节假日通用，提供免费WiFi、停车位！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>89</span><span
													class="ori-price">价值<span class="price-line">¥<span>186</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.6分</span><span class="sold">已售3931</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31785387&amp;position=40&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=31785387" class="" target="_blank"
										href="//www.nuomi.com/deal/o00ps0iyf.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>三元桥 魏公村 广外大街 安贞 北下关 五道口
														酒仙桥 双榆树 朝外大街 中关村 方庄 西单 王府井 东单 西直门 左家庄…
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D99/sign=6f60f0e5880a19d8df4cde450ecaaebb/f31fbe096b63f624c8bf90578f44ebf81b4ca380.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31785387&amp;position=40&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=31785387" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/o00ps0iyf.html"><div
													class="header clearfix">
													<h4 class="title ">【多店通用】必胜客</h4>
												</div>
												<p>必胜客下午茶A套餐1套！免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>29</span><span
													class="ori-price">价值<span class="price-line">¥<span>46</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.4分</span><span class="sold">已售7986</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
								</ul>
								<a target="_blank" mon="element=bottom_link"
									href="//bj.nuomi.com/326" class="check-all">查看全部团购<span
									class="all-cate-arrow2"></span></a>
							</div>
							<div bn_box="floor_10345&amp;position"
								mon="area=floor_content_10345" id="section-floor-2"
								class="floor-content">
								<div class="floor-header clearfix">
									<span id="title-floor-2" class="title-floor"><i
										class="fa fa-film"></i></span>
									<h3>电影</h3>
									<ul class="reco-words">
										<li><a mon="element=在线订座&amp;position=0" target="_blank"
											href="//bj.nuomi.com/xuanzuo/">在线订座</a></li>
										<li><a mon="element=电影票团购&amp;position=1" target="_blank"
											href="//bj.nuomi.com/film/">电影票团购</a></li>
										<li><a mon="element=星际迷航3：超越星辰&amp;position=2"
											target="_blank" href="//bj.nuomi.com/film/10057">星际迷航3：超越星辰</a></li>
										<li><a mon="element=大话西游3&amp;position=3" target="_blank"
											href="//bj.nuomi.com/film/9995">大话西游3</a></li>
										<li><a target="_blank" href="//bj.nuomi.com/10345"
											mon="element=top_link"
											class="no-right-border no-right-padding">全部<span
												class="all-cate-arrow"></span></a></li>
									</ul>
								</div>
								<ul class="itemlist clearfix two-row-height">
									<li
										class="row-first-item  narow-first-item  clear-first j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=742137&amp;position=1&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=742137" class="" target="_blank"
										href="//www.nuomi.com/deal/urxtip5n.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>亚运村 鸟巢 大屯 小营
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/wh%3D470%2C285/sign=07b0ebb91730e924cff194357b384234/b812c8fcc3cec3fdfcbb51c4de88d43f869427fd.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=742137&amp;position=1&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=742137" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/urxtip5n.html"><div
													class="header clearfix">
													<h4 class="title ">【亚运村】阳光影城</h4>
												</div>
												<p>单人影票（含3D）！节假日通用！无需预约！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>28</span><span
													class="ori-price">价值<span class="price-line">¥<span>100</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.5分</span><span class="sold">已售42084</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=6930874&amp;position=2&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=6930874" class="" target="_blank"
										href="//www.nuomi.com/deal/gtawjtry.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>北苑家园
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/wh%3D470%2C285/sign=ae263db9d7160924dc70aa1fe33719c8/77c6a7efce1b9d16e521c08ef4deb48f8d54647e.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=6930874&amp;position=2&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=6930874" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/gtawjtry.html"><div
													class="header clearfix">
													<h4 class="title ">【北苑家园】K酷国际影城</h4>
												</div>
												<p>单人影票（含3D）！节假日通用！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>35.5</span><span
													class="ori-price">价值<span class="price-line">¥<span>120</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.8分</span><span class="sold">已售5554</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=551937&amp;position=3&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=551937" class="" target="_blank"
										href="//www.nuomi.com/deal/fi1gnevv.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>万柳
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.bdstatic.com/5eZ1ciub_Q63otebn9fN2DJv/upload/mfs201502/deal/2013/12/V_G/551937-7x477txi8x-34357399633094003.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=551937&amp;position=3&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=551937" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/fi1gnevv.html"><div
													class="header clearfix">
													<h4 class="title ">【万柳】海淀工人文化宫</h4>
												</div>
												<p>单人影票（含3D）！大片精彩，喜剧爆笑不断，不限时段，不限场次，不限节假日！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>28</span><span
													class="ori-price">价值<span class="price-line">¥<span>80</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.6分</span><span class="sold">已售40841</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=10079359&amp;position=4&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=10079359" class="" target="_blank"
										href="//www.nuomi.com/deal/amartxfm.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>昌平镇
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/wh%3D470%2C285/sign=70338b3585025aafd36776cfccdd8756/5fdf8db1cb134954a8032591514e9258d1094a22.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=10079359&amp;position=4&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=10079359" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/amartxfm.html"><div
													class="header clearfix">
													<h4 class="title ">【昌平镇】昌平保利影剧院</h4>
												</div>
												<p>单人影票（含3D）！节假日通用！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>27</span><span
													class="ori-price">价值<span class="price-line">¥<span>120</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.0分</span><span class="sold">已售1537</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="  narow-first-item  j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=3328654&amp;position=5&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=3328654" class="" target="_blank"
										href="//www.nuomi.com/deal/zf2xj6eq.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>五道口 中关村 苏州桥
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/wh%3D470%2C285/sign=6e61078cf4deb48ffb3ca9dac72f161b/730e0cf3d7ca7bcb99dd5ac2b9096b63f724a8bd.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=3328654&amp;position=5&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=3328654" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/zf2xj6eq.html"><div
													class="header clearfix">
													<h4 class="title ">【五道口】海淀剧院</h4>
												</div>
												<p>单人电影票（含3D）！节假日通用，店内提供免费无线WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>31</span><span
													class="ori-price">价值<span class="price-line">¥<span>80</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.3分</span><span class="sold">已售5671</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="row-first-item   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=5605277&amp;position=6&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=5605277" class="" target="_blank"
										href="//www.nuomi.com/deal/m3vbsgjr.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>公主坟
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/wh%3D470%2C285/sign=342999858044ebf86d246c3beec9fb18/aec379310a55b319b48d22f344a98226cffc173b.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=5605277&amp;position=6&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=5605277" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/m3vbsgjr.html"><div
													class="header clearfix">
													<h4 class="title ">【公主坟】世茂国际影城</h4>
												</div>
												<p>单人影票（含3D）！节假日通用，提供免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>35.9</span><span
													class="ori-price">价值<span class="price-line">¥<span>100</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.6分</span><span class="sold">已售1140</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=4911422&amp;position=7&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=4911422" class="" target="_blank"
										href="//www.nuomi.com/deal/zrr4dtod.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>北下关 紫竹桥
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/wh%3D470%2C285/sign=3ef248485eee3d6d22938fcf74264110/d50735fae6cd7b89f19e616c082442a7d8330e6a.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=4911422&amp;position=7&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=4911422" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/zrr4dtod.html"><div
													class="header clearfix">
													<h4 class="title ">【北下关】国图电影院</h4>
												</div>
												<p>单人电影票（含3D）！节假日通用！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>26</span><span
													class="ori-price">价值<span class="price-line">¥<span>80</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.6分</span><span class="sold">已售1250</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=2779688&amp;position=8&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=2779688" class="" target="_blank"
										href="//www.nuomi.com/deal/lm8wleoq.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>方庄
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C15%2C690%2C419%3Bw%3D470%3Bq%3D90/sign=b9822449ab6eddc432a8eebb04eb9acc/78310a55b319ebc400337c358426cffc1f1716d6.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=2779688&amp;position=8&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=2779688" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/lm8wleoq.html"><div
													class="header clearfix">
													<h4 class="title ">【方庄】云乐迪电影吧</h4>
												</div>
												<p>宋家庄店主题包间观影套票1张，无需预约，免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>99</span><span
													class="ori-price">价值<span class="price-line">¥<span>156</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.8分</span><span class="sold">已售820</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="  narow-first-item  j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=742489&amp;position=9&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=742489" class="" target="_blank"
										href="//www.nuomi.com/deal/ahmb14mo.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>北京欢乐谷
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/wh%3D470%2C285/sign=88119cf7c15c1038242bc6c68521bf21/dbb44aed2e738bd4d25d2edca68b87d6267ff9db.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=742489&amp;position=9&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=742489" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/ahmb14mo.html"><div
													class="header clearfix">
													<h4 class="title ">【北京欢乐谷】曙光影院</h4>
												</div>
												<p>单人影票（含3D）！2D、3D通兑，节假日通用，限价片及特殊影片需补齐差价！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>31</span><span
													class="ori-price">价值<span class="price-line">¥<span>50</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.5分</span><span class="sold">已售9484</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=10356741&amp;position=10&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=10356741" class="" target="_blank"
										href="//www.nuomi.com/deal/weyj6dif.html"><div
												class="imgbox">
												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>黄村
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C5%2C470%2C285%3Bw%3D470%3Bq%3D79/sign=c5bbf4b0502c11dfca9ee5635e174ee5/a71ea8d3fd1f41343068362d221f95cad1c85e01.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=10356741&amp;position=10&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=10356741" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/weyj6dif.html"><div
													class="header clearfix">
													<h4 class="title ">【黄村】中影数字院线最影城</h4>
												</div>
												<p>单人影票（2D）！节假日通用！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>29.6</span><span
													class="ori-price">价值<span class="price-line">¥<span>80</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">5.0分</span><span class="sold">已售146</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
								</ul>
								<a target="_blank" mon="element=bottom_link"
									href="//bj.nuomi.com/10345" class="check-all">查看全部团购<span
									class="all-cate-arrow2"></span></a>
							</div>
							<div bn_box="floor_320&amp;position" mon="area=floor_content_320"
								id="section-floor-3" class="floor-content">
								<div class="floor-header clearfix">
									<span id="title-floor-3" class="title-floor"><i
										class="fa fa-gift"></i></span>
									<h3>娱乐</h3>
									<ul class="reco-words">
										<li><a mon="element=KTV&amp;position=0" target="_blank"
											href="//bj.nuomi.com/341">KTV</a></li>
										<li><a mon="element=温泉洗浴&amp;position=1" target="_blank"
											href="//bj.nuomi.com/338">温泉洗浴</a></li>
										<li><a mon="element=足疗按摩&amp;position=2" target="_blank"
											href="//bj.nuomi.com/347">足疗按摩</a></li>
										<li><a mon="element=文化艺术&amp;position=3" target="_blank"
											href="//bj.nuomi.com/349">文化艺术</a></li>
										<li><a target="_blank" href="//bj.nuomi.com/320"
											mon="element=top_link"
											class="no-right-border no-right-padding">全部<span
												class="all-cate-arrow"></span></a></li>
									</ul>
								</div>
								<ul class="itemlist clearfix two-row-height">
									<li
										class="row-first-item  narow-first-item  clear-first j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=30489590&amp;position=1&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=30489590" class="" target="_blank"
										href="//www.nuomi.com/deal/d00p0d5ur.html"><div
												class="imgbox">
												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>五道口 双榆树 中关村 方庄 远大路 北太平庄
														苏州桥 上地 望京 亚运村 顺义 十里堡 管庄 门头沟 八角 苹果园 平谷…
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C470%2C285%3Bw%3D470%3Bq%3D79/sign=66df409b44a98226ac8e7167b7b29531/e4dde71190ef76c62af439c59a16fdfaaf51673e.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=30489590&amp;position=1&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=30489590" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/d00p0d5ur.html"><div
													class="header clearfix">
													<h4 class="title ">【24店通用】麦颂量贩式KTV</h4>
												</div>
												<p>周一至周日阳光场/夜猫场6小时欢唱+小吃套餐，免开机费，免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>40</span><span
													class="ori-price">价值<span class="price-line">¥<span>200</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.6分</span><span class="sold">已售12870</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=6277887&amp;position=2&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=6277887" class="" target="_blank"
										href="//www.nuomi.com/deal/8aao6ige.html"><div
												class="imgbox">
												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>回龙观 生命科学园
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C21%2C690%2C418%3Bw%3D470%3Bq%3D79/sign=2ad53ad2cefcc3cea08f9373af75faba/faedab64034f78f09af32c037f310a55b2191c41.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=6277887&amp;position=2&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=6277887" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/8aao6ige.html"><div
													class="header clearfix">
													<h4 class="title ">【回龙观】龙城金晔四纪ktv</h4>
												</div>
												<p>欢唱券！节假日通用！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>19.9</span><span
													class="ori-price">价值<span class="price-line">¥<span>128</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.7分</span><span class="sold">已售2862</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=11064457&amp;position=3&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=11064457" class="" target="_blank"
										href="//www.nuomi.com/deal/uaxvirup.html"><div
												class="imgbox">
												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>公益西桥
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D48%2C72%2C924%2C561%3Bw%3D470%3Bq%3D89/sign=d54b2af3992f07084b4a7040d41080b5/faf2b2119313b07e981d68b40bd7912396dd8ced.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=11064457&amp;position=3&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=11064457" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/uaxvirup.html"><div
													class="header clearfix">
													<h4 class="title ">【公益西桥】城南夜语量贩KTV</h4>
												</div>
												<p>欢唱券！请提前24小时预约，店内提供免费WiFi、停车位！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>9.9</span><span
													class="ori-price">价值<span class="price-line">¥<span>49</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.7分</span><span class="sold">已售3727</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=5548735&amp;position=4&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=5548735" class="" target="_blank"
										href="//www.nuomi.com/deal/v4zo62mb.html"><div
												class="imgbox">
												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>东直门
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C24%2C800%2C484%3Bw%3D720%3Bq%3D79/sign=3deabdbb18950a7b617a148437e14eeb/6a63f6246b600c33f6a638451f4c510fd8f9a164.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=5548735&amp;position=4&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=5548735" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/v4zo62mb.html"><div
													class="header clearfix">
													<h4 class="title ">【东直门】友乐汇</h4>
												</div>
												<p>超值欢唱套餐！节假日通用，需提前1天预约，请至少提前1天预约，免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>32</span><span
													class="ori-price">价值<span class="price-line">¥<span>202.5</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.7分</span><span class="sold">已售5423</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="  narow-first-item  j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=12102884&amp;position=5&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=12102884" class="" target="_blank"
										href="//www.nuomi.com/deal/wbpr1clc.html"><div
												class="imgbox">
												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>五道口
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C21%2C700%2C424%3Bw%3D470%3Bq%3D80/sign=13be0ed3f51fbe090811995456502001/d1a20cf431adcbef1e7c4fa3abaf2edda2cc9fce.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=12102884&amp;position=5&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=12102884" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/wbpr1clc.html"><div
													class="header clearfix">
													<h4 class="title ">【五道口】赛乐堡KTV</h4>
												</div>
												<p>周一至周日免费自助餐欢唱券1份！免费停车，免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>49</span><span
													class="ori-price">价值<span class="price-line">¥<span>198</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.4分</span><span class="sold">已售2371</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="row-first-item   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=3545356&amp;position=6&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=3545356" class="" target="_blank"
										href="//www.nuomi.com/deal/vsnmaweg.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>立水桥
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C6%2C640%2C388%3Bw%3D470%3Bq%3D80/sign=5a7f8c42dc2a283457e96c4b6685e5dc/43a7d933c895d143976d787c7bf082025aaf0751.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=3545356&amp;position=6&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=3545356" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/vsnmaweg.html"><div
													class="header clearfix">
													<h4 class="title ">【立水桥】赛纳河休闲商务会馆</h4>
												</div>
												<p>单人洗浴门票！节假日通用！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>55.9</span><span
													class="ori-price">价值<span class="price-line">¥<span>139</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.2分</span><span class="sold">已售15377</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=4195503&amp;position=7&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=4195503" class="" target="_blank"
										href="//www.nuomi.com/deal/u8w8ubd0.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>崇文门
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C6%2C640%2C388%3Bw%3D470%3Bq%3D80/sign=ac911b9bc13d70cf58b5f04dc5ecfd36/359b033b5bb5c9eac6614a41dd39b6003bf3b386.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=4195503&amp;position=7&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=4195503" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/u8w8ubd0.html"><div
													class="header clearfix">
													<h4 class="title ">【崇文门】乐圣</h4>
												</div>
												<p>14周年店庆午餐档/晚餐档/黄金档/夜宵档自助餐欢唱！免费WiFi，免费停车位！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>45</span><span
													class="ori-price">价值<span class="price-line">¥<span>398</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.5分</span><span class="sold">已售12285</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=3491550&amp;position=8&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=3491550" class="" target="_blank"
										href="//www.nuomi.com/deal/ohz2mwcf.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>双榆树 苏州桥
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C6%2C640%2C388%3Bw%3D470%3Bq%3D79/sign=bcd1e22f67d0f703f2fdcf9c35ca7d0b/d0c8a786c9177f3e51cb483575cf3bc79f3d560e.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=3491550&amp;position=8&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=3491550" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/ohz2mwcf.html"><div
													class="header clearfix">
													<h4 class="title ">【双榆树】帝凯乐KTV</h4>
												</div>
												<p>欢唱券！节假日通用，请于消费前1天进行预约，提供免费停车位，店内提供免费WiFi</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>39.9</span><span
													class="ori-price">价值<span class="price-line">¥<span>395</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.6分</span><span class="sold">已售10816</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="  narow-first-item  j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=30751544&amp;position=9&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=30751544" class="" target="_blank"
										href="//www.nuomi.com/deal/s00p5uszq.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>通州区 果园 九棵树
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D44%2C0%2C762%2C462%3Bw%3D719%3Bq%3D80/sign=e84159c13ed3d539d572558307b3dd7c/30adcbef76094b368d0462d2abcc7cd98d109d7e.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=30751544&amp;position=9&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=30751544" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/s00p5uszq.html"><div
													class="header clearfix">
													<h4 class="title ">【通州区】宝乐迪ktv</h4>
												</div>
												<p>黄金档欢唱券3小时！需预约！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>28.8</span><span
													class="ori-price">价值<span class="price-line">¥<span>180</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.7分</span><span class="sold">已售1064</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31734114&amp;position=10&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=31734114" class="" target="_blank"
										href="//www.nuomi.com/deal/k00pqwzc9.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>首都机场
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C8%2C939%2C568%3Bw%3D720%3Bq%3D99/sign=fdee6d17e3f81a4c327db689ea1a4c61/962bd40735fae6cd8a54740207b30f2443a70ff5.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31734114&amp;position=10&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=31734114" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/k00pqwzc9.html"><div
													class="header clearfix">
													<h4 class="title ">【首都机场】蟹岛会展中心游乐园</h4>
												</div>
												<p>蟹岛嘉年华日场套票1份！免费停车！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>80</span><span
													class="ori-price">价值<span class="price-line">¥<span>780</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.8分</span><span class="sold">已售1915</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
								</ul>
								<a target="_blank" mon="element=bottom_link"
									href="//bj.nuomi.com/320" class="check-all">查看全部团购<span
									class="all-cate-arrow2"></span></a>
							</div>
							<div bn_box="floor_316&amp;position" mon="area=floor_content_316"
								id="section-floor-5" class="floor-content">
								<div class="floor-header clearfix">
									<span id="title-floor-5" class="title-floor"><i
										class="fa fa-home"></i></span>
									<h3>生活</h3>
									<ul class="reco-words">
										<li><a mon="element=丽人&amp;position=0" target="_blank"
											href="//bj.nuomi.com/956">丽人</a></li>
										<li><a mon="element=配镜&amp;position=1" target="_blank"
											href="//bj.nuomi.com/703">配镜</a></li>
										<li><a mon="element=鲜花&amp;position=2" target="_blank"
											href="//bj.nuomi.com/930">鲜花</a></li>
										<li><a mon="element=快照冲印&amp;position=3" target="_blank"
											href="//bj.nuomi.com/319">快照冲印</a></li>
										<li><a target="_blank" href="//bj.nuomi.com/316"
											mon="element=top_link"
											class="no-right-border no-right-padding">全部<span
												class="all-cate-arrow"></span></a></li>
									</ul>
								</div>
								<ul class="itemlist clearfix two-row-height">
									<li
										class="row-first-item  narow-first-item  clear-first j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=11170439&amp;position=1&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=11170439" class="" target="_blank"
										href="//www.nuomi.com/deal/knsyrcvz.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>三元桥 东直门 西直门 对外经贸 双井 亚运村
														十里堡 亦庄 草桥 崇文门 北大地 看丹桥 马家堡 太阳宫 小营
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/wh%3D470%2C285/sign=65ef8f44cd1b9d168a929265c4ee98bd/472309f79052982261272458d4ca7bcb0a46d410.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=11170439&amp;position=1&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=11170439" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/knsyrcvz.html"><div
													class="header clearfix">
													<h4 class="title ">【10店通用】八月影像馆</h4>
												</div>
												<p>个人写真套餐！节假日通用，请提前7天预约，提供免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>498</span><span
													class="ori-price">价值<span class="price-line">¥<span>4680</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">5.0分</span><span class="sold">已售3001</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=10511324&amp;position=2&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=10511324" class="" target="_blank"
										href="//www.nuomi.com/deal/ur2tephk.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>方庄
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C470%2C285%3Bw%3D470%3Bq%3D79/sign=ea3f3fae027b0208188665a15fe9dee3/810a19d8bc3eb135b7c3a0b0ae1ea8d3fd1f44b0.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=10511324&amp;position=2&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=10511324" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/ur2tephk.html"><div
													class="header clearfix">
													<h4 class="title ">【方庄】蓝调风情婚纱摄影</h4>
												</div>
												<p>个人写真！节假日通用！提前3天预约！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>299</span><span
													class="ori-price">价值<span class="price-line">¥<span>2990</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">5.0分</span><span class="sold">已售1481</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=34212162&amp;position=3&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=34212162" class="" target="_blank"
										href="//www.nuomi.com/deal/o00r82p3k.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>黄村
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/9vo3dSag_xI4khGko9WTAnF6hhy/nuomi/eWH%3D720%2C436/sign=8864da63cbcec3fd9954da78e1bae413/6a600c338744ebf82b3a4390d1f9d72a6159a7d1.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=34212162&amp;position=3&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=34212162" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/o00r82p3k.html"><div
													class="header clearfix">
													<h4 class="title ">【黄村】北京红妆坊古装摄影工作室</h4>
												</div>
												<p>拍摄80张以上 精修20张 底片全送</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>498</span><span
													class="ori-price">价值<span class="price-line">¥<span>2499</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment-disable">暂无评分</span><span class="sold">已售876</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31825456&amp;position=4&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=31825456" class="" target="_blank"
										href="//www.nuomi.com/deal/v00pt3wzz.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>望京 顺义
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D47%2C0%2C596%2C362%3Bw%3D469%3Bq%3D79/sign=21182b5773ec54e755a3405e840cac7c/e1fe9925bc315c60348fcd8685b1cb1349547744.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31825456&amp;position=4&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=31825456" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/v00pt3wzz.html"><div
													class="header clearfix">
													<h4 class="title ">【2店通用】六久视觉摄影</h4>
												</div>
												<p>个人写真1份！免费WiFi，需预约！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>599</span><span
													class="ori-price">价值<span class="price-line">¥<span>5888</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">5.0分</span><span class="sold">已售268</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="  narow-first-item  j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=2422172&amp;position=5&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=2422172" class="" target="_blank"
										href="//www.nuomi.com/deal/vpuis1lr.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>双井
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/nuomi/wh%3D470%2C285/sign=87c4505bacc379317d3d8e2ddcf49b77/b2de9c82d158ccbf93b527671ad8bc3eb1354166.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=2422172&amp;position=5&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=2422172" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/vpuis1lr.html"><div
													class="header clearfix">
													<h4 class="title ">【双井】米兰风尚婚纱摄影</h4>
												</div>
												<p>【推荐】婚纱摄影套系！专业的摄影师，专业的摄影器械，打造专属你的婚纱摄影，让你甜蜜久久！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>2999</span><span
													class="ori-price">价值<span class="price-line">¥<span>23999</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">5.0分</span><span class="sold">已售3601</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="row-first-item   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=761365&amp;position=6&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=761365" class="" target="_blank"
										href="//www.nuomi.com/deal/bhp5fnk1.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>双井
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C470%2C285%3Bw%3D470%3Bq%3D99/sign=cf99a1cd7eec54e755a3405e8408b760/b21bb051f8198618d8dcc3774fed2e738ad4e6ae.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=761365&amp;position=6&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=761365" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/bhp5fnk1.html"><div
													class="header clearfix">
													<h4 class="title ">【双井】台北新娘婚纱摄影</h4>
												</div>
												<p>【推荐】尊爵套系！2015年韩国流行妆容，送水下婚纱照，空中花园+5万平米影城基地</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>2999</span><span
													class="ori-price">价值<span class="price-line">¥<span>15880</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">5.0分</span><span class="sold">已售6626</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=32483996&amp;position=7&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=32483996" class="" target="_blank"
										href="//www.nuomi.com/deal/t00q74k5l.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>五道口 双榆树 东直门 朝外大街 中关村 西直门
														丽泽桥 劲松 苏州桥 亦庄 新华大街 清河 鲁谷 通州区 青年路 分钟寺…
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/nuomi/eWH%3D720%2C436/sign=49cce0b9eddde711f5b83efb90ddfe37/728da9773912b31b2cff9d958e18367adbb4e1ff.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=32483996&amp;position=7&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=32483996" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/t00q74k5l.html"><div
													class="header clearfix">
													<h4 class="title ">【13店通用】韩国Sam婚纱摄影-北京</h4>
												</div>
												<p>13店通用</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>2999</span><span
													class="ori-price">价值<span class="price-line">¥<span>26888</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">5.0分</span><span class="sold">已售2006</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=12623913&amp;position=8&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=12623913" class="" target="_blank"
										href="//www.nuomi.com/deal/un2iwomu.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>方庄 望京 左安门 刘家窑
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C21%2C690%2C418%3Bw%3D470%3Bq%3D79/sign=02d190e4560fd9f9b4580f29181df818/2fdda3cc7cd98d10e8c0b3a9263fb80e7bec9016.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=12623913&amp;position=8&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=12623913" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/un2iwomu.html"><div
													class="header clearfix">
													<h4 class="title ">【3店通用】芈视觉</h4>
												</div>
												<p>儿童写真1份！需预约！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>399</span><span
													class="ori-price">价值<span class="price-line">¥<span>3688</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">5.0分</span><span class="sold">已售638</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="  narow-first-item  j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=7209479&amp;position=9&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=7209479" class="" target="_blank"
										href="//www.nuomi.com/deal/6fpcww8z.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>方庄
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C240%2C793%2C481%3Bw%3D470%3Bq%3D90/sign=e6f0f59eab345982d1c5bfd231c41d9f/b812c8fcc3cec3fd8d2ec69fd088d43f869427c3.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=7209479&amp;position=9&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=7209479" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/6fpcww8z.html"><div
													class="header clearfix">
													<h4 class="title ">【方庄】绝色影像馆</h4>
												</div>
												<p>宝贝全套摄影！提前1天预约，免费WiFi，节假日通用！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>298</span><span
													class="ori-price">价值<span class="price-line">¥<span>998</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.7分</span><span class="sold">已售136</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=32794362&amp;position=10&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=32794362" class="" target="_blank"
										href="//www.nuomi.com/deal/s00qdh9ub.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>西单
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/nuomi/eWH%3D720%2C436/sign=b6b42453befd5266b54141199c2aa707/37d3d539b6003af30df8f4d83d2ac65c1138b6c3.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=32794362&amp;position=10&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=32794362" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/s00qdh9ub.html"><div
													class="header clearfix">
													<h4 class="title ">【西单】巴黎之恋婚纱摄影</h4>
												</div>
												<p>&#8203;下单立减1000元，到店返现</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>12999</span><span
													class="ori-price">价值<span class="price-line">¥<span>36999</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment-disable">暂无评分</span><span class="sold">已售234</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
								</ul>
								<a target="_blank" mon="element=bottom_link"
									href="//bj.nuomi.com/316" class="check-all">查看全部团购<span
									class="all-cate-arrow2"></span></a>
							</div>
							<div bn_box="floor_642&amp;position" mon="area=floor_content_642"
								id="section-floor-6" class="floor-content">
								<div class="floor-header clearfix">
									<span id="title-floor-6" class="title-floor"><i
										class="fa fa-building"></i></span>
									<h3>酒店</h3>
									<ul class="reco-words">
										<li><a mon="element=北京&amp;position=0" target="_blank"
											href="//t.nuomi.com/bj">北京</a></li>
										<li><a mon="element=上海&amp;position=1" target="_blank"
											href="//t.nuomi.com/sh">上海</a></li>
										<li><a mon="element=广州&amp;position=2" target="_blank"
											href="//t.nuomi.com/gz">广州</a></li>
										<li><a target="_blank" href="//bj.nuomi.com/10642"
											mon="element=top_link"
											class="no-right-border no-right-padding">全部<span
												class="all-cate-arrow"></span></a></li>
									</ul>
								</div>
								<ul class="itemlist clearfix two-row-height">
									<li
										class="row-first-item  narow-first-item  clear-first j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=2193335&amp;position=1&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=2193335" class="" target="_blank"
										href="//www.nuomi.com/deal/bcaipz90.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>大红门
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/wh%3D720%2C436/sign=7cff0cf207b30f2435cfe404faa5fd77/8cb1cb1349540923da22c4ed9a58d109b2de49dd.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=2193335&amp;position=1&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=2193335" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/bcaipz90.html"><div
													class="header clearfix">
													<h4 class="title ">【大红门】北京市南苑宾馆</h4>
												</div>
												<p>【南苑地区】北京市南苑宾馆</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>98</span><span
													class="ori-price">价值<span class="price-line">¥<span>168</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.6分</span><span class="sold">已售5215</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=15292289&amp;position=2&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=15292289" class="" target="_blank"
										href="//www.nuomi.com/deal/arcdsivz.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>上地
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/wh%3D720%2C436/sign=12718eaba4af2eddd4a441eebf202ddd/908fa0ec08fa513d42ef9c73356d55fbb3fbd9d2.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=15292289&amp;position=2&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=15292289" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/arcdsivz.html"><div
													class="header clearfix">
													<h4 class="title ">【上地】北京正青春青年公寓</h4>
												</div>
												<p>【上地商圈】北京正青春青年公寓</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>10</span><span
													class="ori-price">价值<span class="price-line">¥<span>99</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment-disable">暂无评分</span><span class="sold">已售376</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31130080&amp;position=3&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=31130080" class="" target="_blank"
										href="//www.nuomi.com/deal/200pdlhqd.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>霄云路
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-fo3dSag_xI4khGko9WTAnF6hhy/nuomi/eWH%3D720%2C436/sign=e70159bdc1177f3e025e810047fd0beb/4e4a20a4462309f7a69b66197a0e0cf3d6cad6c1.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31130080&amp;position=3&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=31130080" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/200pdlhqd.html"><div
													class="header clearfix">
													<h4 class="title ">【霄云路】北京城宝饭店（大床间）</h4>
												</div>
												<p>尊享北京城宝饭店大床间1晚！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>270</span><span
													class="ori-price">价值<span class="price-line">¥<span>880</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment-disable">暂无评分</span><span class="sold">已售3029</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31054089&amp;position=4&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=31054089" class="" target="_blank"
										href="//www.nuomi.com/deal/q00pcjb2y.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>木樨园
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-fo3dSag_xI4khGko9WTAnF6hhy/nuomi/eWH%3D720%2C436/sign=728d8fe485b1cb132c03411eea666662/b999a9014c086e065bb0db400a087bf40ad1cba5.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31054089&amp;position=4&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=31054089" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/q00pcjb2y.html"><div
													class="header clearfix">
													<h4 class="title ">【木樨园】北京太空舱酒店（南站店）（豪华间）</h4>
												</div>
												<p>尊享太空舱酒店（南站店）豪华间1晚！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>89</span><span
													class="ori-price">价值<span class="price-line">¥<span>108</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">5.0分</span><span class="sold">已售277</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="  narow-first-item  j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31100179&amp;position=5&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=31100179" class="" target="_blank"
										href="//www.nuomi.com/deal/o00pd6yqx.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>首都机场
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/nuomi/eWH%3D720%2C436/sign=0f28780304d79123f28ae9799a0669ae/0e2442a7d933c89514ebb070d91373f082020027.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31100179&amp;position=5&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=31100179" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/o00pd6yqx.html"><div
													class="header clearfix">
													<h4 class="title ">【首都机场】北京启航国际酒店（大床间+全天免费接送机）</h4>
												</div>
												<p>尊享北京启航国际酒店大床间1晚+全天免费接送机！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>228</span><span
													class="ori-price">价值<span class="price-line">¥<span>880</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment-disable">暂无评分</span><span class="sold">已售1757</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="row-first-item   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31026706&amp;position=6&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=31026706" class="" target="_blank"
										href="//www.nuomi.com/deal/o00pc2x32.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>酒仙桥
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/nuomi/eWH%3D720%2C436/sign=3cabca8fc1ea15ce53849d0481320adf/1ad5ad6eddc451dabe5ba8e1befd5266d016320e.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31026706&amp;position=6&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=31026706" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/o00pc2x32.html"><div
													class="header clearfix">
													<h4 class="title ">【酒仙桥】北京将台艺宫酒店（优选主题间）</h4>
												</div>
												<p>尊享北京将台艺宫酒店优选主题间1晚＋2份早餐＋更多优惠！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>299</span><span
													class="ori-price">价值<span class="price-line">¥<span>588</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment-disable">暂无评分</span><span class="sold">已售574</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31004829&amp;position=7&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=31004829" class="" target="_blank"
										href="//www.nuomi.com/deal/900p9vk3n.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>世贸天阶
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/nuomi/eWH%3D720%2C436/sign=d8ac02e3a1ec8a1306702aedc031a1a3/9d82d158ccbf6c810f8a0ae4b43eb13533fa4078.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31004829&amp;position=7&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=31004829" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/900p9vk3n.html"><div
													class="header clearfix">
													<h4 class="title ">【世贸天阶】北京荣宝宾馆（标准间）</h4>
												</div>
												<p>尊享北京荣宝宾馆标准间1晚！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>258</span><span
													class="ori-price">价值<span class="price-line">¥<span>380</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">3.0分</span><span class="sold">已售1027</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=10299850&amp;position=8&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=10299850" class="" target="_blank"
										href="//www.nuomi.com/deal/qlbmnnlb.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>安贞
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/wh%3D720%2C436/sign=4a9b57fbc4bf6c81f76224ef8e0e9d01/11385343fbf2b211450a36ddc28065380cd78e79.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=10299850&amp;position=8&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=10299850" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/qlbmnnlb.html"><div
													class="header clearfix">
													<h4 class="title ">【安贞】北京和平街宾馆</h4>
												</div>
												<p>【国展区域】北京和平街宾馆</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>198</span><span
													class="ori-price">价值<span class="price-line">¥<span>288</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">2.4分</span><span class="sold">已售1280</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="  narow-first-item  j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=7730793&amp;position=9&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=7730793" class="" target="_blank"
										href="//www.nuomi.com/deal/xa4zc629.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>远大路 万柳
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/wh%3D720%2C436/sign=5dcd702432292df59796a4128e017054/d8f9d72a6059252d1d09a80f3c9b033b5bb5b99b.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=7730793&amp;position=9&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=7730793" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/xa4zc629.html"><div
													class="header clearfix">
													<h4 class="title ">【远大路】北京世纪星豪酒店</h4>
												</div>
												<p>【万柳商圈】北京世纪星豪酒店</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>288</span><span
													class="ori-price">价值<span class="price-line">¥<span>428</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.2分</span><span class="sold">已售1315</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31058159&amp;position=10&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=31058159" class="" target="_blank"
										href="//www.nuomi.com/deal/n00pcme6f.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>首都机场
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/nuomi/eWH%3D720%2C436/sign=f8f417f3af86c9171a692f34fe0f40e3/6c224f4a20a4462364c956699022720e0cf3d7be.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=31058159&amp;position=10&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=31058159" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/n00pcme6f.html"><div
													class="header clearfix">
													<h4 class="title ">【首都机场】北京展航商务宾馆（标准间）</h4>
												</div>
												<p>尊享北京展航商务宾馆标准间1晚！宾馆地处首都国际机场东南，毗邻机场高速、京顺路，中国国际展览中心新馆，空港工业区近在咫尺！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>108</span><span
													class="ori-price">价值<span class="price-line">¥<span>598</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment-disable">暂无评分</span><span class="sold">已售510</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
								</ul>
								<a target="_blank" mon="element=bottom_link"
									href="//bj.nuomi.com/10642" class="check-all">查看全部团购<span
									class="all-cate-arrow2"></span></a>
							</div>
							<div bn_box="floor_10955&amp;position"
								mon="area=floor_content_10955" id="section-floor-8"
								class="floor-content">
								<div class="floor-header clearfix">
									<span id="title-floor-8" class="title-floor"><i
										class="fa fa-venus"></i></span>
									<h3>丽人</h3>
									<ul class="reco-words">
										<li><a mon="element=美发&amp;position=0" target="_blank"
											href="//bj.nuomi.com/646">美发</a></li>
										<li><a mon="element=美容SPA&amp;position=1" target="_blank"
											href="//bj.nuomi.com/707">美容SPA</a></li>
										<li><a mon="element=美甲&amp;position=2" target="_blank"
											href="//bj.nuomi.com/556">美甲</a></li>
										<li><a mon="element=化妆&amp;position=3" target="_blank"
											href="//bj.nuomi.com/925">化妆</a></li>
										<li><a target="_blank" href="//bj.nuomi.com/10955"
											mon="element=top_link"
											class="no-right-border no-right-padding">全部<span
												class="all-cate-arrow"></span></a></li>
									</ul>
								</div>
								<ul class="itemlist clearfix two-row-height">
									<li
										class="row-first-item  narow-first-item  clear-first j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=34094343&amp;position=1&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=34094343" class="" target="_blank"
										href="//www.nuomi.com/deal/i00r5s19w.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>清河 东坝
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C50%2C690%2C418%3Bw%3D470%3Bq%3D79/sign=868c25523ed3d539d572558307b7c565/9a504fc2d5628535aabbd78d98ef76c6a6ef63c6.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=34094343&amp;position=1&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=34094343" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/i00r5s19w.html"><div
													class="header clearfix">
													<h4 class="title ">【2店通用】曼玉美容养生造型</h4>
												</div>
												<p>曼玉减肥套餐1份！男女不限，免费WiFi，需预约！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>9.9</span><span
													class="ori-price">价值<span class="price-line">¥<span>894</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">5.0分</span><span class="sold">已售300</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=10274230&amp;position=2&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=10274230" class="" target="_blank"
										href="//www.nuomi.com/deal/hlgae5xr.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>魏公村 广外大街 安贞 五道口 酒仙桥 和平里
														朝外大街 中关村 对外经贸 丽泽桥 北太平庄 公主坟 苏州桥 上地 望京…
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C470%2C285%3Bw%3D470%3Bq%3D80/sign=0e3901688d35e5dd8463ff9f4bf68bdf/1e30e924b899a9010df3ba0c15950a7b0308f5c2.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=10274230&amp;position=2&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=10274230" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/hlgae5xr.html"><div
													class="header clearfix">
													<h4 class="title ">【43店通用】佑米造型</h4>
												</div>
												<p>超值洗剪吹！提供免费停车位、免费WiFi，节假日通用，提前3小时预约！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>29.8</span><span
													class="ori-price">价值<span class="price-line">¥<span>55</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.9分</span><span class="sold">已售13591</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=12633362&amp;position=3&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=12633362" class="" target="_blank"
										href="//www.nuomi.com/deal/hvt4ovng.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>安贞 五道口 和平里 方庄 西直门 六里桥
														北太平庄 虎坊桥 劲松 双井 沙子口 上地 亚运村 昌平镇 航天桥 五棵松 十里堡…
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C58%2C800%2C484%3Bw%3D720%3Bq%3D80/sign=7d34aa900bd79123f4afce34900475b7/91ef76c6a7efce1b2aa23252a851f3deb58f6599.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=12633362&amp;position=3&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=12633362" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/hvt4ovng.html"><div
													class="header clearfix">
													<h4 class="title ">【多店通用】怡瑞造型</h4>
												</div>
												<p>单人剪发1次，男女不限，长短发不限，需预约！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>28.8</span><span
													class="ori-price">价值<span class="price-line">¥<span>58</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.9分</span><span class="sold">已售2337</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=4992036&amp;position=4&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=4992036" class="" target="_blank"
										href="//www.nuomi.com/deal/wjmverkg.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>天通苑
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C20%2C690%2C418%3Bw%3D470%3Bq%3D99/sign=e8dc82b2b28f8c54f79c9f6f071901c7/c8177f3e6709c93d37424aab993df8dcd100543d.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=4992036&amp;position=4&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=4992036" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/wjmverkg.html"><div
													class="header clearfix">
													<h4 class="title ">【2店通用】基美造型</h4>
												</div>
												<p>CDE联盟KD老师剪发套餐！节假日通用，免费WiFi，停车位！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>28</span><span
													class="ori-price">价值<span class="price-line">¥<span>128</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.8分</span><span class="sold">已售1781</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="  narow-first-item  j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=2562648&amp;position=5&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=2562648" class="" target="_blank"
										href="//www.nuomi.com/deal/ejhxx4ev.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>五道口 双榆树 东直门 中关村 西单 对外经贸
														国贸 北太平庄 苏州桥 望京 亚运村 崇文门 梨园 北苑家园 通州区 青年路…
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/nuomi/wh%3D470%2C285/sign=531dfc7459afa40f3c93c6d99c542f7d/8cb1cb1349540923fdb928389158d109b2de49a7.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=2562648&amp;position=5&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=2562648" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/ejhxx4ev.html"><div
													class="header clearfix">
													<h4 class="title ">【16店通用】镁连社&amp;美丽频道</h4>
												</div>
												<p>欧莱雅美发套餐！烫染2选1，含洗剪吹、护理、造型！丝丝秀发，焕发自信！</p></a>
											<div class="add-info">
												<span class="promo">立减60元</span>
											</div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>288</span><span
													class="ori-price">价值<span class="price-line">¥<span>2140</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.7分</span><span class="sold">已售8912</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="row-first-item   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=2798557&amp;position=6&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=2798557" class="" target="_blank"
										href="//www.nuomi.com/deal/v2yz7ap1.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>魏公村 安贞 双榆树 东直门 远大路 六里桥
														北太平庄 安定门 苏州桥 上地 望京 亚运村 五棵松 回龙观 十里堡 德外大街…
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/wh%3D470%2C285/sign=bc42f18c357adab43d851347bce49f2e/c8177f3e6709c93d34944c539c3df8dcd100542b.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=2798557&amp;position=6&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=2798557" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/v2yz7ap1.html"><div
													class="header clearfix">
													<h4 class="title ">【37店通用】橙花国际美业联盟</h4>
												</div>
												<p>【推荐】女士补水SPA护理套餐！请于消费前1天进行预约，节假日通用，提供免费WiFi！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>29</span><span
													class="ori-price">价值<span class="price-line">¥<span>1520</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.4分</span><span class="sold">已售1088</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=574825&amp;position=7&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=574825" class="" target="_blank"
										href="//www.nuomi.com/deal/jbwsosiw.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>三元桥 魏公村 广外大街 安贞 北下关 五道口
														酒仙桥 双榆树 和平里 东直门 朝外大街 中关村 方庄 远大路 西直门…
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C6%2C690%2C418%3Bw%3D470%3Bq%3D79/sign=6253ad1f49c2d562e6478aadda21bcd9/a08b87d6277f9e2fdc631e771930e924b899f37f.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=574825&amp;position=7&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=574825" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/jbwsosiw.html"><div
													class="header clearfix">
													<h4 class="title ">【多店通用】再清椿美容连锁</h4>
												</div>
												<p>【推荐】养生保养2选1套餐！技师为您服务，传统养生保养，舒筋，疲劳，调理身体</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>38</span><span
													class="ori-price">价值<span class="price-line">¥<span>1080</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.5分</span><span class="sold">已售5524</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=787600&amp;position=8&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=787600" class="" target="_blank"
										href="//www.nuomi.com/deal/jd1ov9b9.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
													<li class="marketing-label marketing-free-appoint">免预约</li>
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>西单
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.bdstatic.com/5eR1ciub_Q63otebn9fN2DJv/upload/deal/2014/4/V_L/787600-1397230752838.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=787600&amp;position=8&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=787600" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/jd1ov9b9.html"><div
													class="header clearfix">
													<h4 class="title ">【西单】指尖诱惑美甲</h4>
												</div>
												<p>美甲套餐！技术精湛的美甲师，优质服务，环境优雅，打造色彩斑斓的美丽！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>27.8</span><span
													class="ori-price">价值<span class="price-line">¥<span>160</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.7分</span><span class="sold">已售1620</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="  narow-first-item  j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=737031&amp;position=9&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=737031" class="" target="_blank"
										href="//www.nuomi.com/deal/pzzulbzi.html"><div
												class="imgbox">
												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>双榆树 东直门 国贸 万寿路 苏州桥 五棵松
														大望路 崇文门
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.bdstatic.com/5eZ1ciub_Q63otebn9fN2DJv/upload/deal/2014/3/V_L/737031-1396073494247.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=737031&amp;position=9&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=737031" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/pzzulbzi.html"><div
													class="header clearfix">
													<h4 class="title ">【5店通用】美玉琢专业痘肌机构</h4>
												</div>
												<p>红蓝光深层祛痘10合1综合疗法！以美容美体，祛痘美容为目标，品质保证，口碑承诺</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>19.8</span><span
													class="ori-price">价值<span class="price-line">¥<span>7920</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">4.9分</span><span class="sold">已售1280</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
									<li class="   j-card"><a
										mon="s=e9694139448f4dbae24aeb743010e860&amp;element=32487863&amp;position=10&amp;element_type=item&amp;page_index=1"
										data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
										data-topten="k=icon_1&amp;v=32487863" class="" target="_blank"
										href="//www.nuomi.com/deal/j00q7el1i.html"><div
												class="imgbox">

												<ul class="marketing-label-container">
												</ul>
												<div class="range-area">
													<div class="range-bg"></div>
													<div class="range-inner">
														<span class="white-locate"></span>广外大街 安贞 北下关 五道口 酒仙桥 和平里
														方庄 西直门 丽泽桥 北太平庄 苏州桥 望京 航天桥 五棵松 回龙观 管庄…
													</div>
												</div>
												<div class="borderbox">
													<img
														data-original="//gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D302%2C73%2C471%2C286%3Bw%3D470%3Bq%3D99/sign=bf769742eddde711f39d19b69adcfe29/37d12f2eb9389b5025d6c7158d35e5dde7116e4f.jpg"
														src="//gss0.bdstatic.com/8r1VfDn-KggZnd_b8IqT0jB-xx1xbK/static/common/img/lazy-loading_2689268.png">
												</div>
											</div></a>
										<div class="contentbox">
											<a
												mon="s=e9694139448f4dbae24aeb743010e860&amp;element=32487863&amp;position=10&amp;element_type=item&amp;page_index=1"
												data-topten="k=icon_1&amp;v=32487863" class=""
												data-item-st="{&quot;s&quot;:&quot;e9694139448f4dbae24aeb743010e860&quot;}"
												target="_blank" href="//www.nuomi.com/deal/j00q7el1i.html"><div
													class="header clearfix">
													<h4 class="title ">【32店通用】米琳造型</h4>
												</div>
												<p>美发套餐！男女不限，长短发不限，免费停车！</p></a>
											<div class="add-info"></div>
											<div class="pinfo clearfix">
												<span class="price"><span class="moneyico">¥</span>268</span><span
													class="ori-price">价值<span class="price-line">¥<span>2618</span></span></span>
											</div>
											<div class="footer clearfix">
												<span class="comment">5.0分</span><span class="sold">已售288</span>
												<div class="bottom-border"></div>
											</div>
										</div></li>
								</ul>
								<a target="_blank" mon="element=bottom_link"
									href="//bj.nuomi.com/10955" class="check-all">查看全部团购<span
									class="all-cate-arrow2"></span></a>
							</div>
						</div>
					</div>
				</div>
				<div id="c-bottom" class="bottom-category">
					<div class="bottom-cate">
						<ul class="tab-nav clearfix">
							<li mon="area=bottom_tab_hotMarket"><a
								mon="element=hotMarket&amp;position=0" class="active"
								href="javascript:;">热门商场</a></li>
							<li mon="area=bottom_tab_hotCity"><a
								mon="element=hotCity&amp;position=1" class=""
								href="javascript:;">热门城市</a></li>
							<li mon="area=bottom_tab_tuangouCate"><a
								mon="element=tuangouCate&amp;position=2" class=""
								href="javascript:;">团购分类</a></li>
						</ul>
						<div mon="area=bottom_link" style="" class="bottom-content">
							<ul>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_1&amp;position=0" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=1">朝阳大悦城</a>
								</li>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_2&amp;position=1" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=2">蓝色港湾</a></li>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_3&amp;position=2" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=3">世贸天阶</a></li>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_4&amp;position=3" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=4">万柳购物中心</a>
								</li>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_5&amp;position=4" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=5">清河五彩城</a>
								</li>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_6&amp;position=5" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=6">五道口购物中心</a>
								</li>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_7&amp;position=6" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=7">新中关购物中心</a>
								</li>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_8&amp;position=7" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=8">首地大峡谷购物中心</a>
								</li>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_9&amp;position=8" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=9">西单大悦城</a>
								</li>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_10&amp;position=9" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=10">龙德广场</a>
								</li>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_15&amp;position=10" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=15">爱琴海购物中心</a>
								</li>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_21&amp;position=11" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=21">东方新天地</a>
								</li>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_23&amp;position=12" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=23">凤凰汇购物中心</a>
								</li>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_24&amp;position=13" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=24">国瑞购物中心</a>
								</li>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_29&amp;position=14" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=29">欧美汇购物中心</a>
								</li>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_36&amp;position=15" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=36">东方银座购物中心</a>
								</li>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_53&amp;position=16" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=53">华宇时尚购物中心</a>
								</li>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_81&amp;position=17" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=81">望京华彩商业中心</a>
								</li>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_88&amp;position=18" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=88">丰联广场</a>
								</li>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_206&amp;position=19" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=206">建外SOHO</a>
								</li>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_207&amp;position=20" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=207">中关村广场购物中心</a>
								</li>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_208&amp;position=21" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=208">百荣世贸商城</a>
								</li>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_218&amp;position=22" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=218">金源新燕莎MALL</a>
								</li>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_219&amp;position=23" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=219">悠唐生活广场</a>
								</li>
								<li mon="area=bottom_link_hotMarket"><a
									mon="element=hotMarket_220&amp;position=24" target="_blank"
									href="//bj.nuomi.com/pcindex/marketdetail/?marketId=220">BHG
										Mall(华联常营购物中心)</a></li>
							</ul>
						</div>
						<div mon="area=bottom_link" style="display: none;"
							class="bottom-content">
							<ul>
								<li mon="area=bottom_link_hotCity"><a
									mon="element=hotCity_100010000&amp;position=0" target="_blank"
									href="//bj.nuomi.com/">北京团购</a></li>
								<li mon="area=bottom_link_hotCity"><a
									mon="element=hotCity_800010000&amp;position=1" target="_blank"
									href="//cd.nuomi.com/">成都团购</a></li>
								<li mon="area=bottom_link_hotCity"><a
									mon="element=hotCity_300110000&amp;position=2" target="_blank"
									href="//gz.nuomi.com/">广州团购</a></li>
								<li mon="area=bottom_link_hotCity"><a
									mon="element=hotCity_600010000&amp;position=3" target="_blank"
									href="//hz.nuomi.com/">杭州团购</a></li>
								<li mon="area=bottom_link_hotCity"><a
									mon="element=hotCity_700010000&amp;position=4" target="_blank"
									href="//nj.nuomi.com/">南京团购</a></li>
								<li mon="area=bottom_link_hotCity"><a
									mon="element=hotCity_600110000&amp;position=5" target="_blank"
									href="//nb.nuomi.com/">宁波团购</a></li>
								<li mon="area=bottom_link_hotCity"><a
									mon="element=hotCity_200010000&amp;position=6" target="_blank"
									href="//sh.nuomi.com/">上海团购</a></li>
								<li mon="area=bottom_link_hotCity"><a
									mon="element=hotCity_300210000&amp;position=7" target="_blank"
									href="//sz.nuomi.com/">深圳团购</a></li>
								<li mon="area=bottom_link_hotCity"><a
									mon="element=hotCity_1300020000&amp;position=8" target="_blank"
									href="//sy.nuomi.com/">沈阳团购</a></li>
								<li mon="area=bottom_link_hotCity"><a
									mon="element=hotCity_400010000&amp;position=9" target="_blank"
									href="//wh.nuomi.com/">武汉团购</a></li>
								<li mon="area=bottom_link_hotCity"><a
									mon="element=hotCity_500010000&amp;position=10" target="_blank"
									href="//tj.nuomi.com/">天津团购</a></li>
								<li mon="area=bottom_link_hotCity"><a
									mon="element=hotCity_700210000&amp;position=11" target="_blank"
									href="//wx.nuomi.com/">无锡团购</a></li>
								<li mon="area=bottom_link_hotCity"><a
									mon="element=hotCity_900010000&amp;position=12" target="_blank"
									href="//cq.nuomi.com/">重庆团购</a></li>
								<li mon="area=bottom_link_hotCity"><a
									mon="element=hotCity_1900020000&amp;position=13"
									target="_blank" href="//xm.nuomi.com/">厦门团购</a></li>
								<li mon="area=bottom_link_hotCity"><a
									mon="element=hotCity_1000010000&amp;position=14"
									target="_blank" href="//xa.nuomi.com/">西安团购</a></li>
								<li mon="area=bottom_link_hotCity"><a
									mon="element=hotCity_1400020000&amp;position=15"
									target="_blank" href="//jn.nuomi.com/">济南团购</a></li>
								<li mon="area=bottom_link_hotCity"><a
									mon="element=hotCity_1100010000&amp;position=16"
									target="_blank" href="//hrb.nuomi.com/">哈尔滨团购</a></li>
							</ul>
						</div>
						<div mon="area=bottom_link" style="display: none;"
							class="bottom-content">
							<ul>
								<li mon="area=bottom_link_tuangouCate"><a
									mon="element=tuangouCate_0&amp;position=0" target="_blank"
									href="//bj.nuomi.com/all">全部</a></li>
								<li mon="area=bottom_link_tuangouCate"><a
									mon="element=tuangouCate_1000000&amp;position=1"
									target="_blank" href="//bj.nuomi.com/new">今日新单</a></li>
								<li mon="area=bottom_link_tuangouCate"><a
									mon="element=tuangouCate_326&amp;position=2" target="_blank"
									href="//bj.nuomi.com/meishi">美食</a></li>
								<li mon="area=bottom_link_tuangouCate"><a
									mon="element=tuangouCate_10345&amp;position=3" target="_blank"
									href="//bj.nuomi.com/movie">电影</a></li>
								<li mon="area=bottom_link_tuangouCate"><a
									mon="element=tuangouCate_320&amp;position=4" target="_blank"
									href="//bj.nuomi.com/yule">娱乐</a></li>
								<li mon="area=bottom_link_tuangouCate"><a
									mon="element=tuangouCate_316&amp;position=5" target="_blank"
									href="//bj.nuomi.com/shenghuo">生活</a></li>
								<li mon="area=bottom_link_tuangouCate"><a
									mon="element=tuangouCate_10955&amp;position=6" target="_blank"
									href="//bj.nuomi.com/liren">丽人</a></li>
								<li mon="area=bottom_link_tuangouCate"><a
									mon="element=tuangouCate_10642&amp;position=7" target="_blank"
									href="//t.nuomi.com/">酒店</a></li>
								<li mon="area=bottom_link_tuangouCate"><a
									mon="element=tuangouCate_1100708&amp;position=8"
									target="_blank" href="//v.nuomi.com/">本地生活</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript"
		src="${ctx }/static/project/bdms/js/index.js"></script>
	<%@include file="/WEB-INF/jsp/project/bdms/page/footer.jsp"%>
</body>
</html>



