<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/jsp/project/base/page/header.jsp"%>

<link rel="stylesheet" type="text/css"
	href="${ctx }/static/slick/style/slick-theme.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx }/static/slick/style/slick.css" />
<script type="text/javascript"
	src="${ctx }/static/slick/js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript"
	src="${ctx }/static/slick/js/slick.min.js"></script>
<script type="text/javascript"
	src="${ctx }/static/slick/js/jquery.easing.1.3.js"></script>
</head>

<style>
.slick-list {
	margin-right: -20px
}
</style>


<body>

	<div class="your-class" style="height: 100%; width: 100%; margin: -8px">
		<div>
			<img alt="" src="${ctx }/static/base/image/1.jpg"
				style="height: 100%; width: 100%" />
		</div>
		<div>
			<img alt="" src="${ctx }/static/base/image/2.jpg"
				style="height: 100%; width: 100%" />
		</div>
		<div>
			<img alt="" src="${ctx }/static/base/image/3.jpg"
				style="height: 100%; width: 100%" />
		</div>
	</div>


	<%@include file="/WEB-INF/jsp/project/base/page/footer.jsp"%>
</body>

<!-- 参考http://www.dowebok.com/84.html -->
<script type="text/javascript">
	$('.your-class').slick({
		autoplay : false,
		autoplaySpeed : 3000,
		draggable : true,
		arrows : false,
		dots : true,
		fade : true,
		speed : 900,
		infinite : true,
		easing : 'easeInOutQuint',
		touchThreshold : 100
	});
</script>
</html>