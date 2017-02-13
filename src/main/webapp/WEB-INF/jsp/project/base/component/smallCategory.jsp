<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 小类目，树桩类目，两层 -->
<script type="text/template" id="smallCategoryTemplate">
<div class="k-content">
	<ul id="{{= id }}">
		{{each(i,li) lis}}
			<li>{{html li.smallCategoryKey }}
				<ul>
					{{each(i,l) li.smallCategoryValue}}
						<li>{{html l }}</li>
					{{/each}}
				</ul>
			</li>
		{{/each}}
	</ul>
</div>
</script>

<script>
	$(function() {
		window.base.smallCategory = {
			/**
			 *作用：显示小类目
			 *id:实际上是上面smallCategoryTemplate的id值，即插入页面html节点的小类目的div的id值，
			 *约定为"jsp名+smallCategory"。
			 *divId:将小类目插入到那个html节点中，它实际上是baseUtil.template的第三个参数，一般传入一个div的id，约定为"jsp名+smallCategoryDiv"
			 *data:约定json形式：
			 *[{
			 *	"smallCategoryKey" : "婚纱摄影",
			 *	"smallCategoryValue" : [ "婚纱摄影", "旅行婚纱", "儿童摄影", "全家福" ]
			 *·}]
			 *同时，data的smallCategoryKey可以是html，比如<a href='http://www.baidu.com'>烧烤</a>，
			 *data的smallCategoryValue可以是html，比如<div style='width:300px; height:300px'><a href='http://www.baidu.com'>火锅烧烤</a></div>
			 *这些html效果会显示在类目中。
			 *页面初始化时，会读取默认的${smallCategoryData}进行页面展示，后面可以动态传入data调用。
			 *初始数据名约定为"插件页面名+Data"。
			 */
			begin : function(id, divId, data) {
				if (!data) {
					data = baseUtil.json('${smallCategoryData}');
				}
				var smallCategoryData = {
					id : id,
					lis : data
				};
				baseUtil.template("smallCategoryTemplate", smallCategoryData,
						"#" + divId);
				return base.smallCategory.init(id);
			},
			/**
			 *作用：调用kendo的kendoMenu
			 *id:实际上是上面smallCategoryTemplate的id值，即插入页面html节点的小类目的div的id值，
			 *和begin()方法的id是一致的，约定为"jsp名+smallCategory"
			 */
			init : function(id) {
				$("#" + id).kendoMenu({
					orientation : "vertical"
				});
				var smallCategory = $("#" + id).data("kendoMenu");
				return smallCategory;
			}
		};

	});
</script>