<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/jsp/project/base/page/header.jsp"%>
<link rel="stylesheet"
	href="${ctx }/static/project/base/style/css/${fgConfig.defaultTheme }/baseCodeGenerator/templatePropertiesCRUD.css"></link>
<title>Small Category</title>
</head>
<body>

	<input type="hidden" id="B.TemplateProperties"
		value='<spring:message code="B.TemplateProperties"/>' />

	<input type="hidden" id="B.TemplateProperties.fieldName"
		value='<spring:message code="B.TemplateProperties.fieldName"/>' />
	<input type="hidden" id="B.TemplateProperties.fieldComment"
		value='<spring:message code="B.TemplateProperties.fieldComment"/>' />
	<input type="hidden"
		id="B.TemplateProperties.templatePropertiesTargetFieldProperties"
		value='<spring:message code="B.TemplateProperties.templatePropertiesTargetFieldProperties"/>' />
	<input type="hidden" id="B.TemplateProperties.editFields"
		value='<spring:message code="B.TemplateProperties.editFields"/>' />
	<input type="hidden" id="B.TemplateProperties.editFieldProperties"
		value='<spring:message code="B.TemplateProperties.editFieldProperties"/>' />
	<input type="hidden" id="B.TemplateProperties.editI18n"
		value='<spring:message code="B.TemplateProperties.editI18n"/>' />
	<input type="hidden" id="B.TemplateProperties.fieldLabel"
		value='<spring:message code="B.TemplateProperties.fieldLabel"/>' />
	<input type="hidden" id="B.TemplateProperties.validationMessage"
		value='<spring:message code="B.TemplateProperties.validationMessage"/>' />
	<input type="hidden" id="B.TemplateProperties.editAttachment"
		value='<spring:message code="B.TemplateProperties.editAttachment"/>' />
	<input type="hidden" id="B.TemplateProperties.attachmentType"
		value='<spring:message code="B.TemplateProperties.attachmentType"/>' />
	<input type="hidden" id="B.TemplateProperties.attachmentTypeRegx"
		value='<spring:message code="B.TemplateProperties.attachmentTypeRegx"/>' />
	<input type="hidden"
		id="B.TemplateProperties.templatePropertiesCrudItems"
		value='<spring:message code="B.TemplateProperties.templatePropertiesCrudItems"/>' />
	<input type="hidden"
		id="B.TemplateProperties.templatePropertiesInportItems"
		value='<spring:message code="B.TemplateProperties.templatePropertiesInportItems"/>' />
	<input type="hidden"
		id="B.TemplateProperties.templatePropertiesExportItems"
		value='<spring:message code="B.TemplateProperties.templatePropertiesExportItems"/>' />
	<input type="hidden"
		id="B.TemplateProperties.templatePropertiesStatisticsItems"
		value='<spring:message code="B.TemplateProperties.templatePropertiesStatisticsItems"/>' />
	<input type="hidden" id="B.TemplateProperties.selectData.placeholder"
		value='<spring:message code="B.TemplateProperties.selectData.placeholder"/>' />
	<input type="hidden" id="B.TemplateProperties.required.placeholder"
		value='<spring:message code="B.TemplateProperties.required.placeholder"/>' />
	<input type="hidden" id="B.TemplateProperties.editable.placeholder"
		value='<spring:message code="B.TemplateProperties.editable.placeholder"/>' />
	<input type="hidden" id="B.TemplateProperties.tips.placeholder"
		value='<spring:message code="B.TemplateProperties.tips.placeholder"/>' />
	<input type="hidden" id="B.TemplateProperties.editTips"
		value='<spring:message code="B.TemplateProperties.editTips"/>' />
	<input type="hidden" id="B.TemplateProperties.fieldName.placeholder"
		value='<spring:message code="B.TemplateProperties.fieldName.placeholder"/>' />
	<input type="hidden" id="B.TemplateProperties.hide.placeholder"
		value='<spring:message code="B.TemplateProperties.hide.placeholder"/>' />
	<input type="hidden" id="B.TemplateProperties.search.placeholder"
		value='<spring:message code="B.TemplateProperties.search.placeholder"/>' />
	<input type="hidden" id="B.TemplateProperties.attachment.placeholder"
		value='<spring:message code="B.TemplateProperties.attachment.placeholder"/>' />
	<input type="hidden"
		id="B.TemplateProperties.selectFirstData.placeholder"
		value='<spring:message code="B.TemplateProperties.selectFirstData.placeholder"/>' />
	<input type="hidden" id="B.TemplateProperties.fieldComment.placeholder"
		value='<spring:message code="B.TemplateProperties.fieldComment.placeholder"/>' />
	<input type="hidden"
		id="B.TemplateProperties.fieldProperties.placeholder"
		value='<spring:message code="B.TemplateProperties.fieldProperties.placeholder"/>' />
	<input type="hidden" id="B.TemplateProperties.fontAwesome"
		value='<spring:message code="B.TemplateProperties.fontAwesome"/>' />
	<input type="hidden" id="B.TemplateProperties.fontAwesome.placeholder"
		value='<spring:message code="B.TemplateProperties.fontAwesome.placeholder"/>' />
	<input type="hidden" id="B.TemplateProperties.sequence.placeholder"
		value='<spring:message code="B.TemplateProperties.sequence.placeholder"/>' />
	<input type="hidden" id="B.TemplateProperties.colour.placeholder"
		value='<spring:message code="B.TemplateProperties.colour.placeholder"/>' />
	<input type="hidden" id="B.TemplateProperties.type.placeholder"
		value='<spring:message code="B.TemplateProperties.type.placeholder"/>' />
	<input type="hidden" id="B.TemplateProperties.length.placeholder"
		value='<spring:message code="B.TemplateProperties.length.placeholder"/>' />
	<input type="hidden" id="B.TemplateProperties.format.placeholder"
		value='<spring:message code="B.TemplateProperties.format.placeholder"/>' />
	<input type="hidden" id="B.TemplateProperties.pattern.placeholder"
		value='<spring:message code="B.TemplateProperties.pattern.placeholder"/>' />
	<input type="hidden" id="B.TemplateProperties.fieldLabel.placeholder"
		value='<spring:message code="B.TemplateProperties.fieldLabel.placeholder"/>' />
	<input type="hidden"
		id="B.TemplateProperties.validationMessage.placeholder"
		value='<spring:message code="B.TemplateProperties.validationMessage.placeholder"/>' />
	<input type="hidden" id="B.TemplateProperties.editTips.placeholder"
		value='<spring:message code="B.TemplateProperties.editTips.placeholder"/>' />
	<input type="hidden" id="B.ColourPalette.allColor"
		value='<spring:message code="B.ColourPalette.allColor"/>' />
	<input type="hidden" id="B.ColourPalette.basicColor"
		value='<spring:message code="B.ColourPalette.basicColor"/>' />
	<input type="hidden" id="B.ColourPalette.webSafeColor"
		value='<spring:message code="B.ColourPalette.webSafeColor"/>' />
	<input type="hidden"
		id="B.TemplateProperties.templatePropertiesTargetTypeItems.mainModule"
		value='<spring:message code="B.TemplateProperties.templatePropertiesTargetTypeItems.mainModule"/>' />
	<input type="hidden"
		id="B.TemplateProperties.templatePropertiesTargetTypeItems.accessoryModule"
		value='<spring:message code="B.TemplateProperties.templatePropertiesTargetTypeItems.accessoryModule"/>' />
	<input type="hidden"
		id="B.TemplateProperties.templatePropertiesTargetTypeItems.referenceModule"
		value='<spring:message code="B.TemplateProperties.templatePropertiesTargetTypeItems.referenceModule"/>' />
	<input type="hidden"
		id="B.TemplateProperties.templatePropertiesTableTypeItems.mainTable"
		value='<spring:message code="B.TemplateProperties.templatePropertiesTableTypeItems.mainTable"/>' />
	<input type="hidden"
		id="B.TemplateProperties.templatePropertiesTableTypeItems.referenceTable"
		value='<spring:message code="B.TemplateProperties.templatePropertiesTableTypeItems.referenceTable"/>' />
	<input type="hidden"
		id="B.TemplateProperties.templatePropertiesTargetLabel"
		value='<spring:message code="B.TemplateProperties.templatePropertiesTargetLabel"/>' />
	<input type="hidden"
		id="B.TemplateProperties.attchmentSize.placeholder"
		value='<spring:message code="B.TemplateProperties.attchmentSize.placeholder"/>' />
	<input type="hidden"
		id="B.TemplateProperties.attachmentTypeRegx.placeholder"
		value='<spring:message code="B.TemplateProperties.attachmentTypeRegx.placeholder"/>' />
	<input type="hidden" id="B.TemplateProperties.originSrc"
		value='<spring:message code="B.TemplateProperties.originSrc"/>' />
	<input type="hidden" id="B.TemplateProperties.originSrc.placeholder"
		value='<spring:message code="B.TemplateProperties.originSrc.placeholder"/>' />







	<input type="hidden" id="N.codeGenerate"
		value='<spring:message code="N.codeGenerate"/>' />

	<input type="hidden" id="E.selectOneToCodeGenerate"
		value='<spring:message code="E.selectOneToCodeGenerate"/>' />

	<input type="hidden" id="targetFieldPropertiesJSON"
		value='${targetFieldPropertiesJSON}' />

	<!-- 表格，因为表格展现的时候有样式调整，所以用户会看到表格调整的过程，不太舒服，所以先把表格display=none，调整完成后再展示出来 -->
	<%@include file="/WEB-INF/jsp/project/base/component/grid.jsp"%>
	<div id="templatePropertiesCRUDGrid" class="base-main-grid"></div>

	<script type="text/javascript"
		src="${ctx }/static/project/base/js/baseCodeGenerator/templatePropertiesCRUD.js"></script>


	<%@include file="/WEB-INF/jsp/project/base/page/footer.jsp"%>

</body>
</html>

