<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 编辑弹出框 -->
<script type="text/template" id="editWinTemplate">
<div class="k-edit-form-container" style="width:{{= width }}px">
	<form method="{{= method }}" action="{{= action }}">
		<div class="k-grid-content k-auto-scrollable base-edit-win-content" ></div>
	</form>
	<div class="k-edit-buttons k-state-default base-edit-win-toolbar-background" >
		<div class="k-button k-button-icontext k-primary base-grid-edit-update" href="#">
			<div class='text'>{{= submitTitle }}</div>
		</div>
		<div class="k-button k-button-icontext base-grid-edit-cancel" href="#">
			<div class='text'>{{= cancelTitle }}</div>
		</div>
	</div>
</div>
</script>

<script type="text/javascript"
	src="${ctx }/static/project/base/js/component/editWin.js"></script>