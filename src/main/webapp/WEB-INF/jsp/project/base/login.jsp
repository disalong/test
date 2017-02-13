<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/jsp/project/base/page/header.jsp"%>
<!-- 弹出编辑窗口 -->
<%@include file="/WEB-INF/jsp/project/base/component/editWin.jsp"%>
<!-- slick轮播器插件 -->
<%@include file="/WEB-INF/jsp/project/base/component/slick.jsp"%>
</head>

<link rel="stylesheet"
	href="${ctx }/static/project/base/style/css/${fgConfig.defaultTheme }/login.css"></link>

<body>
	<input type="hidden" class="action" value='${action }'>
	<input type="hidden" class="loginToken_noPermission_message"
		value='${loginToken_noPermission_message }'>
	<div class="base-fadeIn base-login-content" id="base-login-content">
		<div class="slick-loginBackground">
			<div>
				<img class="base-login-sli-img" alt=""
					src="${ctx }/static/project/base/style/image/1.jpg" />
			</div>
			<div>
				<img class="base-login-sli-img" alt=""
					src="${ctx }/static/project/base/style/image/2.jpg" />
			</div>
			<div>
				<img class="base-login-sli-img" alt=""
					src="${ctx }/static/project/base/style/image/3.jpg" />
			</div>
		</div>
		<div class="base-login-context">
			<div class="tabstrip-transparent-background">
				<div class='base-load-div'>
					<span class='fa fa-spinner fa-pulse'></span>
				</div>
			</div>
			<div id="tabstrip-userLogin-div">
				<div id="tabstrip-userLogin" style="display: none"></div>
			</div>
			<div id="tabstrip-userRegister-div">
				<div id="tabstrip-userRegister-title">
					<span class="title-text"> <span class="k-sprite fa fa-user"></span>
						<spring:message code="N.accountRegister" />
					</span>
				</div>
				<form>
					<div id="tabstrip-userRegister-content" class='k-content'></div>
				</form>
			</div>
		</div>
	</div>



	<div id="base-agreedment-text-zh_CN" class="base-agreedment-text">
		<p>
			<img
				src="${ctx }/static/project/base/style/image/base-ui-web-logo.png"
				style="display: block; margin-left: auto; margin-right: auto;">
		</p>
		<p></p>
		<p>
			<strong><span>一、总则</span></strong>
		</p>
		<p>
			<span>1.1</span><span>本网站的所有权和运营权归珠海市安亿软件有限公司所有。<span>
					<br> 1.2
			</span>用户在注册之前，应当仔细阅读本协议，并同意遵守本协议后方可成为注册用户。一旦注册成功，则用户与本网站之间自动形成协议关系，用户应当受本协议的约束。用户在使用特殊的服务或产品时，应当同意接受相关协议后方能使用。<span>
					<br> 1.3
			</span>本协议则可由本网站随时更新，用户应当及时关注并同意本站不承担通知义务。本站的通知、公告、声明或其它类似内容是本协议的一部分。
			</span>
		</p>
		<p>
			<strong><span>二、服务内容</span></strong>
		</p>
		<p>
			<span>2.1 </span><span>本网站的具体内容由本站根据实际情况提供。<span> <br>
					2.2
			</span>本站仅提供相关的网络服务，除此之外与相关网络服务有关的设备<span>(</span>如个人电脑、手机、及其他与接入互联网或移动网有关的装置<span>)</span>及所需的费用<span>(</span>如为接入互联网而支付的电话费及上网费、为使用移动网而支付的手机费<span>)</span>均应由用户自行负担。
			</span>
		</p>
		<p>
			<strong><span>三、用户帐号</span></strong>
		</p>
		<p>
			<span>3.1 </span><span>经本站注册系统完成注册程序并通过身份认证的用户即成为正式用户，可以获得本站规定用户所应享有的一切权限；未经认证仅享有本站规定的部分会员权限。本网站有权对会员的权限设计进行变更。<span>
					<br> 3.2
			</span>用户只能按照注册要求使用真实姓名，及身份证号注册。用户有义务保证密码和帐号的安全，用户利用该密码和帐号所进行的一切活动引起的任何损失或损害，由用户自行承担全部责任，本站不承担任何责任。如用户发现帐号遭到未授权的使用或发生其他任何安全问题，应立即修改帐号密码并妥善保管，如有必要，请通知本站。因黑客行为或用户的保管疏忽导致帐号非法使用，本站不承担任何责任。
			</span>
		</p>
		<p>
			<strong><span>四、使用规则</span></strong>
		</p>
		<p>
			<span>4.1 </span><span>遵守中华人民共和国相关法律法规，包括但不限于《中华人民共和国计算机信息系统安全保护条例》、《计算机软件保护条例》、《最高人民法院关于审理涉及计算机网络著作权纠纷案件适用法律若干问题的解释<span>(</span>法释<span>[2004]1</span>号<span>)</span>》、《全国人大常委会关于维护互联网安全的决定》、《互联网电子公告服务管理规定》、《互联网新闻信息服务管理规定》、《互联网著作权行政保护办法》和《信息网络传播权保护条例》等有关计算机互联网规定和知识产权的法律和法规、实施办法。<span>
					<br> 4.2
			</span>用户对其自行发表、上传或传送的内容负全部责任，所有用户不得在本站任何页面发布、转载、传送含有下列内容之一的信息，否则本站有权自行处理并不通知用户：<span><br>
					(1)</span>违反宪法确定的基本原则的；<span> <br> (2)
			</span>危害国家安全，泄漏国家机密，颠覆国家政权，破坏国家统一的；<span> <br> (3)
			</span>损害国家荣誉和利益的；<span> <br> (4)
			</span>煽动民族仇恨、民族歧视，破坏民族团结的；<span> <br> (5)
			</span>破坏国家宗教政策，宣扬邪教和封建迷信的；<span> <br> (6)
			</span>散布谣言，扰乱社会秩序，破坏社会稳定的；<span><br> (7)</span>散布淫秽、色情、赌博、暴力、恐怖或者教唆犯罪的；<span>
					<br> (8)
			</span>侮辱或者诽谤他人，侵害他人合法权益的；<span> <br> (9)
			</span>煽动非法集会、结社、游行、示威、聚众扰乱社会秩序的；<span> <br> (10)
			</span>以非法民间组织名义活动的；<span><br> (11)</span>含有法律、行政法规禁止的其他内容的。<span>
					4.3 </span>用户承诺对其发表或者上传于本站的所有信息<span>(</span>即属于《中华人民共和国著作权法》规定的作品，包括但不限于文字、图片、音乐、电影、表演和录音录像制品和电脑程序等<span>)</span>均享有完整的知识产权，或者已经得到相关权利人的合法授权；如用户违反本条规定造成本站被第三人索赔的，用户应全额补偿本站一切费用<span>(</span>包括但不限于各种赔偿费、诉讼代理费及为此支出的其它合理费用<span>)</span>；<span>
					<br> 4.4
			</span>当第三方认为用户发表或者上传于本站的信息侵犯其权利，并根据《信息网络传播权保护条例》或者相关法律规定向本站发送权利通知书时，用户同意本站可以自行判断决定删除涉嫌侵权信息，除非用户提交书面证据材料排除侵权的可能性，本站将不会自动恢复上述删除的信息；<span>
					(1)</span>不得为任何非法目的而使用网络服务系统；<span> <br> (2)
			</span>遵守所有与网络服务有关的网络协议、规定和程序；<span> (3)</span>不得利用本站进行任何可能对互联网的正常运转造成不利影响的行为；<span>
					<br> (4)
			</span>不得利用本站进行任何不利于本站的行为。<span> 4.5 </span>如用户在使用网络服务时违反上述任何规定，本站有权要求用户改正或直接采取一切必要的措施<span>(</span>包括但不限于删除用户张贴的内容、暂停或终止用户使用网络服务的权利<span>)</span>以减轻用户不当行为而造成的影响。
			</span>
		</p>
		<p>
			<strong><span>五、隐私保护</span></strong>
		</p>
		<p>
			<span>5.1 </span><span>本站不对外公开或向第三方提供单个用户的注册资料及用户在使用网络服务时存储在本站的非公开内容，但下列情况除外：<span>
					(1)</span>事先获得用户的明确授权；<span> <br> (2)
			</span>根据有关的法律法规要求；<span><br> (3)</span>按照相关政府主管部门的要求；<span><br>
					(4)</span>为维护社会公众的利益。<span> 5.2 </span>本站可能会与第三方合作向用户提供相关的网络服务，在此情况下，如该第三方同意承担与本站同等的保护用户隐私的责任，则本站有权将用户的注册资料等提供给该第三方。<span><br>
					5.3 </span>在不透露单个用户隐私资料的前提下，本站有权对整个用户数据库进行分析并对用户数据库进行商业上的利用。
			</span>
		</p>
		<p>
			<strong><span>六、版权声明</span></strong>
		</p>
		<p>
			<span>6.1 </span><span>本站的文字、图片、音频、视频等版权均归安亿软件有限公司享有或与作者共同享有，未经本站许可，不得任意转载。<span>
					<br> 6.2
			</span>本站特有的标识、版面设计、编排方式等版权均属安亿软件有限公司享有，未经本站许可，不得任意复制或转载。<span> <br>
					6.3
			</span>使用本站的任何内容均应注明<span>“</span>来源于本网站<span>”</span>及署上作者姓名，按法律规定需要支付稿酬的，应当通知本站及作者及支付稿酬，并独立承担一切法律责任。<span><br>
					6.4 </span>本站享有所有作品用于其它用途的优先权，包括但不限于网站、电子杂志、平面出版等，但在使用前会通知作者，并按同行业的标准支付稿酬。<span><br>
					6.5 </span>本站所有内容仅代表作者自己的立场和观点，与本站无关，由作者本人承担一切法律责任。<span> <br>
					6.6
			</span>恶意转载本站内容的，本站保留将其诉诸法律的权利。
			</span>
		</p>
		<p>
			<strong><span>七、责任声明</span></strong>
		</p>
		<p>
			<span>7.1 </span><span>用户明确同意其使用本站网络服务所存在的风险及一切后果将完全由用户本人承担，本网站对此不承担任何责任。<span>
					<br> 7.2
			</span>本站无法保证网络服务一定能满足用户的要求，也不保证网络服务的及时性、安全性、准确性。<span> <br> 7.3
			</span>本站不保证为方便用户而设置的外部链接的准确性和完整性，同时，对于该等外部链接指向的不由本站实际控制的任何网页上的内容，本站不承担任何责任。<span><br>
					7.4 </span>对于因不可抗力或本站不能控制的原因造成的网络服务中断或其它缺陷，本站不承担任何责任，但将尽力减少因此而给用户造成的损失和影响。<span><br>
					7.5 </span>对于站向用户提供的下列产品或者服务的质量缺陷本身及其引发的任何损失，本站无需承担任何责任：<span> (1)</span>本站向用户免费提供的各项网络服务；<span>
					<br> (2)
			</span>本站向用户赠送的任何产品或者服务。<span> 7.6 </span>本站有权于任何时间暂时或永久修改或终止本服务<span>(</span>或其任何部分<span>)</span>，而无论其通知与否，本站对用户和任何第三人均无需承担任何责任。
			</span>
		</p>
		<p>
			<strong><span>八、附则</span></strong>
		</p>
		<p>
			<span>8.1 </span><span>本协议的订立、执行和解释及争议的解决均应适用中华人民共和国法律。<span>
					<br> 8.2
			</span>如本协议中的任何条款无论因何种原因完全或部分无效或不具有执行力，本协议的其余条款仍应有效并且有约束力。<span><br>
					8.3 </span>本协议解释权及修订权归珠海安亿软件有限公司所有。
			</span>
		</p>
		<p></p>
	</div>



	<input type="hidden" id="E.noPermissionAction"
		value='<spring:message code="E.noPermissionAction"/>' />
	<input type="hidden" id="N.plsLogin"
		value='<spring:message code="N.plsLogin"/>' />
	<input type="hidden" id="N.anyiAcount"
		value='<spring:message code="N.anyiAcount"/>' />
	<input type="hidden" id="N.password"
		value='<spring:message code="N.password"/>' />
	<input type="hidden" id="B.User.userVerifyCode"
		value='<spring:message code="B.User.userVerifyCode"/>' />
	<input type="hidden" id="N.email"
		value='<spring:message code="N.email"/>' />
	<input type="hidden" id="N.mobile"
		value='<spring:message code="N.mobile"/>' />
	<input type="hidden" id="N.tempPassword"
		value='<spring:message code="N.tempPassword"/>' />
	<input type="hidden" id="N.login"
		value='<spring:message code="N.login"/>' />
	<input type="hidden" id="N.phoneMailName"
		value='<spring:message code="N.phoneMailName"/>' />
	<input type="hidden" id="N.toRegister"
		value='<spring:message code="N.toRegister"/>' />
	<input type="hidden" id="N.nextAutoLogin"
		value='<spring:message code="N.nextAutoLogin"/>' />
	<input type="hidden" id="N.otherWay"
		value='<spring:message code="N.otherWay"/>' />
	<input type="hidden" id="E.passwordRequired"
		value='<spring:message code="E.passwordRequired"/>' />
	<input type="hidden" id="E.acountRequired"
		value='<spring:message code="E.acountRequired"/>' />
	<input type="hidden" id="E.emailRequired"
		value='<spring:message code="E.emailRequired"/>' />
	<input type="hidden" id="N.emailFast"
		value='<spring:message code="N.emailFast"/>' />
	<input type="hidden" id="N.mobileFast"
		value='<spring:message code="N.mobileFast"/>' />
	<input type="hidden" id="N.mobileFastTips"
		value='<spring:message code="N.mobileFastTips"/>' />
	<input type="hidden" id="N.emailFastTips"
		value='<spring:message code="N.emailFastTips"/>' />
	<input type="hidden" id="N.protocol"
		value='<spring:message code="N.protocol"/>' />
	<input type="hidden" id="E.mobileRequired"
		value='<spring:message code="E.mobileRequired"/>' />
	<input type="hidden" id="E.mobileVCodeRequired"
		value='<spring:message code="E.mobileVCodeRequired"/>' />
	<input type="hidden" id="E.mobileLength"
		value='<spring:message code="E.mobileLength"/>' />
	<input type="hidden" id="E.User.userEmail"
		value='<spring:message code="E.User.userEmail"/>' />
	<input type="hidden" id="N.toLogin"
		value='<spring:message code="N.toLogin"/>' />
	<input type="hidden" id="E.User.userPassword"
		value='<spring:message code="E.User.userPassword"/>' />
	<input type="hidden" id="E.retryPassword"
		value='<spring:message code="E.retryPassword"/>' />
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
	<input type="hidden" id="E.accountExist"
		value='<spring:message code="E.accountExist"/>' />
	<input type="hidden" id="N.accountRegisterPleaseholder"
		value='<spring:message code="N.accountRegisterPleaseholder"/>' />
	<input type="hidden" id="N.mobileLogin"
		value='<spring:message code="N.mobileLogin"/>' />
	<input type="hidden" id="N.valifyIsLogin"
		value='<spring:message code="N.valifyIsLogin"/>' />
	<input type="hidden" id="N.emailLogin"
		value='<spring:message code="N.emailLogin"/>' />
	<input type="hidden" id="E.mobileExist"
		value='<spring:message code="E.mobileExist"/>' />
	<input type="hidden" id="N.ifForgetPwd"
		value='<spring:message code="N.ifForgetPwd"/>' />












	<%@include file="/WEB-INF/jsp/project/base/page/footer.jsp"%>
</body>

<script type="text/javascript"
	src="${ctx }/static/project/base/js/login.js">
	
</script>
</html>