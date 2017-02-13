<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet"
	href="${ctx }/static/project/base/style/css/${fgConfig.defaultTheme }/component/grid.css"></link>

<input type="hidden" id="targetFieldsJSON" value="${targetFieldsJSON }" />
<input type="hidden" id="targetFieldPropertiesJSON"
	value="${targetFieldPropertiesJSON }" />
<input type="hidden" id="recoverGridJSON"
	value="${BASE_SESSION_ATTRIBUTES.recoverGridJSON}" />
<input type="hidden" id="fgConfig.pageButtonCount"
	value="${fgConfig.pageButtonCount}" />
<input type="hidden" id="fgConfig.page" value="${fgConfig.page}" />
<input type="hidden" id="fgConfig.pageSize" value="${fgConfig.pageSize}" />
<input type="hidden" id="fgConfig.gridHeight"
	value="${fgConfig.gridHeight}" />
<input type="hidden" id="fgConfig.defaultTheme"
	value="${fgConfig.defaultTheme}" />
<input type="hidden" id="bgConfig.defaultLocale"
	value="${bgConfig.defaultLocale}" />



<!-- 上传控件 -->
<%@include file="/WEB-INF/jsp/project/base/component/upload.jsp"%>

<!-- 弹出编辑窗口 -->
<%@include file="/WEB-INF/jsp/project/base/component/editWin.jsp"%>

<!-- 表格 -->
<script type="text/javascript"
	src="${ctx }/static/project/base/js/component/grid.js"></script>



