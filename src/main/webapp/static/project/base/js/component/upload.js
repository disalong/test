window.uploadSaveUrl = ctx + "/baseUploadWS/upload";
window.uploadRemoveUrl = ctx + "/baseUploadWS/deleteOne";
/**
 * id用于区分不同的上传窗口产生的全局变量。
 * successFn:上传成功后的回调函数。
 * selectFn:当选定文件进行上传，或者将文件拖动到上传框鼠标放开的一刻，触发的方法。
 * uploadAttachmentType:文件上传允许类型，如：".\*\\.png|.\*\\.jpeg|.\*\\.jpg|.\*\\.gif"。
 * uploadAttachmentSize：文件上传限制大小，单位kb，如2048，表示文件最大不成超过2M.
 * uploadAttachmentTypeRegx:与uploadAttachmentType相似，写正则表达式限制上传的文件的名字。
 * deleteSuccessFn:删除成功回调函数。
 * initFn:初始化上传控件完成后调用的函数。第一个需求是因为，IE9以下因为不支持dropZone，所以样式有
 * 异样，但是没有IE9以下专属的css hack，我们只能在初始化控件完成后，用css修改样式。
 * 
 * 结果获取：
 * baseUtil.JF(window["currentUploadIds"+id]);
 * 获取当前上传窗口上传的所有文件的上传id。
 * baseUtil.JF(window["uploadFileName_uploadId_map"+id]);
 * 当然你喜欢的话也可以这么获取，上传的文件的id和文件名的map
 */
window.base.upload = {
	init : function(id, successFn, selectFn, uploadAttachmentType,
			uploadAttachmentSize, uploadAttachmentTypeRegx, deleteSuccessFn,
			initFn) {
		/**
		*因为上传控件的removeUrl的默认提交参数是上传的文件名，如果根据文件名去delete数据，明显不妥，
		*因为其他用户也可能上传同名的文件，所以必须根据每个文件对应的upload的id来删除，所以当文件
		*上传成功之后，回以“文件名-uploadId”的方式装到这个map中，删除的时候，将这个map作为参数提交到
		*后台，后台根据文件名来获取对应的id，进行删除，那么问题是，这个map中的文件名是否会重复，也就是
		*用户可能在同一个窗口中上传多个同名的文件，为了防止这一点，当用户在同一个窗口中上传多个同名
		*文件的时候，以覆盖的形式处理，也就是先删掉之前的同名文件，然后再新增当前的同名文件，所以上传文件
		*的时候也需要提交这个map，判断用户当前上传的文件名是否已经在这个map中。这样保证的是，删除的时候，
		*一个文件名只会对应一个uploadId。
		*/
		window["uploadFileName_uploadId_map" + id] = {};
		window["currentUploadIds" + id] = [];
		/**
		 * 存储上传文件的最后修改时间。必须在前端获取，后端无法获取。
		 */
		window["uploadFileName_uploadFileLastmodifyTime_map" + id] = {};
		window["uploadAttachmentType" + id] = uploadAttachmentType;
		window["uploadAttachmentSize" + id] = uploadAttachmentSize;
		window["uploadAttachmentTypeRegx" + id] = uploadAttachmentTypeRegx;
		var templateHtml = "<span class='k-progress'></span>"
				+ "<div class='file-wrapper'>"
				+ "<span class='file-icon #=addExtensionClass(files[0].extension)#'></span>"
				+ "<span class='file-heading file-name-heading base-word-overflow' fileName='#=baseCode.encodeHex(name)#' "
				+ " title='#=name# (#=getFileSize(size)##=getUploadFileLastmodifyTime(name, '"
				+ id
				+ "')#)'>#=name# (#=getFileSize(size)##=getUploadFileLastmodifyTime(name, '"
				+ id
				+ "')#)</span>"
				+ "<button type='button' class='k-upload-action'></button></div>";
		var template = kendo.template(templateHtml);
		var uploadKendo = $("#files" + id)
				.kendoUpload(
						{
							async : {
								saveUrl : uploadSaveUrl,
								removeUrl : uploadRemoveUrl,
								autoUpload : true,
							},
							localization : {
								select : baseUtil.val("N.selectFiles") + " / "
										+ baseUtil.val("N.dropFilesHere")
										+ "...",
								statusUploading : baseUtil.val("N.uploading")
										+ "...",
								headerStatusUploading : baseUtil
										.val("N.uploading")
										+ "...",
								headerStatusUploaded : baseUtil.val("N.ok"),
								statusUploaded : baseUtil.val("N.ok"),
								cancel : baseUtil.val("N.cancel"),
								dropFilesHere : baseUtil.val("N.dropFilesHere")
										+ "...",
								remove : baseUtil.val("N.delete"),
								retry : baseUtil.val("N.retry"),
								statusFailed : baseUtil.val("N.fail")
							},
							template : template,
							select : function(e) {
								if (selectFn) {
									//把自定义的回调方法放在之前默认的select处理之前的原因是，我可以先执行自定义的回调方法，如果我不想执行默认的select处理，
									//返回false就行，后面的内容就不会执行。否则返回true。
									if (!selectFn()) {
										return;
									}
								}
								//可以通过e.files获取当前窗口上传的所有文件对象，是一个file数组，每个file有下面的内容：
								/**
								{
								     "name" : "base-ui-web.png",
								     "extension" : ".png",
								     "size" : 4012,
								     "rawFile" : {
								          "name" : "base-ui-web.png",
								          "lastModified" : 1476887031459,
								          "lastModifiedDate" : {
								          },
								          "slice" : "function()",
								          "size" : 4012,
								          "type" : "image/png"
								     },
								     "uid" : "fd6741d1-da39-42f9-b2ce-e2443ae26859"
								}
								*/
								if (!baseUtil.isIE()) {
									for ( var i = 0, fileCount = e.files.length; i < fileCount; i++) {
										window["uploadFileName_uploadFileLastmodifyTime_map"
												+ id][e.files[i].name] = e.files[i].rawFile.lastModified;
									}
								}
								var extendUploadParams = "?uploadFileName_uploadFileLastmodifyTime_map="
										+ baseCode
												.encodeHex(JSON
														.stringify(window["uploadFileName_uploadFileLastmodifyTime_map"
																+ id]));
								var uploadIdParamsStr = "";
								if ({} != window["uploadFileName_uploadId_map"
										+ id]) {
									uploadIdParamsStr = "&uploadFileName_uploadId_map="
											+ baseCode
													.encodeHex(JSON
															.stringify(window["uploadFileName_uploadId_map"
																	+ id]));
								}
								extendUploadParams += uploadIdParamsStr;
								var attachmentType = "";
								if (window["uploadAttachmentType" + id]) {
									attachmentType = "&uploadAttachmentType="
											+ window["uploadAttachmentType"
													+ id];
								}
								extendUploadParams += attachmentType;
								var attachmentSize = "";
								if (window["uploadAttachmentSize" + id]) {
									attachmentSize = "&uploadAttachmentSize="
											+ window["uploadAttachmentSize"
													+ id];
								}
								extendUploadParams += attachmentSize;
								var attachmentCount = "";
								if (window["uploadAttachmentCount" + id]) {
									attachmentCount = "&uploadAttachmentCount="
											+ window["uploadAttachmentCount"
													+ id];
								}
								extendUploadParams += attachmentCount;
								var attachmentTypeRegx = "";
								if (window["uploadAttachmentTypeRegx" + id]) {
									attachmentTypeRegx = "&uploadAttachmentTypeRegx="
											+ window["uploadAttachmentTypeRegx"
													+ id];
								}
								extendUploadParams += attachmentTypeRegx;
								e.sender.options.async.saveUrl = uploadSaveUrl
										+ extendUploadParams;
							},
							success : function(e) {
								var files = e.files;
								var sameNameUploadedFiles = $("#uploadDiv" + id
										+ " .file-wrapper span[fileName="
										+ baseCode.encodeHex(files[0]["name"])
										+ "]");
								//就算反馈的是异常的信息，上传控件依然认为是上传成功，所以我们需要自己捕获异常信息，然后
								//自己做失败的样式处理。
								if (e.response["e"]) {
									sameNameUploadedFiles.closest(".k-file")
											.addClass("k-file-error");
									baseUtil.getError(e.response["e"]);
									//上传有异常，上传按钮旁边的“√”改成”!“。
									$("#uploadDiv" + id).find(
											".k-upload-status .k-i-tick")
											.removeClass("k-i-tick").addClass(
													"k-warning");
									return;
								}
								var u = baseUtil.val("N.uploadSuccess");
								var d = baseUtil.val("N.deleteSuccess");
								if (e.response.deleteFlag) {
									if (deleteSuccessFn) {
										//把自定义的回调方法放在之前默认的成功处理之前的原因是，我可以先执行自定义的回调方法，如果我不想执行默认的成功处理，
										//返回false就行，后面的内容就不会执行。否则返回true。
										if (!deleteSuccessFn()) {
											return;
										}
									}
									baseUtil.alertS(files[0]["name"], d);
								} else {
									window["uploadFileName_uploadId_map" + id][files[0]["name"]] = e.response.uploadId;
									if (-1 == $.inArray(e.response.uploadId,
											window["currentUploadIds" + id])) {
										window["currentUploadIds" + id]
												.push(e.response.uploadId);
									}
									e.sender.options.async.removeUrl = uploadRemoveUrl
											+ "?uploadFileName_uploadId_map="
											+ baseCode
													.encodeHex(JSON
															.stringify(window["uploadFileName_uploadId_map"
																	+ id]));
									if (successFn) {
										//把自定义的回调方法放在之前默认的成功处理之前的原因是，我可以先执行自定义的回调方法，如果我不想执行默认的成功处理，
										//返回false就行，后面的内容就不会执行。否则返回true。
										if (!successFn()) {
											return;
										}
									}
									if (sameNameUploadedFiles.length > 1) {
										var removeReNameFile = $(
												sameNameUploadedFiles[0])
												.closest("li");
										$(removeReNameFile).animo({
											animation : "zoomOutRight",
											duration : 1,
											keep : false
										}, function() {
											$(removeReNameFile).remove();
										});
									}
									baseUtil.alertS(files[0]["name"], u);
								}
							},
							//这种错误只有在base服务没有开启，请求得不到反馈时才会出现。只要请求有反馈，不管是异常还是正常的反馈，都会去到success方法。
							error : function(e) {
								baseUtil.alertE(baseUtil.val("E.overtime"));
							}
						}).data("kendoUpload");
		if (initFn) {
			initFn();
		}
		return uploadKendo;
	}
};

/**
*根据上传文件的后缀来显示进图条中的文件类型图标。
*/
function addExtensionClass(extension) {
	var extension = extension.toLowerCase();
	switch (extension) {
	case '.jpg':
	case '.img':
	case '.png':
	case '.gif':
		return "fa fa-file-image-o";
	case '.doc':
	case '.docx':
		return "fa fa-file-word-o";
	case '.xls':
	case '.xlsx':
		return "fa fa-file-excel-o";
	case '.pdf':
		return "fa fa-file-pdf-o";
	case '.zip':
	case '.rar':
		return "fa fa-file-zip-o";
	case '.txt':
		return "fa fa-file-text-o";
	case '.mp3':
		return 'fa fa-file-sound-o';
	case '.mp4':
	case '.rmvb':
		return 'fa fa-file-video-o';
	default:
		return "fa fa-file";
	}
}

/**
*格式化文件的大小，如果小于1024kb，直接显示kb，如果大于1024kb，换算成mb进行显示，以此类推。
*/
function getFileSize(size) {
	var fileSize = "";
	var kbNum = size / 1024;
	if (1024 < kbNum) {
		var mbNum = kbNum / 1024;
		if (1024 < mbNum) {
			var gbNum = mbNum / 1024;
			fileSize = new Number(gbNum).toFixed(2) + " GB";
		} else {
			fileSize = new Number(mbNum).toFixed(2) + " MB";
		}
	} else {
		fileSize = new Number(kbNum).toFixed(2) + " KB";
	}
	return baseUtil.val("N.size") + ":" + fileSize;
}

/**
 * 获取当前上传文件的最后修改时间。
 * @param fileName
 * @returns
 */
function getUploadFileLastmodifyTime(fileName, id) {
	if (baseUtil.isIE()) {
		return "";
	}
	return ", "
			+ baseUtil.val("N.modifyTime")
			+ ":"
			+ baseDateUtil
					.format(
							new Date(
									window["uploadFileName_uploadFileLastmodifyTime_map"
											+ id][fileName]),
							"yyyy-MM-dd hh:mm:ss");
}