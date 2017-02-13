<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="renderer" content="webkit" />


<!-- 引入项目公共的js，css，标签库等 -->

<!-- JSTL -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!-- kendo标签 库-->
<!-- 方法：官网下载kendo的jsp ui，找到jar包：kendo-taglib-2016.2.607.jar，将其引入maven的3rd party库，见“网站开发详解.docx”中搜索“3rd party”，
在pom.xml中引入jar包后，引入下面的标签即可使用。 -->
<%-- <%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%> --%>

<!-- 获取项目的域名路径，如https://10.123.22.1:567，或者https://abc.com，用处是，当我们写路径的时候加上这一段，就是绝对请求路径了，不是相对路径。 -->
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!-- spring多语言标签库 -->
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- 加载公用多语言标签 -->
<%@include file="/WEB-INF/jsp/project/base/i18n.jsp"%>

<!-- jquery -->
<script type="text/javascript"
	src="${ctx }/static/jquery/js/jquery.1.9.1.min.js"></script>
<script type="text/javascript"
	src="${ctx }/static/jquery/js/jquery.cookie.js"></script>
<script type="text/javascript"
	src="${ctx }/static/jquery/js/jquery.tmpl.js"></script>
<script type="text/javascript"
	src="${ctx }/static/jquery/js/jquery.base64.js"></script>
<script type="text/javascript"
	src="${ctx }/static/jquery/js/jquery.lazyload.min.js"></script>
<script type="text/javascript"
	src="${ctx }/static/jquery/js/jquery.scrollstop.min.js"></script>
<script type="text/javascript"
	src="${ctx }/static/jquery/js/jquery.sticky.js"></script>
<script type="text/javascript"
	src="${ctx }/static/jquery/js/jquery.nav.js"></script>
<script type="text/javascript"
	src="${ctx }/static/jquery/js/jquery.sticky-kit.min.js"></script>
<script type="text/javascript"
	src="${ctx }/static/jquery/js/jquery.color.js"></script>
<script type="text/javascript"
	src="${ctx }/static/jquery/js/jquery.Jcrop.min.js"></script>
<link rel="stylesheet"
	href="${ctx }/static/jquery/style/jquery.Jcrop.min.css" />


<!-- kendo -->
<script type="text/javascript"
	src="${ctx }/static/kendo/js/kendo.all.min.js"></script>
<!-- 因为我们的后台多语言是zh_CN这种形式的，但是kendo给的日期控件的多语言是zh-CN的形式，因为zh-CN后台不识别（"-"为非法命名字符），
所以只能修改webapp/kendo/cultures中的文件名，所以每次更新kendo的多语言文件或者添加多一种语言都要对kendo的多语言文件做相应的名字更新，
注意还要对应修改文件内部的两个定义名 -->
<script type="text/javascript"
	src="${ctx }/static/kendo/js/cultures/kendo.culture.${bgConfig.defaultLocale }.min.js"></script>
<link rel="stylesheet"
	href="${ctx }/static/kendo/style/kendo.common.min.css" />
<link rel="stylesheet"
	href="${ctx }/static/kendo/style/kendo.default.min.css" />
<link rel="stylesheet"
	href="${ctx }/static/kendo/style/kendo.common-${fgConfig.defaultTheme }.min.css" />
<link rel="stylesheet"
	href="${ctx }/static/kendo/style/kendo.${fgConfig.defaultTheme }.min.css" />
<link rel="stylesheet"
	href="${ctx }/static/kendo/style/kendo.${fgConfig.defaultTheme }.mobile.min.css" />

<!-- 按钮样式 -->
<link rel="stylesheet"
	href="${ctx }/static/buttons/css/buttons-${fgConfig.defaultTheme }.css" />
<link rel="stylesheet"
	href="${ctx }/static/fontAwesome/css/font-awesome.min.css" />

<!-- 公共工具js -->
<script type="text/javascript"
	src="${ctx }/static/project/base/js/base/baseUtil.js"></script>
<script type="text/javascript"
	src="${ctx }/static/project/base/js/base/baseCode.js"></script>
<script type="text/javascript"
	src="${ctx }/static/project/base/js/base/baseWidget.js"></script>
<script type="text/javascript"
	src="${ctx }/static/project/base/js/base/baseConstant.js"></script>
<script type="text/javascript"
	src="${ctx }/static/project/base/js/base/baseDateUtil.js"></script>
<script type="text/javascript"
	src="${ctx }/static/project/base/js/base/baseValidMethod.js"></script>

<!-- 加密 -->
<script type="text/javascript"
	src="${ctx }/static/jquery/js/jquery.jcryption-1.1.js"></script>

<!-- animo.js动画插件 -->
<script type="text/javascript" src="${ctx }/static/animo/js/animo.js"></script>
<link rel="stylesheet"
	href="${ctx }/static/animo/style/animate-animo.css" />
<link rel="stylesheet" href="${ctx }/static/animo/style/animate.css" />

<!-- UI调整js。kendo ui中，每个样式的界面都会有轻微的变形，需要js中进行调整。 -->
<script type="text/javascript"
	src="${ctx }/static/project/base/js/kendoUI/fixUI-${fgConfig.defaultTheme }.js"></script>

<script type="text/javascript">
	//方便外部引用的js文件使用ctx变量，因为引用的js文件无法使用EL表达式
	window.ctx = "${ctx}";
	window.target = "${target}";
	window.smallTarget = "${smallTarget}";
	window.wsName = "${wsName}";
	window.templatePropertiesCrudItems = "${templatePropertiesCrudItems}";
	window.templatePropertiesStatisticsItems = "${templatePropertiesStatisticsItems}";
	window.templatePropertiesInportItems = "${templatePropertiesInportItems}";
	window.templatePropertiesExportItems = "${templatePropertiesExportItems}";
	window.loginToken_user = "${BASE_SESSION_ATTRIBUTES.loginToken_user_hex}";
	window.screenHeight = $(window).height();
	window.heartBeatSeconds = "${fgConfig.heartBeatSeconds }";
	window.mobileVCodeRetryTime = "${fgConfig.mobileVCodeRetryTime }";
	//验证码过期时间（从验证码出现到用户完成验证的时间）
	window.verifyCodeExpireTime = "${bgConfig.verifyCodeExpireTime }";
	//判断用户账户登录校验码是否通过
	window.loginVerifyCodeValid = "${BASE_SESSION_ATTRIBUTES.BASE_LOGIN_VERIFY_CODE_VALID}";
	//只有session中有用户信息并且同时验证码通过，并且用户状态是0，才认为用户已经登录成功。
	if (loginToken_user && "Y" == loginVerifyCodeValid) {
		loginToken_user = baseUtil
				.jsonDehex('${BASE_SESSION_ATTRIBUTES.loginToken_user_hex}');
		if ("0" != loginToken_user.userStatus) {
			loginToken_user = "";
		}
	} else {
		loginToken_user = "";
	}

	/**
	 * 密码修改规则
	 */
	//密码最小长度，整数类型，填写0表示不限制长度。
	window.passwordMinLength = "${bgConfig.passwordMinLength}" * 1;
	//密码最少字母个数，整数类型，填写0表示不限制个数。
	window.passwordMinAlphaCharLength = "${bgConfig.passwordMinAlphaCharLength}" * 1;
	//密码最少数字个数，整数类型，填写0表示不限制个数。
	window.passwordMinMunberCharLength = "${bgConfig.passwordMinMunberCharLength}" * 1;
	//密码最少特殊字符个数，整数类型，填写0表示不限制个数。
	window.passwordMinSpacialCharLength = "${bgConfig.passwordMinSpacialCharLength}" * 1;
	//密码必须包括大小写，Y：是，N：否。
	window.passwordConstantBigAndSmall = "${bgConfig.passwordConstantBigAndSmall}";

	//密码过期时间。	
	window.passwordExpireRemind = "${BASE_SESSION_ATTRIBUTES.passwordExpireRemind}";

	/**
	 * 获取鼠标移动到的最直接的元素的id，作用是比如kendo tool
	 * tips，如果按照tips的显示框的div元素判断当前tips作用于哪个Input元素上，是比较混乱的，那么现在我们自己来判断
	 * 鼠标移动到哪个元素中，从而获取id来操控tips的div，这样比较精准。
	 */
	window.TARGETID;
	document.onmousemove = function(evt) {
		TARGETID = baseUtil.getTargetByEvent(evt).id;
	};

	/**
	 * $.cookie(key,value,params)的第三个参数
	 */
	window.cookieParams = {
		expires : "${fgConfig.cookieDefultExpires}" * 1,
		path : ctx + "/"
	};
	/**
	* 如果系统当前没有多语言设置在cookie中，给个默认值，否则后台获取cookie中的lang处理其他事情时会报错。
	*/
	if (!$.cookie("lang")) {
		$.cookie("lang", "${bgConfig.defaultLocale }");
	}
	/**
	 * 默认的，Jquery.cookie插件读取内容的时候都会经过encodeURIComponent/decodeURIComponent编码，
	 * 如果忽略这一点，要进行如下设置
	 */
	$.cookie.raw = true;
	$.cookie.defaults = {
		expires : "${fgConfig.cookieDefultExpires}" * 1
	};

	/**
	* 图片懒加载
	*/
	$(function() {
		$("img").lazyload({
			threshold : 200,
			effect : "fadeIn",
			failure_limit : 10,
			skip_invisible : false
		});
	});
//-->
</script>

<!-- 加载信息警告提醒框，现有错误，成功，信息 三种提示div，他们都自动初始化并放到全局变量中，分别在baseUtil.alertE()，
baseUtil.alertS()， baseUtil.alertI()三个方法中进行调用-->
<%@include file="/WEB-INF/jsp/project/base/component/notification.jsp"%>
<!-- slick轮播器插件 -->
<%@include file="/WEB-INF/jsp/project/base/component/slick.jsp"%>



