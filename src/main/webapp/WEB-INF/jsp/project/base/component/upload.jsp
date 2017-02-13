<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 异步多文件上传控件 -->
<script type="text/template" id="uploadTemplate">
<div id="uploadDiv{{= id }}" class="uploadDiv" uploadDivId="{{= id }}">
<input name="files" id="files{{= id }}" type="file" />
</div>
</script>

<script type="text/javascript"
	src="${ctx }/static/project/base/js/component/upload.js"></script>

