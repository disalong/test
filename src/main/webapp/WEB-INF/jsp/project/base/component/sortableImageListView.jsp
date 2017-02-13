<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 可拖动排序的图片列表 -->
<script type="text/x-kendo-template" id="template">
   <div class="product">
        <img src="/base/baseUpload/uploadRead/download?p_o_uploadId=97835f1bdd8441a484d91e8a889b26a12947987360051" alt="#: ProductName # image" />
        <h3>#:ProductName#</h3>
        <p>#:kendo.toString(UnitPrice, "c")#</p>
	</div>
</script>

<style>
#listView {
	padding: 10px 5px;
	margin-bottom: -1px;
	min-height: 400px;
	max-width: 940px;
	margin: 0 auto
}

.product {
	float: left;
	position: relative;
	width: 111px;
	height: 170px;
	margin: 0 5px;
	padding: 0;
	cursor: move;
}

.product img {
	width: 110px;
	height: 110px;
}

.product h3 {
	margin: 0;
	padding: 3px 5px 0 0;
	max-width: 96px;
	overflow: hidden;
	line-height: 1.1em;
	font-size: .9em;
	font-weight: normal;
	text-transform: uppercase;
}

.product p {
	visibility: hidden;
}

#pager {
	width: 950px;
	margin: 0 auto;
}

#listView .product:hover p {
	visibility: visible;
	position: absolute;
	width: 110px;
	height: 110px;
	top: 0;
	margin: 0;
	padding: 0;
	line-height: 110px;
	vertical-align: middle;
	text-align: center;
	color: #fff;
	background-color: rgba(0, 0, 0, 0.75);
	transition: background .2s linear, color .2s linear;
	-moz-transition: background .2s linear, color .2s linear;
	-webkit-transition: background .2s linear, color .2s linear;
	-o-transition: background .2s linear, color .2s linear;
}

.k-listview:after {
	content: ".";
	display: block;
	height: 0;
	clear: both;
	visibility: hidden;
}


.k-icon {
	margin-top: 7px
}

#example {
	font-size: 14px
}
</style>

<script>
	$(function() {
		window.base.sortableImageListView = {
			init : function(id) {
				$("#" + id).kendoMobileButtonGroup();
				var bigCategory = $("#" + id).data("kendoMobileButtonGroup");
				return bigCategory;
			}
		};
	});
</script>