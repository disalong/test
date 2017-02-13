<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet"
	href="${ctx }/static/project/base/style/css/${fgConfig.defaultTheme }/page/footer.css"></link>

<!-- 本来是放在reference.jsp中的，但是后来发现如果放在那里，它只能读到i18n.jsp中的标签，
读不到每个模块个性的下拉选项标签，因为模块自定义标签写在“模块CRUD.jsp”中的，所以必须将
这个js文件放在底部才能读取到，如果将模块自定义的标签都放在i18n.jsp中，那对于其他模块来说，
就出现了很多多余的多语言标签，所以只能将这个js文件放到最后读取。 -->
<script type="text/javascript"
	src="${ctx }/static/project/base/js/base/baseSelectItems.js"></script>

<div class="base-fadeIn base-footer-context">
	<div id="footer">
		<div class="quick-links">
			<a class="footer-links"
				href="http://www.telerik.com/company/terms-of-use">我们的团队</a> <a
				class="footer-links"
				href="http://www.telerik.com/company/product-improvement-program">产品介绍</a>
			<a class="footer-links" href="http://www.telerik.com/company/offices">联系我们：${bgConfig.supportPhone }</a>
		</div>
		<div class="copyright">
			<p>${bgConfig.copyRight }</p>
		</div>
	</div>
</div>
<script type="text/javascript"
	src="${ctx }/static/project/base/js/page/footer.js"></script>