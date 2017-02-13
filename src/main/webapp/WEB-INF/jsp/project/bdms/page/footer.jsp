<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="${ctx }/static/project/bdms/style/css/${fgConfig.defaultTheme }/page/footer.css"></link>

<div id="bdms_fadeIn_footer_area" class="bdms-fadeIn">
	<div class="footer-content">
		<div class="footer" id="footer">
			<div class="footer-inner clearfix flexible">
				<div class="footer-size">
					<h3>用户帮助</h3>
					<ul>
						<li><a href="//www.nuomi.com/help">常见团购问题</a></li>
						<li><a href="//www.nuomi.com/help/api">开放API</a></li>
					</ul>
				</div>
				<div class="footer-size-2">
					<h3>手机百度助手</h3>
					<ul>
						<li><a target="_blank" href="https://m.nuomi.com">百度糯米触屏版</a></li>
						<li><a target="_blank"
							href="//d.nuomi.com/inter/group?from=WebRootWord">下载手机版</a></li>
					</ul>
				</div>
				<div class="footer-size-2">
					<h3>商务合作</h3>
					<ul>
						<li><a href="//www.nuomi.com/links">友情链接</a></li>
						<li><a href="http://cooperation.nuomi.com/clue/index">市场合作</a></li>
					</ul>
				</div>
				<div class="footer-size-2">
					<h3>公司信息</h3>
					<ul>
						<li><a href="//www.nuomi.com/about">关于百度糯米</a></li>
						<li><a target="_blank" href="http://weibo.com/nuomiwang">百度糯米新浪微博</a></li>
						<li><a id="j-tttel" href="javascript:;">违规投诉&amp;廉政举报</a></li>
					</ul>
				</div>
				<div class="footer-size-3">
					<h3>4006-888-887</h3>
					<ul>
						<li>周一至周日&nbsp;9:00-22:00</li>
						<li>客服电话&nbsp;免长途费</li>
					</ul>
					<a class="mobile-btn"
						href="//d.nuomi.com/inter/group?from=WebRootWord">手机专享优惠</a>
				</div>
			</div>
		</div>
		<div id="copyright-info">
			<div class="site-info">
				<span class="copyright">&copy;</span>2016&nbsp;nuomi.com &nbsp;<a
					target="_blank" class="link" href="http://www.miitbeian.gov.cn">京ICP证030173号</a>
				&nbsp;京公网安备11010802014106号 &nbsp;<a
					href="/pcindex/main/about/openinfo">营业执照信息</a>
			</div>
			<div class="icons">
				<span class="ico-qianbao">百度钱包</span> <span class="ico-zhifubao">支付宝-特约商家</span>
				<span class="ico-kexin">可信网站 身份验证</span> <span class="ico-web-trust">网站认证
					Web Trust</span>
			</div>
		</div>
		<div style="width: 300px; margin: 0 auto; padding: 20px 0;">
			<a
				style="display: inline-block; text-decoration: none; height: 20px; line-height: 20px;"
				href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11000002000001"
				target="_blank"><img style="float: left;"
				src="//gss0.bdstatic.com/8r1VfDn9KggZnd_b8IqT0jB-xx1xbK/static/common/widget/footer/imgs/police_logo_2aa5dfa.png">
				<p
					style="float: left; height: 20px; line-height: 20px; margin: 0px 0px 0px 5px; color: #939393;">京公网安备
					11000002000001号</p></a>
		</div>
	</div>
</div>


<!-- 本来是放在reference.jsp中的，但是后来发现如果放在那里，它只能读到i18n.jsp中的标签，
读不到每个模块个性的下拉选项标签，因为模块自定义标签写在“模块CRUD.jsp”中的，所以必须将
这个js文件放在底部才能读取到，如果将模块自定义的标签都放在i18n.jsp中，那对于其他模块来说，
就出现了很多多余的多语言标签，所以只能将这个js文件放到最后读取。 -->
<script type="text/javascript"
	src="${ctx }/static/project/base/js/base/baseSelectItems.js"></script>
<script type="text/javascript"
	src="${ctx }/static/project/bdms/js/page/footer.js"></script>
