<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/jsp/project/base/page/header.jsp"%>
<link rel="stylesheet" href="${ctx }/static/base/styles/homePage.css"></link>

</head>
<body>

	<!-- 小类目 -->
	<%@include file="/WEB-INF/jsp/project/base/component/smallCategory.jsp"%>
	<div class="base-reserve-max-width">
		<div id="homePagesmallCategoryDiv"
			class="homaPage-smallCategory-positon"></div>
	</div>

	<!-- 可拖动排序的图片列表 -->
	<%-- <%@include file="/WEB-INF/jsp/project/base/component/sortableImageListView.jsp"%>
<div id="example">
	<div id="listView"></div>
	<div id="pager" class="k-pager-wrap"></div>
</div> --%>

	<!-- 上传控件 -->
	<%-- <%@include file="/WEB-INF/jsp/project/base/component/upload.jsp"%>
<div id="homePageUploadDiv" class="base-reserve-max-width"></div> --%>

	<%@include file="/WEB-INF/jsp/project/base/page/footer.jsp"%>
	<script type="text/javascript" src="${ctx }/static/base/js/homePage.js"></script>
</body>
</html>