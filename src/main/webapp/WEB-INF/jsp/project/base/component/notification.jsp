<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 弹出提醒控件 -->
<span id="error_notification" style="display: none;"></span>
<span id="success_notification" style="display: none;"></span>
<span id="info_notification" style="display: none;"></span>
<span id="warm_notification" style="display: none;"></span>
<script id="errorTemplate" type="text/x-kendo-template">
<div class="Message Message--red">
	<div class="Message-icon">
		<i class="fa fa-times"></i>
	</div>
	<div class="Message-body">
		<span class='base-title'>#= title #</span>
		<span class='base-msg'>#= message #</span>
	</div>
	<button title="<spring:message code='N.keepShow'/>" class="Message-close js-messageClosePin">
		<i class="fa fa-thumb-tack"></i>
	</button>
	<button title='<spring:message code='N.closeAll'/>' class="Message-close js-messageCloseAll base-noti-error">
		<span class="fa-stack">
			<i class="fa fa-copy fa-stack-2x"></i>
			<i class="fa fa-times fa-stack-1x"></i>
		</span>
	</button>
	<button title='<spring:message code='N.close'/>' class="Message-close js-messageClose">
		<i class="fa fa-times"></i>
	</button>
</div>
</script>

<script id="infoTemplate" type="text/x-kendo-template">
<div class="Message">
	<div class="Message-icon Message--blue">
		<i class="fa fa-bell-o"></i>
	</div>
	<div class="Message-body">
		<span class='base-title'>#= title #</span>
		<span class='base-msg'>#= message #</span>
	</div>
	<button title="<spring:message code='N.keepShow'/>" class="Message-close js-messageClosePin">
		<i class="fa fa-thumb-tack"></i>
	</button>
	<button title='<spring:message code='N.closeAll'/>' class="Message-close js-messageCloseAll base-noti-info">
		<span class="fa-stack">
			<i class="fa fa-copy fa-stack-2x"></i>
			<i class="fa fa-times fa-stack-1x"></i>
		</span>
	</button>
	<button title='<spring:message code='N.close'/>' class="Message-close js-messageClose">
		<i class="fa fa-times"></i>
	</button>
</div>
</script>

<script id="successTemplate" type="text/x-kendo-template">
<div class="Message Message--green">
	<div class="Message-icon">
		<i class="fa fa-check"></i>
	</div>
	<div class="Message-body">
		<span class='base-title'>#= title #</span>
		<span class='base-msg'>#= message #</span>
	</div>
	<button title="<spring:message code='N.keepShow'/>" class="Message-close js-messageClosePin">
		<i class="fa fa-thumb-tack"></i>
	</button>
	<button title='<spring:message code='N.closeAll'/>' class="Message-close js-messageCloseAll base-noti-success">
		<span class="fa-stack">
			<i class="fa fa-copy fa-stack-2x"></i>
			<i class="fa fa-times fa-stack-1x"></i>
		</span>
	</button>
	<button title='<spring:message code='N.close'/>' class="Message-close js-messageClose">
		<i class="fa fa-times"></i>
	</button>
</div>
</script>

<script id="warmTemplate" type="text/x-kendo-template">
<div class="Message Message--orange">
	<div class="Message-icon">
		<i class="fa fa-exclamation"></i>
	</div>
	<div class="Message-body">
		<span class='base-title'>#= title #</span>
		<span class='base-msg'>#= message #</span>
	</div>
	<button title="<spring:message code='N.keepShow'/>" class="Message-close js-messageClosePin">
		<i class="fa fa-thumb-tack"></i>
	</button>
	<button title='<spring:message code='N.closeAll'/>' class="Message-close js-messageCloseAll base-noti-warm">
		<span class="fa-stack">
			<i class="fa fa-copy fa-stack-2x"></i>
			<i class="fa fa-times fa-stack-1x"></i>
		</span>
	</button>
	<button title='<spring:message code='N.close'/>' class="Message-close js-messageClose">
		<i class="fa fa-times"></i>
	</button>
</div>
</script>


<script type="text/javascript"
	src="${ctx }/static/project/base/js/component/notification.js"></script>