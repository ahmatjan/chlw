<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<style>div.My_account{ width:778px; padding:0px;} div.My_account h2{ margin:0 14px;}</style>
   
<%@ page import="net.sf.json.JSONObject,com.jrt.invokeLot.util.JSONReslutUtil,com.jrt.invokeLot.lot.bean.Tuserinfo" %>
<%	
	JSONObject tuserinfo = JSONReslutUtil.getUserInfo(request);
	Tuserinfo tuser = Tuserinfo.setJson(tuserinfo.getJSONObject("value"));
	String mobile = tuser.getMOBILEID();
%>
<div class="My_account_title">
	<strong>账户充值</strong>
</div>
<div class="account_recharge">
	<ul class="account_rechargeTab" >
		<li onclick="BaseTab($(this));" ControlTarget=".rechargeWizard" class="light">充值向导</li>
		<li onclick="BaseTab($(this))" ControlTarget=".netCharge" class="light ">网银充值</li>
		<li onclick="BaseTab($(this));" ControlTarget=".bankCardPhone" class="light selected">银行卡电话充值</li>
		<li onclick="BaseTab($(this));" ControlTarget=".mobileRechargeCard" class="light">手机充值卡充值</li>
		<li  onclick="BaseTab($(this))" ControlTarget=".BankTransfer" class="light">银行转账</li>
	</ul>
	<form action="/rules/user.html?key=4" id="chargeForm" name='chargeForm' method='post' target='_blank' >
		<input type="hidden" name='orderinfo' id='orderinfo' value="" />
	</form>
</div>
<div class="account_rechargeContent">
<div class="rechargeWizard none">
		<table width="100%" border="1" cellspacing="0" cellpadding="0" class="recharge_wizardTable">
			<tr>
				<th>充值方式</th>
				<th>适合人群</th>
				<th>特点</th>
			</tr>
			<tr>
				<td>网上银行</td>
				<td>开通了网上银行的用户</td>
				<td>银行卡需开通网上银行，在网上银行页面付款</td>
			</tr>
			<tr>
				<td>支付宝在线充值</td>
				<td>有支付宝账号且有余额的用户</td>
				<td>可以把支付宝的余额充值到如意彩网账户</td>
			</tr>
			<tr>
				<td>支付宝语音充值</td>
				<td>手机已注册或绑定支付宝账户且账户内有余额</td>
				<td>接听支付宝语音电话，或回复支付宝短信就可以完成充值操作</td>

			</tr>
			<tr>
				<td>手机充值卡充值</td>
				<td>有手机充值卡的用户</td>
				<td>手机充值卡输入卡号密码，就可以为如意彩网帐户充值</td>
			</tr>
			<tr>
				<td>银行卡电话充值</td>
				<td>未办理网银的普通储蓄卡用户</td>
				<td>办理了普通银联储蓄卡即可充值</td>
			</tr>
		</table>
		<p class="recharge_title">网银充值说明</p>
		<dl class="recharge_explain">
			<dt>一、网银充值手续费由如意彩网支付，用户无须支付任何网银手续费。一般从支付完毕到资金进入如意彩网账户只需要5秒。</dt>
			<dt>二、网银充值需要您已经开通对应银行卡的网上银行业务。</dt>
			<dd>1、在银行柜台办理开通网上支付业务，需提供如下资料：申请人本人有效身份证件、所需注册的本地银行卡。</dd>
			<dd>2、银行经办员审核上述资料无误后，将与客户签署《网上银行个人客户服务协议》，办理注册资料录入、设置网上银行密码等</dd>
			<dd> 注册手续。</dd>
			<dd>3、下一银行工作日客户即可使用个人网上银行系统。</dd>
			<dt>三、各银行网上支付演示及官方网站 </dt>
			<dd>工商银行网银支付演示官方网站：<a href="http://www.icbc.com.cn">http://www.icbc.com.cn</a></dd>
			<dd>建设银行网银支付演示官方网站：<a href="http://www.ccb.cn">http://www.ccb.cn</a></dd>
			<dd>农业银行网银支付演示官方网站：<a href="http://www.95599.cn">http://www.95599.cn</a></dd>
			<dd>招商银行网银支付演示官方网站：<a href="http://www.cmbchina.com">http://www.cmbchina.com</a></dd>
			<dd>浦发银行网银支付演示官方网站：<a href="http://www.spdb.com.cn">http://www.spdb.com.cn</a></dd>
			<dd>交通银行网银支付演示官方网站：<a href="http://www.bankcomm.com">http://www.bankcomm.com</a></dd>
			<dd>广发银行网银支付演示官方网站：<a href="http://www.gdb.com.cn">http://www.gdb.com.cn</a></dd>
			<dd>兴业银行网银支付演示官方网站：<a href="http://www.cib.com.cn/netbank/cn/index.html">http://www.cib.com.cn/netbank/cn/index.html</a></dd>
			<dd>深圳发展银行网银支付演示官方网站：<a href="http://www.sdb.com.cn">http://www.sdb.com.cn</a></dd>
			<dd>民生银行网银支付演示官方网站：<a href="http://www.cmbc.com.cn">http://www.cmbc.com.cn</a></dd>
			<dd>中国邮政储蓄银行网银支付演示官方网站：<a href="http://www.psbc.com/portal/zh_CN/index.html">http://www.psbc.com/portal/zh_CN/index.html</a></dd>
			<dd>中信银行网银支付演示官方网站：<a href="http://bank.ecitic.com">http://bank.ecitic.com</a></dd>
			<dt> 四、银联在线支付是中国银联为满足各方对网上支付服务的需求而打造的银行卡网上交易转接清算平台，支持的卡包括借记卡、</dt>
			<dd>信用卡、储值卡等，统一、快速、便捷，使用银联无卡支付，无需开通网银，注册后只需输入您的用户名、登录密码即可</dd>
			<dd>完成支付。</dd>
		</dl>
		<p class="recharge_title">手机充值卡充值说明</p>
		<dl class="recharge_explain">
			<dt><b>充值金额必须选择和充值卡面值相等，否则会导致充值失败，损失金额无法找回； 同一张充值卡的卡号和密码只能提交一次，请确</b></dt>
			<dt><b>保输入无误 再点击"立即充值"。</b></dt>
		</dl>
		<p class="recharge_title">银行卡电话充值说明</p>
		<dl class="recharge_explain">
			<dt>一、银行卡电话充值由中国银联采用卡密分离核心专利技术,彻底保障用户支付交易安全。</dt>
			<dt>二、普通银联储蓄卡即可使用，无需开通网银及下载证书。</dt>
			<dt>三、目前支持以下银行：招行、农行、中信、浦发、深发、华夏银行；其他银行后续增加。</dt>
			<dt>四、提交信息后，您的手机将收到银联02096585的来电，请按语音提示输入银行卡密码完成支付。</dt>
			<dt>五、单笔充值金额超过100元（含），不收取手续费；低于100元，由银联代收1元手续费。充值不成功，不收任何费用。每日最高支</dt>
			<dd>付限额1000元。</dd>
			<dt><b>六、首次使用该支付方式后，系统将默认绑定该银行卡作为您再次电话支付和申请提现的唯一专用卡。</b></dt>
		</dl>
		<p class="space15">&#160;</p>
	</div>
<%//--充值向导end--%>
<%//--网银充值--%>
	<div class="netCharge none" >
		<form method="post" id="MinshengForm" name="form2"  >
		<p class="recharge_title">您选择的是网上银行充值</p>
		<p class="netCharge_title">1、请输入充值金额</p>
		<div class="netCharge_low"><input name="chargeBean.transaction_money" id="minshengMoney" type="text" class="netCharge_input" />元<span>（每笔充值最低5元，免手续费）</span></div>
		<input id="isMobile" type="hidden" value="<%=mobile %>">
		<p class="netCharge_title">2、请您选择以下支付平台支付：</p>
		<div class="netCharge_bankCards">
			<dl class="RadioButton RadioButton_position" onclick="RadioButtons($(this),'0602','radiobutton','light bankCard_img onlinePayment')" onmouseover="PopupOn($(this))" onmouseout="PopupOff($(this))" Offset="br,0,0" BoxStyle=" width:144px; padding:0 10px; border:solid 1px #E3E3E3; background:#F8F8F8;" Content="<h3 style='color:#F00; font-weight:bold; line-height:22px;'>银联在线支付</h3><p style='line-height:20px; color:#666666;'>银联在线支付是银联为持卡人提供的一种安全快捷的支付模式。使用银联无卡支付，无需开通网银，注册后只需输入您的用户名、登录密码即可完成支付。</p>"><dt class="light selected" ></dt><dd class="light bankCard_img onlinePayment selected"></dd></dl>
			<dl class="RadioButton RadioButton_position" onclick="RadioButtons($(this),'0600','radiobutton','light bankCard_img bank_electronic')"><dt class="light" ></dt><dd class="light bankCard_img bank_electronic"></dd></dl>
			<dl class="RadioButton RadioButton_position" onclick="RadioButtons($(this),'03','radiobutton','light bankCard_img ahpaycomonline')"><dt class="light"></dt><dd class="light bankCard_img ahpaycomonline" ></dd></dl>
			<dl class="RadioButton RadioButton_position" onclick="RadioButtons($(this),'zfbyy','radiobutton','light bankCard_img ahpaycomyuyin')"><dt class="light"></dt><dd class="light bankCard_img ahpaycomyuyin"></dd></dl>
			<div class="clear_float">&#160;</div>
			<p class="netCharge_title">  请您选择以下支付平台支付：</p>
			<div class="clear_float">&#160;</div>
			<dl class="RadioButton RadioButton_position" onclick="RadioButtons($(this),'CCB','radiobutton','light bankCard_img jianshe','light bankCard_img jianshe')"><dt class="light" ></dt><dd class="light bankCard_img jianshe"></dd></dl>
			<dl class="RadioButton RadioButton_position" onclick="RadioButtons($(this),'ICBCB2C','radiobutton','light bankCard_img gongshang')"><dt class="light" ></dt><dd class="light bankCard_img gongshang"></dd></dl>
			<dl class="RadioButton RadioButton_position" onclick="RadioButtons($(this),'CMB','radiobutton','light bankCard_img zhaoshang')"><dt class="light" ></dt><dd class="light bankCard_img zhaoshang"></dd></dl>
			<dl class="RadioButton RadioButton_position" onclick="RadioButtons($(this),'CEBBANK','radiobutton','light bankCard_img guangda')"><dt class="light" ></dt><dd class="light bankCard_img guangda"></dd></dl>
			<div class="clear_float">&#160;</div>
			<dl class="RadioButton RadioButton_position" onclick="RadioButtons($(this),'BOCB2C','radiobutton','light bankCard_img zhongguo')"><dt class="light"></dt><dd class="light bankCard_img zhongguo" ></dd></dl>
			<dl class="RadioButton RadioButton_position" onclick="RadioButtons($(this),'COMM','radiobutton','light bankCard_img jiaotong')"><dt class="light" ></dt><dd class="light bankCard_img jiaotong"></dd></dl>
			<dl class="RadioButton RadioButton_position" onclick="RadioButtons($(this),'minShengBanks','radiobutton','light bankCard_img minsheng')"><dt class="light"></dt><dd class="light bankCard_img minsheng"></dd></dl>
			<dl class="RadioButton RadioButton_position" onclick="RadioButtons($(this),'ABC','radiobutton','light bankCard_img nongye')"><dt class="light"></dt><dd class="light bankCard_img nongye"></dd></dl>
			<div class="clear_float">&#160;</div>
			<dl class="RadioButton RadioButton_position" onclick="RadioButtons($(this),'SPDBB2B','radiobutton','light bankCard_img pufa')"><dt class="light"></dt><dd class="light bankCard_img pufa"></dd></dl>
			<dl class="RadioButton RadioButton_position" onclick="RadioButtons($(this),'SDB','radiobutton','light bankCard_img shenzhen')"><dt class="light"></dt><dd class="light bankCard_img shenzhen"></dd></dl>
			<dl class="RadioButton RadioButton_position" onclick="RadioButtons($(this),'CIB','radiobutton','light bankCard_img xingye')"><dt class="light"></dt><dd class="light bankCard_img xingye"></dd></dl>
			<dl class="RadioButton RadioButton_position" onclick="RadioButtons($(this),'GDB','radiobutton','light bankCard_img guangfa')"><dt class="light"></dt><dd class="light bankCard_img guangfa" ></dd></dl>
			<div class="clear_float">&#160;</div>
			<dl class="RadioButton RadioButton_position" onclick="RadioButtons($(this),'CITIC','radiobutton','light bankCard_img zhongxin')"><dt class="light"></dt><dd class="light bankCard_img zhongxin"></dd></dl>
			<dl class="RadioButton RadioButton_position" onclick="RadioButtons($(this),'SHBANK','radiobutton','light bankCard_img shanghai')"><dt class="light"></dt><dd class="light bankCard_img shanghai"></dd></dl>
			<dl class="RadioButton RadioButton_position" onclick="RadioButtons($(this),'NBBANK','radiobutton','light bankCard_img ningbo')"><dt class="light"></dt><dd class="light bankCard_img ningbo"></dd></dl>
			<dl class="RadioButton RadioButton_position" onclick="RadioButtons($(this),'HZCBB2C','radiobutton','light bankCard_img hangzhou')"><dt class="light"></dt><dd class="light bankCard_img hangzhou" ></dd></dl>
			<div class="clear_float">&#160;</div>
		</div>
		<%/** <li><input name="radiobutton" type="radio" id="radio14" value="yeepay" onclick=" javascript:bankRadioCharge('radiobutton');">
		<img src="/images/yeepayCharge.jpg" alt="易宝充值" title="易宝充值" width="113" height="35" onclick="javascript:document.form2.radio14.checked='checked',bankRadioCharge('radiobutton');"></li>*/ %>
		<input  id ="radiobutton" name="radiobutton" value="0602" type="hidden" class= "light bankCard_img onlinePayment" >
		<%/**<p class="netCharge_bonus"><input id="ladderflag" name="ladderflag" type="checkbox"  checked="checked"/>我要参加“<a style="color:#1F376D;"  href="/activity/activity20120214.html" target="_blank">单笔充值满百元即返现5%</a>”的活动（<b>充值金额及赠送彩金只能用于购彩，不能提现，中奖奖金可以提现</b>）。</p>*/ %>
		<div class="netCharge_nextbtn"><input type="button" onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))" onclick="ChargeTruePage()" value="下一步"/></div>
		<p class="netCharge_explain" id="minshengNo">本次充值由<span id="dis">上海银联电子支付</span>提供接口支持。</p>
		<p class="netCharge_explain">大部分银行要求使用IE浏览器进行充值，为确保充值成功，建议您更换后继续操作。</p>
		<div class="space15">&#160;</div>
		</form>
	</div>

<%//--网银充值end--%>
<%//--银行卡电话充值--%>

	<div class="bankCardPhone selected none" id="bankDiv">
		 <form action="" name="dnaForm" id="dnaForm" method="post" class="tzjl_form">
			 <div  id="div1" > 
				<ul>
					<li>注意：首次使用该支付方式后，系统将默认绑定该银行卡作为您再次电话支付和申请提现的唯一专用卡，信用卡不能用于提现！</li>
			  					<li>　　　使用银联电话支付每笔充值最低20元，免手续费。</li>	
				</ul>
				<table width="100%" border="1" cellspacing="0" cellpadding="0">
					<tr>
						<th width="90">银行卡号</th>
						<td  id="nextcardid" name="chargeBean.cardNumber"><s:property value="#session.short_bankCard"/>******</td>
					</tr>
					<tr>
						<th>充值金额</th>
						<td>
						<input type="text"  size="25" maxlength="40" tabindex="2" name="chargeBean.transaction_money" id="amount" value="" onblur="amountCheck()" class="bankCardPhone_input"/>
						<font>元</font>
						<span class="modifyPassword_img" id="amountImage">		
						</span> <span id="amountfont">20元以上的整数金额</span></td>
					</tr>
					<tr>
						<th>手机号码</th>
						<td>
						<s:if test="#session.dna_hiddenName=='grayList'">
							<input  type="text" class="bankCardPhone_input" style="border:none;" disabled="true" id="tel" value="<s:property value='#session.dna_tel'/>"/>
							<input type="hidden"  name="chargeBean.tel" value="<s:property value='#session.dna_tel'/>"/>
						</s:if><s:else>
						<input type="text" size="25" class="bankCardPhone_input" maxlength="40" tabindex="3" name="chargeBean.tel" id="tel" onblur="telCheck()" value=""></s:else>
						<span id="telImage"></span><span  id="telfont"></span>
						</td>
					</tr>
					<tr>
						<th>登录密码</th>
						<td>
						<input name="password" type="password" class="bankCardPhone_input" tabindex="4" value=""  id="password" onblur="testpassword()"/>
						<span class="modifyPassword_img" id="passwordImage"></span><span id="passwordfont">请输入您的如意彩登录密码</span></td>
					</tr>
					<s:if test="#session.dna_hiddenName=='grayList'">
						<%/*  <tr>
							<td colspan="2"><p class="netCharge_bonus"><input name="ladderflag" type="checkbox" checked="checked"/>我要参加“<a style="color:#1F376D;"  href="/activity/activity20120214.html" target='_blank'>单笔充值满百元即返现5%</a>”的活动（<b>充值金额及赠送彩金只能用于购彩，不能提现，中奖奖金可以提现</b>）。</p></td>
						</tr>*/ %>
					</s:if>
					<tr>
						<td colspan="2" class="bankCardPhone_twoStep"><input type="button" id="dnabutton" onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))" onclick="jumpthreeUrl()" value="下一步"/>
						<span id="dnareturn"><s:if test="#session.dna_hiddenName!='grayList'"><font class="blue"><a href="javascript:chargeOnload(4)" title="返回修改">返回修改</a></font></s:if></span></td>
					</tr>
				</table>
			 </div> 
		</form> 
	</div>
	<%//--手机卡充值卡充值--%>
	<div class="mobileRechargeCard none" id="mobileChargeId">
	<form action="" method="post" name="pointForm" id="pointForm">
		<p class="recharge_title">您选择的是话费充值</p>
		
		<p class="netCharge_title">1、请选择充值卡类型</p>
		<div class="space10">&#160;</div>
		<div class="mobileRechargeCard_table">
				<dl class="RadioButton"><dt onclick="RadioButtons($(this),'SZX','netCharge_type')" ControlTarget=".chinaMobile" class="light selected"></dt><dd class="light selected" onclick="RadioButtons($(this))"  ControlTarget=".chinaMobile"><img width="172" height="52" src="../images/chinaMobile.gif"></dd></dl>
				<dl class="RadioButton"><dt onclick="RadioButtons($(this),'UNICOM','netCharge_type')"  ControlTarget=".chinaUnicom" class="light"></dt><dd class="light" onclick="RadioButtons($(this))"  ControlTarget=".chinaUnicom"><img width="172" height="52" src="../images/chinaUnicom.gif"></dd></dl>
				<dl class="RadioButton"><dt onclick="RadioButtons($(this),'DXJFK','netCharge_type')"  ControlTarget=".chinaTelecom" class="light"></dt><dd class="light" onclick="RadioButtons($(this))"  ControlTarget=".chinaTelecom"><img width="172" height="52" src="../images/chinaTelecom.gif"></dd></dl>
				<input id="netCharge_type" name ="radioName" value="SZX" type = "hidden"/>
		</div>
		<div class="mobileRechargeCard_address"><span>仅支持移动全国卡和浙江<br />辽宁、江苏、福建地方</span><span>仅支持全国充值卡</span><span>　　仅支持全国充值卡</span></div>
		<div class="space10">&#160;</div>
		<p class="netCharge_title">2、确认充值卡面值</p>
		<div class="space10">&#160;</div>
		<div id="huafei" class="mobileRechargeCard_money chinaMobile none selected">
			<dl class="RadioButton"><dt class="light selected" onclick="RadioButtons($(this),'10','mzmoney')"></dt><dd><b>10元</b></dd><dd>实际到账9.6元，运营商收取服务费0.4元</dd></dl>
			<dl class="RadioButton"><dt class="light" onclick="RadioButtons($(this),'20','mzmoney')"></dt><dd><b>20元</b></dd><dd>实际到账19.2元，运营商收取服务费0.8元</dd></dl>
			<dl class="RadioButton"><dt class="light" onclick="RadioButtons($(this),'30','mzmoney')"></dt><dd><b>30元</b></dd><dd>实际到28.8元，运营商收取服务费1.2元</dd></dl>
			<dl class="RadioButton"><dt class="light" onclick="RadioButtons($(this),'50','mzmoney')"></dt><dd><b>50元</b></dd><dd>实际到账48元，运营商收取服务费2元</dd></dl>
			<dl class="RadioButton"><dt class="light" onclick="RadioButtons($(this),'100','mzmoney')"></dt><dd><b>100元</b></dd><dd>实际到账96元，运营商收取服务费4元</dd></dl>
			<dl class="RadioButton"><dt class="light" onclick="RadioButtons($(this),'200','mzmoney')"></dt><dd><b>200元</b></dd><dd>实际到账192元，运营商收取服务费8元</dd></dl>
			<dl class="RadioButton"><dt class="light" onclick="RadioButtons($(this),'300','mzmoney')"></dt><dd><b>300元</b></dd><dd>实际到账288元，运营商收取服务费12元</dd></dl>
			<dl class="RadioButton"><dt class="light" onclick="RadioButtons($(this),'500','mzmoney')"></dt><dd><b>500元</b></dd><dd>实际到账480元，运营商收取服务费20元</dd></dl>
			<input  id ="mzmoney" name="mzmoney" value="10" type="hidden">
		</div>
		<div id="liantong" class="mobileRechargeCard_money chinaUnicom none ">
			<dl class="RadioButton"><dt class="light selected" onclick="RadioButtons($(this),'20','mzmoney1')"></dt><dd><b>20元</b></dd><dd>实际到账19.2元，运营商收取服务费0.8元</dd></dl>
			<dl class="RadioButton"><dt class="light" onclick="RadioButtons($(this),'30','mzmoney1')"></dt><dd><b>30元</b></dd><dd>实际到28.8元，运营商收取服务费1.2元</dd></dl>
			<dl class="RadioButton"><dt class="light" onclick="RadioButtons($(this),'50','mzmoney1')"></dt><dd><b>50元</b></dd><dd>实际到账48元，运营商收取服务费2元</dd></dl>
			<dl class="RadioButton"><dt class="light" onclick="RadioButtons($(this),'100','mzmoney1')"></dt><dd><b>100元</b></dd><dd>实际到账96元，运营商收取服务费4元</dd></dl>
			<dl class="RadioButton"><dt class="light" onclick="RadioButtons($(this),'200','mzmoney1')"></dt><dd><b>200元</b></dd><dd>实际到账192元，运营商收取服务费8元</dd></dl>
			<dl class="RadioButton"><dt class="light" onclick="RadioButtons($(this),'200','mzmoney1')"></dt><dd><b>300元</b></dd><dd>实际到账288元，运营商收取服务费12元</dd></dl>
			<dl class="RadioButton"><dt class="light" onclick="RadioButtons($(this),'500','mzmoney1')"></dt><dd><b>500元</b></dd><dd>实际到账480元，运营商收取服务费20元</dd></dl>
		<input  id ="mzmoney1" name="mzmoney1" value="20" type="hidden">
		</div>
		<div id="game" class="mobileRechargeCard_money chinaTelecom none ">
			<dl class="RadioButton"><dt class="light selected" onclick="RadioButtons($(this),'20','mzmoney2')"></dt><dd><b>20元</b></dd><dd>实际到账19.2元，运营商收取服务费0.8元</dd></dl>
			<dl class="RadioButton"><dt class="light" onclick="RadioButtons($(this),'30','mzmoney2')"></dt><dd><b>30元</b></dd><dd>实际到28.8元，运营商收取服务费1.2元</dd></dl>
			<dl class="RadioButton"><dt class="light" onclick="RadioButtons($(this),'50','mzmoney2')"></dt><dd><b>50元</b></dd><dd>实际到账48元，运营商收取服务费2元</dd></dl>
			<dl class="RadioButton"><dt class="light" onclick="RadioButtons($(this),'100','mzmoney2')"></dt><dd><b>100元</b></dd><dd>实际到账96元，运营商收取服务费4元</dd></dl>
		<input  id ="mzmoney2" name="mzmoney2" value="20" type="hidden">
		</div>
		<div class="space10">&#160;</div>
		<p class="netCharge_title">3、输入充值卡号和密码</p>
		<div class="space10">&#160;</div>
		<table cellspacing="0" cellpadding="0" class="mobileRechargeCard_login">
			<tr>
				<td width="60">充值卡号：</td>
				<td width="600"><input name="chargeBean.card_no" id="cardNoPoint" onkeyup="javascript:$('#pointLength').html($('#cardNoPoint').val().length);" type="text" value=""  class="mobileRechargeCard_inputBox"/></td>
			</tr>
			<tr>
				<td width="60">充值密码：</td>
				<td><input name="chargeBean.card_pwd" id="cardPassword" onkeyup="javascript:$('#pwdLength').html($('#cardPassword').val().length);" type="text" value=""  class="mobileRechargeCard_inputBox"/></td>
			</tr>
			<%/*  <tr>
				<td colspan="2" ><p class="netCharge_bonus1"><input name="ladderflag" type="checkbox" checked="checked"/>我要参加“<a style="color:#1F376D;" href="/activity/activity20120214.html" target="_blank">单笔充值满百元即返现5%</a>”的活动（<b>充值金额及赠送彩金只能用于购彩，不能提现，中奖奖金可以提现</b>）。</p></td>
			</tr>*/ %>
			<tr>
				<td colspan="2" class="mobileRechargeCard_next"><input type="button" onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))" id="pointSubmit" onclick="ajaxPointFill()" value="下一步"></td>
			</tr>
		</table>
		<p class="mobileRechargeCard_p">重要提示：<b>请务必使用与此面额相同的移动充值卡，否则会导致支付不成功，或金额丢失。</b></p>
		<p class="mobileRechargeCard_p">　　　　　（使用面额100元的移动充值卡但选择50元，高于50元部分不返还；使用50元卡但选择100元，支付失败，50元不返还。）</p>
		<p class="mobileRechargeCard_p">　　　　　不支持彩铃充值卡和短信充值卡，选择任何面额彩铃充值卡，将不予退还任何金额。</p>
		<p class="mobileRechargeCard_p">注意事项：1.使用本卡充值，充值金额只能用于在本站购买彩票，不能提现，中奖奖金可提现。</p>
		<p class="mobileRechargeCard_p">　　　　　2.充值手续费由运营商或充值服务商收取，从充值金额中直接扣除。</p>
		<div class="space10">&#160;</div>
	</form>
	</div>

<%//--手机卡充值卡充值end--%>
<%//--银行转账--%>
	<div class="BankTransfer none">
		<p class="Bank_p">通过银行柜台、ATM或者网上银行转帐到以下账户，转账后通知客服（电话：<b>400-665-1000</b>）办理资金入账</p>
		<p class="Bank_title">账户名称：北京金软瑞彩科技有限公司</p>
		<p class="Bank_title">开&nbsp;&nbsp;户&nbsp;&nbsp;行：民生银行北京航天桥支行</p>
		<p class="Bank_title">账　　号：<b>0142014170003875</b></p>
		
		<p class="recharge_title">温馨提示：</p>
		<dl class="Bank_explain">
			<dt>转账时请务必注明用户名，并请设置零头，比如137.01元，便于客服快速核对处理；</dt>
			<dt>为了节省转帐手续费，请尽量选择同行转帐；</dt>
			<dt>转帐后请及时通知客服办理资金入账，客服电话：400-665-1000；</dt> 
		</dl>
		<p class="recharge_title">北京用户可带现金到公司入账</p>
		<dl class="Bank_explain">
			<dt>公司名称：北京金软瑞彩科技有限公司</dt>
			<dt>公司地址：北京市海淀区西四环北路125号德润科技大厦6层</dt>
		</dl>
			<p class="space15">&#160;</p>
	</div>
<%//--银行转账--%>
</div>
<script>
function RadioButtons(n,values,divid,classid){
	var target = $(n).attr("ControlTarget");
	$("#"+divid).val(values);
	$("#"+divid).removeClass();
	$("#"+divid).addClass(classid);
	if(target!=null){
		$(target).siblings().removeClass("light selected").end().addClass("light selected");
		}
	if(n.is("dt")){
		n.parent().siblings().children().removeClass("light selected");
		n.addClass("light selected").siblings().addClass("light selected");
	}else if(n.is("dd")){
		n.parent().siblings().children().removeClass("light selected");
		n.addClass("light selected").siblings().addClass("light selected");
	}else if(n.is("dl")){
		n.siblings().children().removeClass("light selected");
		n.children().addClass("light selected");
	}
	bankRadioCharge(divid);
	
	//$("#radiobutton").val();
}
</script>
<span id="chongzhiyong"  class="none"></span>
<script>
balanceDivDis("chongzhiyong","","");
//从地址栏取得用户，投注不足的金额。如果金额小于充值的最低金额则在充值框中显示最低金额，否则显示不足的金额 
var fina = GetQueryString("al");
if(!fina==null||(!fina=="")){
var finaMoeny = parseInt(fina)/13+5;
var currentMoney = $("#chongzhiyong").text();
var balance =finaMoeny- parseInt(currentMoney);
	if(balance<5){
		$("#minshengMoney").val("5");
	}else{
		$("#minshengMoney").val(balance);
	}
}	
</script>

