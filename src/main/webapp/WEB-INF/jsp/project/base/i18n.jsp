<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 放置一些公用的，常用的多语言标签于隐藏域中，原因是js文件中无法直接使用< spring : message >来获取多语言标签，所以用这种先放置于隐藏域中，然后用baseUtil.val(input框id)获取隐藏域的value值即可获取多语言  -->
<input type="hidden" id="N.submit"
	value='<spring:message code="N.submit"/>' />
<input type="hidden" id="N.cancel"
	value='<spring:message code="N.cancel"/>' />
<input type="hidden" id="N.add" value='<spring:message code="N.add"/>' />
<input type="hidden" id="N.delete"
	value='<spring:message code="N.delete"/>' />
<input type="hidden" id="N.required"
	value='<spring:message code="N.required"/>' />
<input type="hidden" id="N.length"
	value='<spring:message code="N.length"/>' />
<input type="hidden" id="N.type" value='<spring:message code="N.type"/>' />
<input type="hidden" id="N.number"
	value='<spring:message code="N.number"/>' />
<input type="hidden" id="N.boolean"
	value='<spring:message code="N.boolean"/>' />
<input type="hidden" id="N.date" value='<spring:message code="N.date"/>' />
<input type="hidden" id="N.string"
	value='<spring:message code="N.string"/>' />
<input type="hidden" id="N.colour"
	value='<spring:message code="N.colour"/>' />
<input type="hidden" id="N.attachment"
	value='<spring:message code="N.attachment"/>' />
<input type="hidden" id="N.format"
	value='<spring:message code="N.format"/>' />
<input type="hidden" id="N.pattern"
	value='<spring:message code="N.pattern"/>' />
<input type="hidden" id="N.editable"
	value='<spring:message code="N.editable"/>' />
<input type="hidden" id="N.hide" value='<spring:message code="N.hide"/>' />
<input type="hidden" id="N.tips" value='<spring:message code="N.tips"/>' />
<input type="hidden" id="N.search"
	value='<spring:message code="N.search"/>' />
<input type="hidden" id="N.deleteConfirm"
	value='<spring:message code="N.deleteConfirm"/>' />
<input type="hidden" id="N.deleteConfirm"
	value='<spring:message code="N.deleteConfirm"/>' />
<input type="hidden" id="N.add" value='<spring:message code="N.add"/>' />
<input type="hidden" id="N.update"
	value='<spring:message code="N.update"/>' />
<input type="hidden" id="N.view" value='<spring:message code="N.view"/>' />
<input type="hidden" id="N.excelExport"
	value='<spring:message code="N.excelExport"/>' />
<input type="hidden" id="N.pdfExport"
	value='<spring:message code="N.pdfExport"/>' />
<input type="hidden" id="N.jsonImport"
	value='<spring:message code="N.jsonImport"/>' />
<input type="hidden" id="N.submit"
	value='<spring:message code="N.submit"/>' />
<input type="hidden" id="N.cancel"
	value='<spring:message code="N.cancel"/>' />
<input type="hidden" id="N.chooseColumns"
	value='<spring:message code="N.chooseColumns"/>' />
<input type="hidden" id="N.filter"
	value='<spring:message code="N.filter"/>' />
<input type="hidden" id="N.and" value='<spring:message code="N.and"/>' />
<input type="hidden" id="N.or" value='<spring:message code="N.or"/>' />
<input type="hidden" id="N.clear"
	value='<spring:message code="N.clear"/>' />
<input type="hidden" id="N.isEqualTo"
	value='<spring:message code="N.isEqualTo"/>' />
<input type="hidden" id="N.isNotEqualTo"
	value='<spring:message code="N.isNotEqualTo"/>' />
<input type="hidden" id="N.startsWith"
	value='<spring:message code="N.startsWith"/>' />
<input type="hidden" id="N.contains"
	value='<spring:message code="N.contains"/>' />
<input type="hidden" id="N.doseNotContains"
	value='<spring:message code="N.doseNotContains"/>' />
<input type="hidden" id="N.endsWith"
	value='<spring:message code="N.endsWith"/>' />
<input type="hidden" id="N.isEmpty"
	value='<spring:message code="N.isEmpty"/>' />
<input type="hidden" id="N.isNotEmpty"
	value='<spring:message code="N.isNotEmpty"/>' />
<input type="hidden" id="N.gte" value='<spring:message code="N.gte"/>' />
<input type="hidden" id="N.lte" value='<spring:message code="N.lte"/>' />
<input type="hidden" id="N.gt" value='<spring:message code="N.gt"/>' />
<input type="hidden" id="N.lt" value='<spring:message code="N.lt"/>' />
<input type="hidden" id="N.pages"
	value='<spring:message code="N.pages"/>' />
<input type="hidden" id="N.rows" value='<spring:message code="N.rows"/>' />
<input type="hidden" id="N.refresh"
	value='<spring:message code="N.refresh"/>' />
<input type="hidden" id="N.rowsPerPage"
	value='<spring:message code="N.rowsPerPage"/>' />
<input type="hidden" id="N.firstPage"
	value='<spring:message code="N.firstPage"/>' />
<input type="hidden" id="N.lastPage"
	value='<spring:message code="N.lastPage"/>' />
<input type="hidden" id="N.nextPage"
	value='<spring:message code="N.nextPage"/>' />
<input type="hidden" id="N.previousPage"
	value='<spring:message code="N.previousPage"/>' />
<input type="hidden" id="N.morePages"
	value='<spring:message code="N.morePages"/>' />
<input type="hidden" id="N.increase"
	value='<spring:message code="N.increase"/>' />
<input type="hidden" id="N.decrease"
	value='<spring:message code="N.decrease"/>' />
<input type="hidden" id="N.selectAllRows"
	value='<spring:message code="N.selectAllRows"/>' />
<input type="hidden" id="N.all" value='<spring:message code="N.all"/>' />
<input type="hidden" id="N.pleaseSelect"
	value='<spring:message code="N.pleaseSelect"/>' />
<input type="hidden" id="N.dateTime"
	value='<spring:message code="N.dateTime"/>' />
<input type="hidden" id="N.default"
	value='<spring:message code="N.default"/>' />
<input type="hidden" id="N.no" value='<spring:message code="N.no"/>' />
<input type="hidden" id="N.i18n" value='<spring:message code="N.i18n"/>' />
<input type="hidden" id="N.export"
	value='<spring:message code="N.export"/>' />
<input type="hidden" id="N.upload"
	value='<spring:message code="N.upload"/>' />
<input type="hidden" id="N.image"
	value='<spring:message code="N.image"/>' />
<input type="hidden" id="N.text" value='<spring:message code="N.text"/>' />
<input type="hidden" id="N.selectFiles"
	value='<spring:message code="N.selectFiles"/>' />
<input type="hidden" id="N.uploading"
	value='<spring:message code="N.uploading"/>' />
<input type="hidden" id="N.dropFilesHere"
	value='<spring:message code="N.dropFilesHere"/>' />
<input type="hidden" id="N.retry"
	value='<spring:message code="N.retry"/>' />
<input type="hidden" id="N.fail" value='<spring:message code="N.fail"/>' />
<input type="hidden" id="N.ok" value='<spring:message code="N.ok"/>' />
<input type="hidden" id="N.errorNotification"
	value='<spring:message code="N.errorNotification"/>' />
<input type="hidden" id="N.successNotification"
	value='<spring:message code="N.successNotification"/>' />
<input type="hidden" id="N.infoNotification"
	value='<spring:message code="N.infoNotification"/>' />
<input type="hidden" id="N.deleteSuccess"
	value='<spring:message code="N.deleteSuccess"/>' />
<input type="hidden" id="N.updateSuccess"
	value='<spring:message code="N.updateSuccess"/>' />
<input type="hidden" id="N.addSuccess"
	value='<spring:message code="N.addSuccess"/>' />
<input type="hidden" id="N.uploadSuccess"
	value='<spring:message code="N.uploadSuccess"/>' />
<input type="hidden" id="N.size" value='<spring:message code="N.size"/>' />
<input type="hidden" id="N.modifyTime"
	value='<spring:message code="N.modifyTime"/>' />
<input type="hidden" id="N.count"
	value='<spring:message code="N.count"/>' />
<input type="hidden" id="N.multiSelect"
	value='<spring:message code="N.multiSelect"/>' />
<input type="hidden" id="N.selectData"
	value='<spring:message code="N.selectData"/>' />
<input type="hidden" id="N.singleSelect"
	value='<spring:message code="N.singleSelect"/>' />
<input type="hidden" id="N.pieChart"
	value='<spring:message code="N.pieChart"/>' />
<input type="hidden" id="N.lineChart"
	value='<spring:message code="N.lineChart"/>' />
<input type="hidden" id="N.Histogram"
	value='<spring:message code="N.Histogram"/>' />
<input type="hidden" id="N.n" value='<spring:message code="N.n"/>' />
<input type="hidden" id="N.y" value='<spring:message code="N.y"/>' />
<input type="hidden" id="N.selectFirstData"
	value='<spring:message code="N.selectFirstData"/>' />
<input type="hidden" id="N.button"
	value='<spring:message code="N.button"/>' />
<input type="hidden" id="N.autoComplete"
	value='<spring:message code="N.autoComplete"/>' />
<input type="hidden" id="N.sequence"
	value='<spring:message code="N.sequence"/>' />
<input type="hidden" id="E.required"
	value='<spring:message code="E.required"/>' />
<input type="hidden" id="N.textarea"
	value='<spring:message code="N.textarea"/>' />
<input type="hidden" id="N.permission"
	value='<spring:message code="N.permission"/>' />
<input type="hidden" id="N.allExpand"
	value='<spring:message code="N.allExpand"/>' />
<input type="hidden" id="N.allCollapse"
	value='<spring:message code="N.allCollapse"/>' />
<input type="hidden" id="N.role" value='<spring:message code="N.role"/>' />
<input type="hidden" id="N.normal"
	value='<spring:message code="N.normal"/>' />
<input type="hidden" id="N.lock" value='<spring:message code="N.lock"/>' />
<input type="hidden" id="N.male" value='<spring:message code="N.male"/>' />
<input type="hidden" id="N.female"
	value='<spring:message code="N.female"/>' />
<input type="hidden" id="N.chinese"
	value='<spring:message code="N.chinese"/>' />
<input type="hidden" id="N.taiwan"
	value='<spring:message code="N.taiwan"/>' />
<input type="hidden" id="N.english"
	value='<spring:message code="N.english"/>' />
<input type="hidden" id="N.noScore"
	value='<spring:message code="N.noScore"/>' />
<input type="hidden" id="N.dragToVefiry"
	value='<spring:message code="N.dragToVefiry"/>' />
<input type="hidden" id="N.clickRefresh"
	value='<spring:message code="N.clickRefresh"/>' />
<input type="hidden" id="N.webNotConn"
	value='<spring:message code="N.webNotConn"/>' />
<input type="hidden" id="N.checkSucc"
	value='<spring:message code="N.checkSucc"/>' />
<input type="hidden" id="N.checkFail"
	value='<spring:message code="N.checkFail"/>' />
<input type="hidden" id="N.warmNotification"
	value='<spring:message code="N.warmNotification"/>' />
<input type="hidden" id="N.agreement"
	value='<spring:message code="N.agreement"/>' />
<input type="hidden" id="N.preview"
	value='<spring:message code="N.preview"/>' />
<input type="hidden" id="N.uploadAndCut"
	value='<spring:message code="N.uploadAndCut"/>' />
<input type="hidden" id="E.imageTypeOnly"
	value='<spring:message code="E.imageTypeOnly"/>' />
<input type="hidden" id="N.plsChecked"
	value='<spring:message code="N.plsChecked"/>' />
<input type="hidden" id="N.sendEmail"
	value='<spring:message code="N.sendEmail"/>' />
<input type="hidden" id="N.sending"
	value='<spring:message code="N.sending"/>' />
<input type="hidden" id="N.originPassword"
	value='<spring:message code="N.originPassword"/>' />
<input type="hidden" id="N.newPassword"
	value='<spring:message code="N.newPassword"/>' />
<input type="hidden" id="N.retryNewPassword"
	value='<spring:message code="N.retryNewPassword"/>' />
<input type="hidden" id="N.changePassword"
	value='<spring:message code="N.changePassword"/>' />
<input type="hidden" id="N.systemCookBook"
	value='<spring:message code="N.systemCookBook"/>' />
<input type="hidden" id="N.mobileVCode"
	value='<spring:message code="N.mobileVCode"/>' />
<input type="hidden" id="N.emailSent"
	value='<spring:message code="N.emailSent"/>' />
<input type="hidden" id="N.sendSmsVCode"
	value='<spring:message code="N.sendSmsVCode"/>' />
<input type="hidden" id="N.reSend"
	value='<spring:message code="N.reSend"/>' />
<input type="hidden" id="N.sent" value='<spring:message code="N.sent"/>' />
<input type="hidden" id="N.secondRetry"
	value='<spring:message code="N.secondRetry"/>' />
<input type="hidden" id="N.register"
	value='<spring:message code="N.register"/>' />
<input type="hidden" id="N.retrievePass"
	value='<spring:message code="N.retrievePass"/>' />
<input type="hidden" id="N.forgetPass"
	value='<spring:message code="N.forgetPass"/>' />
<input type="hidden" id="N.acount"
	value='<spring:message code="N.acount"/>' />
<input type="hidden" id="N.accountCheck"
	value='<spring:message code="N.accountCheck"/>' />
<input type="hidden" id="N.setVCode"
	value='<spring:message code="N.setVCode"/>' />
<input type="hidden" id="N.hadSet"
	value='<spring:message code="N.hadSet"/>' />
<input type="hidden" id="N.newPasswordLimit"
	value='<spring:message code="N.newPasswordLimit"/>' />
<input type="hidden" id="N.minLength"
	value='<spring:message code="N.minLength"/>' />
<input type="hidden" id="N.minAlphaCharLength"
	value='<spring:message code="N.minAlphaCharLength"/>' />
<input type="hidden" id="N.minMunberCharLength"
	value='<spring:message code="N.minMunberCharLength"/>' />
<input type="hidden" id="N.minSpacialCharLength"
	value='<spring:message code="N.minSpacialCharLength"/>' />
<input type="hidden" id="N.constantBigAndSmall"
	value='<spring:message code="N.constantBigAndSmall"/>' />



<input type="hidden" id="E.User.userPassword"
	value='<spring:message code="E.User.userPassword"/>' />
<input type="hidden" id="E.numberOnly"
	value='<spring:message code="E.numberOnly"/>' />
<input type="hidden" id="E.keepAtLeastOneItem"
	value='<spring:message code="E.keepAtLeastOneItem"/>' />
<input type="hidden" id="E.selectOneToView"
	value='<spring:message code="E.selectOneToView"/>' />
<input type="hidden" id="E.selectOneToUpdate"
	value='<spring:message code="E.selectOneToUpdate"/>' />
<input type="hidden" id="E.selectOneToDelete"
	value='<spring:message code="E.selectOneToDelete"/>' />
<input type="hidden" id="E.sequenceRepeat"
	value='<spring:message code="E.sequenceRepeat"/>' />
<input type="hidden" id="E.repeatRequest"
	value='<spring:message code="E.repeatRequest"/>' />
<input type="hidden" id="E.sessionTimeout"
	value='<spring:message code="E.sessionTimeout"/>' />
<input type="hidden" id="E.noPermissionOperation"
	value='<spring:message code="E.noPermissionOperation"/>' />
<input type="hidden" id="E.overtime"
	value='<spring:message code="E.overtime"/>' />
<input type="hidden" id="E.finishVerify"
	value='<spring:message code="E.finishVerify"/>' />
<input type="hidden" id="E.GLOBAL_ERROR"
	value='<spring:message code="E.GLOBAL_ERROR"/>' />
<input type="hidden" id="E.otherPalaceLogin"
	value='<spring:message code="E.otherPalaceLogin"/>' />
<input type="hidden" id="E.passwordMaxFailTimes"
	value='<spring:message code="E.passwordMaxFailTimes"/>' />
<input type="hidden" id="E.passwordExpireMsg"
	value='<spring:message code="E.passwordExpireMsg"/>' />
<input type="hidden" id="E.coutionEdit"
	value='<spring:message code="E.coutionEdit"/>' />
<input type="hidden" id="N.emailFormatError"
	value='<spring:message code="N.emailFormatError"/>' />
<input type="hidden" id="E.verifyCodeExpire"
	value='<spring:message code="E.verifyCodeExpire"/>' />

<input type="hidden" id="B.ModifyDate"
	value='<spring:message code="B.ModifyDate"/>' />
<input type="hidden" id="B.ModifyUser"
	value='<spring:message code="B.ModifyUser"/>' />
<input type="hidden" id="B.CreateDate"
	value='<spring:message code="B.CreateDate"/>' />
<input type="hidden" id="B.CreateUser"
	value='<spring:message code="B.CreateUser"/>' />
<input type="hidden" id="B.CreateUserAccount"
	value='<spring:message code="B.CreateUserAccount"/>' />
<input type="hidden" id="B.ModifyUserAccount"
	value='<spring:message code="B.ModifyUserAccount"/>' />
<input type="hidden" id="B.id" value='<spring:message code="B.id"/>' />























