<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/jsp/project/bdms/page/header.jsp"%>
<link rel="stylesheet"
	href="${ctx }/static/project/bdms/style/css/${fgConfig.defaultTheme }/bdmsUser/bdmsUserInfo.css"></link>
<title></title>
</head>
<body mon="page=index_new">

	<div class="bdms-fadeIn">

		<div class="uc p-account clearfix">
			<div class="w-user-info">
				<div class="user-name-wrap fl">
					<span class="user-name">chantingbo</span> <span class="tit">手机已绑定</span>
					<span class="account-info-con"> 183****2122 </span> <span
						class="account-info-btn"> <a id="j-uc-bind-phone"
						href="###" class="link">修改</a>
					</span>
				</div>
			</div>
			<div class="uc-wrap">
				<div class="uc-side">
					<ul alog-group="bainuo-user-pagetab"
						alog-alias="bainuo-user-pagetab" mon="element_type=nav"
						id="j-uc-nav" class="w-nav clearfix">
						<li class="nav-active"><a href="javascript:;"
							class="nav-txt j-nav"> 消息中心 </a>
							<ul mon="area=subNav" class="sub-nav">
								<li><a class="" href="/uc/comment/not"> <span
										class="sub-nav-ico">•</span>我的评价
								</a></li>
								<li><a class="" href="/uc/comment/already"> <span
										class="sub-nav-ico">•</span>别人的评价
								</a></li>
							</ul></li>
						<li class="nav-active"><a href="/uc/collection/online"
							class="nav-txt nav-link"> 我的优惠券 </a></li>
						<li class="nav-active"><a href="/uc/collection/online"
							class="nav-txt nav-link"> 我的收藏 </a></li>
						<li class="nav-active"><a href="/uc/collection/online"
							class="nav-txt nav-link"> 我的美文 </a></li>
						<li class="nav-active"><a href="/uc/collection/online"
							class="nav-txt nav-link"> 我的账户 </a></li>
					</ul>
					<div class="w-phone-info">
						<p class="phone-num">13536597372</p>
						<p class="phone-tips">
							客服电话<br>周一至周日 9:00-22:00
						</p>
						<span class="sprite-line"></span>
					</div>
				</div>
				<div class="uc-main">
					<div id="account-tab" class="n-tabs" data-ctrl-context="default"
						data-ctrl-id="moye-0">
						<ul class="n-tabs-nav n-nav n-nav-tabs">
							<li class="n-tabs-item n-active" data-panel="#panel-info"
								data-index="0"><a href="javascript: void(0)">基本资料</a></li>
							<li class="n-tabs-item" data-panel="#panel-address"
								data-index="1"><a href="javascript: void(0)">联系地址</a></li>
							<li class="n-tabs-item" data-panel="#panel-password"
								data-index="2"><a href="javascript: void(0)">其他资料</a></li>
						</ul>
						<div class="n-tabs-bd">
							<div id="panel-info" class="n-tab-panel n-active">
								<div class="w-account-info">
									<ul class="account-info">
										<li><span class="account-info-tit">用&nbsp;&nbsp;户&nbsp;&nbsp;名：</span>
											<span class="account-info-con">chantingbo</span> <span
											class="account-info-btn"> <a target="_blank"
												href="//passport.baidu.com/center" class="link">百度帐号设置</a>
										</span></li>
										<li><span class="account-info-tit account-info-tit-2">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</span>
											<span class="account-info-con">********</span> <span
											class="account-info-btn"> <a target="_blank"
												href="//passport.baidu.com/v2/account/password" class="link">修改密码</a>
										</span></li>
										<li><span class="account-info-tit">手&nbsp;&nbsp;机&nbsp;&nbsp;号：</span>
											<span class="account-info-con"> 183****2122 </span> <span
											class="account-info-btn"> <a id="j-bind-phone"
												href="###" class="link">绑定新号码</a>
										</span></li>
									</ul>
								</div>
							</div>
							<div id="panel-address" class="n-tab-panel">
								<div class="w-address">
									<h5>联系地址</h5>
									<div id="J-add-address" class="add-address-wrap">
										<p class="uc-address-btn add-address-btn">
											<a href="javascript:;"><span></span>添加地址</a>
										</p>
										<p class="uc-address-btn edit-address-btn">
											<a href="javascript:;"><span></span>修改地址</a>
										</p>
										<input type="hidden" id="is-default" value="0">
										<ul class="w-add-address-form">
											<li>
												<p class="add-address-tit fl">
													<span class="red">*</span>所在地区：
												</p>
												<p class="add-address-con fl">
													<select id="province" name="province">
														<option selected="selected" value="0">省份</option>
													</select> <select disabled="disabled" id="city" name="city">
														<option selected="selected" value="0">城市</option>
													</select> <select disabled="disabled" id="district" name="district">
														<option selected="selected" value="0">区域</option>
													</select> <span id="area-msg" class="msg red msg-hide">&nbsp;</span>
												</p>
											</li>
											<li>
												<p class="add-address-tit fl">
													<span class="red">*</span>街道地址：
												</p>
												<p class="add-address-con fl">
													<input type="text" maxlength="60" id="street" name="street"
														class="form wid390"> <span id="street-msg"
														class="msg ml10 red msg-hide">&nbsp;</span>
												</p>
											</li>
											<li>
												<p class="add-address-tit fl">
													<span class="red">*</span>邮政编码：
												</p>
												<p class="add-address-con fl">
													<input type="text" maxlength="6" id="post-code"
														name="post_code" class="form"> <a target="_blank"
														id="J-post-link" href="http://opendata.baidu.com/post/s"
														class="link pl5">邮编查询</a> <span id="postcode-msg"
														class="msg ml10 red msg-hide">&nbsp;</span>
												</p>
											</li>
											<li>
												<p class="add-address-tit fl">
													<span class="red">*</span>收货人姓名：
												</p>
												<p class="add-address-con fl">
													<input type="text" maxlength="15" id="name" name="name"
														class="form"> <span id="name-msg"
														class="msg ml10 red msg-hide">&nbsp;</span>
												</p>
											</li>
											<li>
												<p class="add-address-tit fl">
													<span class="red">*</span>手机号码：
												</p>
												<p class="add-address-con fl">
													<input type="text" maxlength="11" id="phone" name="phone"
														class="form"> <span id="phone-msg"
														class="msg ml10 red msg-hide">&nbsp;</span>
												</p>
											</li>
											<li>
												<p class="add-address-tit fl">电话号码：</p>
												<p class="add-address-con fl">
													<input type="text" placeholder="区号" id="tel-district"
														name="telephone_district" class="form wid60">&nbsp;-&nbsp;<input
														type="text" placeholder="电话号码" id="tel" name="telephone"
														class="form wid100">&nbsp;-&nbsp;<input
														type="text" placeholder="分机" id="tel-ext"
														name="telephone_ext" class="form wid60"> <span
														id="tel-msg" class="msg ml10 red msg-hide">&nbsp;</span>
												</p>
											</li>
											<input type="hidden" value="812247e605f2f9bdfae2da76f4b5ea41"
												id="token" name="token" class="form wid60">
											<li class="button-wrap">
												<p class="add-address-tit fl">&nbsp;</p>
												<p class="add-address-con fl">
													<a id="J-save-address" class="btn-m btn-pink mr10"
														href="javascript:;">保存</a> <a id="J-cancel-add-address"
														class="btn-m btn-gray" href="javascript:;">取消</a>
												</p>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div id="panel-password" class="n-tab-panel" avalonctrl="setting">
								<ul class="password-list">
									<li class="row">
										<div class="row-aside">
											<span class="setting success" style="display: none;"><i
												class="fa fa-check-square"></i>已设置</span> <span
												class="setting disabled" style="display: inline-block;"><i
												class="fa fa-check-square"></i>未设置</span> <a
												href="/uc/user/userinfo?type=password" class="option link">立即设置</a>
										</div>
										<div>
											<label class="title">支付密码：</label>保护资产安全，在资产变动时使用
										</div>
									</li>
									<li class="row" style="display: none;">
										<div class="row-aside">
											<span class="setting warning"> <i class="iconfont"></i>≤<span>0</span>
											</span> <span class="option link">修改</span>
										</div>
										<div>
											<label class="title">小额免密码：</label>使用资产不超过以下金额时，无需输入密码
										</div>
									</li>
									<li class="row" style="display: none;">
										<div class="row-aside">
											<span class="setting disabled" style="display: none;"><i
												class="iconfont"></i>未开启</span> <span class="setting success"
												style="display: inline-block;"><i class="iconfont"></i>已开启</span>
											<span id="tel-modify" class="option link">关闭</span>
										</div>
										<div>
											<label class="title">大额短信提醒：</label>使用资产超过100元，我们会向您绑定的手机发送提醒短信
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>



	<script type="text/javascript"
		src="${ctx }/static/project/bdms/js/bdmsUser/bdmsUserInfo.js"></script>
	<%@include file="/WEB-INF/jsp/project/bdms/page/footer.jsp"%>
</body>
</html>



