/**
 * 用于下拉框或者idToName的一些对象数组
 */
window.baseSelectItems = {};

/**
 * 常用的判断是否的下拉框的数据。
 */
baseSelectItems.isNotItems = [ {
	label : baseUtil.val("N.y"),
	value : "Y"
}, {
	label : baseUtil.val("N.n"),
	value : "N"
} ];

/**
 * TemplateProperties模块，选定某模块中字段的附件可上传类型
 */
baseSelectItems.templatePropertiesAttachmentTypeItems = [ {
	label : baseUtil.val("N.text") + " (.txt)",
	value : ".\*\\.txt"
}, {
	label : "Word (.doc,.docx)",
	value : ".\*\\.doc|.\*\\.docx"
}, {
	label : "Excel (.xls,.xlsx)",
	value : ".\*\\.xls|.\*\\.xlsx"
}, {
	label : "PowerPoint (.ppt,.pptx)",
	value : ".\*\\.ppt|.\*\\.pptx"
}, {
	label : baseUtil.val("N.image") + " (.png,.jpeg,.jpg)",
	value : ".\*\\.png|.\*\\.jpeg|.\*\\.jpg"
} ];

/**
 * 为什么下面的value很多都设置成0000,0001,0002...呢，因为下面的有些XxxItems是用于多选下拉框的，
 * 保存到数据库的时候，我们是存成："0000,0001,0002"的，
 * 这样的话，前端列表表头搜索的时候，是单选下拉搜索，并且左右like的方式搜索的，不管你搜0000,
 * 还是0001还是0002都可以搜到正确的值。否则如果value设置
 * 成英文字符串，搜索起来就可能出错，因为你不确定这些value直接是否出现包含关系，一旦有，搜索就会
 * 出问题。为甚是0000,0001,0002而不是0,1,2呢，因为如果是后者，选项多了比如去到12，那么12和1、2都会
 * 出现并集，你搜索1的时候，就会出来12和1，造成数据的不准确，前者的话我就可以写成0001和0012了。
 */

/**
 * TemplateProperties模块，选择该模块是否有增删改查或者有增删改查的哪些项。
 */
baseSelectItems.templatePropertiesCrudItems = [ {
	label : baseUtil.val("N.all"),
	value : "9999"
}, {
	label : baseUtil.val("N.no"),
	value : "0000"
}, {
	label : baseUtil.val("N.add"),
	value : "0001"
}, {
	label : baseUtil.val("N.delete"),
	value : "0002"
}, {
	label : baseUtil.val("N.update"),
	value : "0003"
}, {
	label : baseUtil.val("N.view"),
	value : "0004"
} ];

/**
 * TemplateProperties模块，选择该模块是否有统计图表项或者有统计图表的哪些项。
 */
baseSelectItems.templatePropertiesStatisticsItems = [ {
	label : baseUtil.val("N.all"),
	value : "9999"
}, {
	label : baseUtil.val("N.no"),
	value : "0000"
}, {
	label : baseUtil.val("N.pieChart"),
	value : "0001"
}, {
	label : baseUtil.val("N.lineChart"),
	value : "0002"
}, {
	label : baseUtil.val("N.Histogram"),
	value : "0003"
} ];

/**
 * TemplateProperties模块，选择该模块是否有导入项或者有导入的哪些项。
 */
baseSelectItems.templatePropertiesInportItems = [ {
	label : baseUtil.val("N.all"),
	value : "9999"
}, {
	label : baseUtil.val("N.no"),
	value : "0000"
}, {
	label : "EXCEL",
	value : "0001"
}, {
	label : "JSON",
	value : "0002"
}, {
	label : "SQL",
	value : "0003"
} ];

/**
 * TemplateProperties模块，选择该模块是否有导出项或者有导出的哪些项。
 */
baseSelectItems.templatePropertiesExportItems = [ {
	label : baseUtil.val("N.all"),
	value : "9999"
}, {
	label : baseUtil.val("N.no"),
	value : "0000"
}, {
	label : "EXCEL",
	value : "0001"
}, {
	label : "JSON",
	value : "0002"
}, {
	label : "SQL",
	value : "0003"
} ];

/**
 * ColourPalette模块，色板的色块数量选择。
 * 4的倍数，每行4个格子。
 */
baseSelectItems.colourPaletteCellCountItems = [ {
	label : "16",
	value : "16"
}, {
	label : "24",
	value : "24"
} ];

/**
 * User模块，用户状态。
 */
baseSelectItems.userStatusItems = [ {
	label : baseUtil.val("N.normal"),
	value : "0"
}, {
	label : baseUtil.val("N.lock"),
	value : "1"
} ];

/**
 * User模块，用户性别。
 */
baseSelectItems.userGenderItems = [ {
	label : baseUtil.val("N.male"),
	value : "0"
}, {
	label : baseUtil.val("N.female"),
	value : "1"
} ];

/**
 * TemplateProperties模块，模板类别：主模块，附属模块，关联模块，决定代码生成使用的模板。
 */
baseSelectItems.templatePropertiesTargetTypeItems = [
		{
			label : baseUtil
					.val("B.TemplateProperties.templatePropertiesTargetTypeItems.mainModule"),
			value : "0"
		},
		{
			label : baseUtil
					.val("B.TemplateProperties.templatePropertiesTargetTypeItems.accessoryModule"),
			value : "1"
		},
		{
			label : baseUtil
					.val("B.TemplateProperties.templatePropertiesTargetTypeItems.referenceModule"),
			value : "2"
		} ];

/**
 * TemplateProperties模块，数据表类别：主表，关联表，只有主表是可以显示在菜单中的。
 */
baseSelectItems.templatePropertiesTableTypeItems = [
		{
			label : baseUtil
					.val("B.TemplateProperties.templatePropertiesTableTypeItems.mainTable"),
			value : "0"
		},
		{
			label : baseUtil
					.val("B.TemplateProperties.templatePropertiesTableTypeItems.referenceTable"),
			value : "1"
		} ];

/**
 * templateProperties编辑属性配置（三级弹出框）的类型下拉选项。
 */
baseSelectItems.templatePropertiesFieldTypeItems = [ {
	label : baseUtil.val("N.string"),
	value : "string"
}, {
	label : baseUtil.val("N.textarea"),
	value : "textarea"
}, {
	label : baseUtil.val("N.number"),
	value : "number"
}, {
	label : baseUtil.val("N.date"),
	value : "date"
}, {
	label : baseUtil.val("N.dateTime"),
	value : "dateTime"
}, {
	label : baseUtil.val("N.multiSelect"),
	value : "multiSelect"
}, {
	label : baseUtil.val("N.singleSelect"),
	value : "singleSelect"
}, {
	label : baseUtil.val("N.autoComplete"),
	value : "autoComplete"
}, {
	label : baseUtil.val("N.button"),
	value : "button"
}, {
	//图片，最先引用于User的头像属性编辑
	label : baseUtil.val("N.image"),
	value : "image"
} ];

/**
 * 邮件发送模块的是否emailSendAuth
 */
baseSelectItems.emailSendAuthItems = [ {
	label : baseUtil.val("N.y"),
	value : "true"
}, {
	label : baseUtil.val("N.n"),
	value : "false"
} ];