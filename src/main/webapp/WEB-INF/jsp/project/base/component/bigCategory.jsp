<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 大类目，一横过的类目，需要点击进行切换 -->
<script type="text/template" id="bigCategoryTemplate">
<div class="k-content">
	<ul id="{{= id }}">
		{{each(i,item) items}}
        	<li>{{= item }}</li>
    	{{/each}}
	</ul>
</div>
<style>
.km-widget.km-buttongroup {
	margin: 0 {{= position }};
}
</style>
</script>

<script>
	$(function() {
		window.base.bigCategory = {
			init : function(id) {
				$("#" + id).kendoMobileButtonGroup();
				var bigCategory = $("#" + id).data("kendoMobileButtonGroup");
				return bigCategory;
			}
		};
	});
</script>