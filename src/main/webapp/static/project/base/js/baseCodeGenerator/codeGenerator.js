$(function() {

	/**
	 * 上传控件
	 */
	var homePageUploadData = {};
	baseUtil.template("uploadTemplate", homePageUploadData,
			"#codeGeneratorUploadDiv");
	var homePageUpload = base.upload.init("homePageUpload");

	$("#submit1").kendoButton();

});