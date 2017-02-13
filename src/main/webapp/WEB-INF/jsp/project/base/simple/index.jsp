<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/jsp/project/base/page/header.jsp"%>
<style>
#fieldlist {
	margin: 0 0 -2em;
	padding: 0;
}

#fieldlist li {
	list-style: none;
	padding-bottom: 2em;
}

#fieldlist label {
	display: block;
	padding-bottom: 1em;
	font-weight: bold;
	text-transform: uppercase;
	font-size: 12px;
	color: #444;
}

#fieldlist input {
	width: 100%;
}
</style>
</head>
<body>

	<spring:message code="N.ok" />
	<button type="button" id="china" onclick="baseUtil.changeLang('zh_CN')">中文简体</button>
	<button type="button" id="taiwan"
		onclick="baseUtil.changeLang('zh_TW')">中文繁體</button>
	<button type="button" id="english"
		onclick="baseUtil.changeLang('en_US')">英语</button>
	<a href="${ctx }/background">系统后台</a>
	<form action="${ctx }/baseUser/user/userAdd" method="post">
		<input type="hidden" name="p_o_lastModifyDate" value="2012-02-02">
		<input type="hidden" name="p_o_userAge" value="18"> <input
			type="hidden" name="p_o_textByte" value="33"> <input
			type="hidden" name="p_o_textShort" value="345"> <input
			type="hidden" name="p_o_textFloat" value="34.2"> <input
			type="hidden" name="p_o_textDouble" value="32434343333.323">
		<input type="hidden" name="p_o_textChar" value="a4"> <input
			type="hidden" name="p_o_textBoolean" value="true"> <input
			type="hidden" name="p_o_textLong" value="233344444">
		<div>
			<ul id="fieldlist">
				<li><label for="m_o_User_userId_user3">User ID:</label> <input
					type="text" id="m_o_User_userId_user3" name="m_o_User_userId_user3"
					value="3" /></li>
				<li><label for="m_o_User_userName_user3">User Name:</label> <input
					type="text" id="m_o_User_userName_user3"
					name="m_o_User_userName_user3" value="chentb" /></li>
				<li><label for="m_o_User_userPassword_user3">Password:</label>
					<input type="password" id="m_o_User_userPassword_user3"
					name="m_o_User_userPassword_user3" value="chentb123" /></li>
				<li><label for="p_l_interesting1">Interesting:</label> <input
					type="text" id="p_l_interesting1" name="p_l_interesting"
					value="basketball" /> <input type="text" id="p_l_interesting2"
					name="p_l_interesting" value="football" /></li>
				<li><label for="j_m_o_User_user1">User1 JSON:</label> <textArea
						id="j_m_o_User_user1" name="j_m_o_User_user1">{"userId":1,"userName":"ctb","userPassword":"111"}</textArea>
				</li>
				<li><label for="j_m_o_User_user2">User2 JSON:</label> <textArea
						id="j_m_o_User_user2" name="j_m_o_User_user2">{"userId":2,"userName":"dison","userPassword":"222"}</textArea>
				</li>
				<li><label for="j_m_l_User_userList1">User1 List JSON:</label>
					<textArea id="j_m_l_User_userList1" name="j_m_l_User_userList1">[{"userId":14,"userName":"ttt","userPassword":"123"},{"userId":4,"userName":"nnn","userPassword":"123"}]</textArea>
				</li>
				<li><label for="j_m_l_User_userList2">User2 List JSON:</label>
					<textArea id="j_m_l_User_userList2" name="j_m_l_User_userList2">[{"userId":15,"userName":"ddd","userPassword":"123"},{"userId":16,"userName":"eee","userPassword":"123"}]</textArea>
				</li>
				<li><label for="j_m_m_User_userMap1">User1 Map JSON:</label> <textArea
						id="j_m_m_User_userMap1" name="j_m_m_User_userMap1">{"14":{"userId":14,"userName":"ttt","userPassword":"123"},"4":{"userId":4,"userName":"nnn","userPassword":"123"}}</textArea>
				</li>
				<li><label for="j_m_m_User_userMap2">User2 Map JSON:</label> <textArea
						id="j_m_m_User_userMap2" name="j_m_m_User_userMap2">{"14":{"userId":14,"userName":"ttt","userPassword":"123"},"4":{"userId":4,"userName":"nnn","userPassword":"123"}}</textArea>
				</li>
				<li><label for="j_map_uuid">Map JSON:</label> <textArea
						id="j_map_uuid" name="j_map_uuid">{"aaa":"AAA","bbb":"BBB"}</textArea>
				</li>
				<li><label for="j_list_uuid">List JSON:</label> <textArea
						id="j_list_uuid" name="j_list_uuid">["12","23","33"]</textArea></li>
				<li>
					<button type="submit" id="submit1">submit</button>
				</li>
			</ul>
		</div>

	</form>

	<script>
		$(document).ready(function() {

			$("#m_o_User_userId_user3").kendoMaskedTextBox({});
			$("#m_o_User_userName_user3").kendoMaskedTextBox({});
			$("#m_o_User_userPassword_user3").kendoMaskedTextBox({});
			$("#p_l_interesting1").kendoMaskedTextBox({});
			$("#p_l_interesting2").kendoMaskedTextBox({});
			$("#j_m_o_User_user1").kendoMaskedTextBox({});
			$("#j_m_o_User_user2").kendoMaskedTextBox({});
			$("#j_m_l_User_userList1").kendoMaskedTextBox({});
			$("#j_m_l_User_userList2").kendoMaskedTextBox({});
			$("#j_m_m_User_userMap1").kendoMaskedTextBox({});
			$("#j_m_m_User_userMap2").kendoMaskedTextBox({});
			$("#j_map_uuid").kendoMaskedTextBox({});
			$("#j_list_uuid").kendoMaskedTextBox({});

			$("#submit1").kendoButton();
			$("#china").kendoButton();
			$("#taiwan").kendoButton();
			$("#english").kendoButton();
		});
	</script>

</body>
</html>