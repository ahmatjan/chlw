<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<style type="text/css">
.right1 {width:800px}
table.demo { border-collapse:collapse;}
table.demo td { padding:0; border:1px solid #F78839; text-align:center; font-size:12px; color:#333; line-height:25px;}
.bt {background-color:#FFE2B8; font-weight:bold; line-height:35px;}
.diwen {background-color:#FEF1E0;}
.content {color:#333; font-size:12px; line-height:20px;}
.yjbt {font-weight:bold;}
.red { color:#B70505;}
.putong { padding-left:2em;}
.content a { color:#FF6800; text-decoration:none;}
.content a:hover {color:#004b91}
</style>
<div class="user_head">
	<div class="user_zi">网银充值</div>
	<div class="user_zi1">欢迎您，<s:property value="#session.user.USERNAME"/>
	<span class="red_text">&nbsp;&nbsp;普通会员&nbsp;&nbsp;</span>
	可投注余额：<span class="red_text" id="deposit_amount"><s:property value="#request.jsonBalnce.deposit_amount/100"/> </span>元</div>
</div>
<div class="user_content">
	<div class="zijin_nav">
		<ul>
		    <li><a class="hover" id="nav_1" onClick="toggle_nav('nav_','sub_nav_',1,'','hout','hover',5)" href="javascripr:;" title="充值向导"  >充值向导</a></li>
			<li><a class="hout" id="nav_2" onClick="toggle_nav('nav_','sub_nav_',2,'','hout','hover',5)" href="javascripr:;" title="网上银行充值">网上银行充值</a></li>
			<li><a class="hout" id="nav_3" onClick="toggle_nav('nav_','sub_nav_',3,'','hout','hover',5)" href="javascripr:;" title="电话、游戏卡充值">电话、游戏卡充值</a></li>
			<li><a class="hout" id="nav_4" onClick="toggle_nav('nav_','sub_nav_',4,'','hout','hover',5)" href="javascript:chargeOnload()" title="银行卡电话充值">银行卡电话充值</a></li>
			<li><a class="hout" id="nav_5" onClick="toggle_nav('nav_','sub_nav_',5,'','hout','hover',5)" href="javascripr:;" title="如意彩点卡充值">如意彩点卡充值</a></li>
		</ul>
	</div>
	<div class="account_content">
		<div id="sub_nav_0" style="display:none;"></div>
		<!-- 充值导航 -->
		<div id="sub_nav_1" style="display:block;">
		<div class="right1">
		  <table width="100%" class="demo">
		     <tr class="bt" height="35">
		       <td width="20%">充值方式</td>
		       <td width="30%">适合人群</td>
		       <td width="50%">特点</td>
		     </tr>
		     <tr>
		       <td>网上银行</td>
		       <td>有支付宝账号且有余额的用户</td>
		       <td>可以把支付宝的余额充值到如意彩账户</td>
		     </tr>
		     <tr class="diwen">
		       <td>支付宝余额</td>
		       <td>有支付宝账号且有余额的用户</td>
		       <td>可以把支付宝的余额充值到如意彩账户</td>
		     </tr>
		     <tr>
		       <td>支付宝卡通</td>
		       <td>专门申请了支付宝卡通的用户</td>
		       <td>无需开通网上银行，无需进入网上银行付款</td>
		     </tr>
		     <tr class="diwen">
		       <td>易宝充值</td>
		       <td>有易宝账户并且有余额的用户</td>
		       <td>可以把易宝的余额充值到如意账户</td>
		     </tr>
		     <tr>
		       <td>财付通充值</td>
		       <td>有财付通账户并且有余额的用户</td>
		       <td>可以吧财付通的余额充值到如意彩账户</td>
		     </tr>
		     <tr class="diwen">
		       <td>话费充值卡</td>
		       <td>有话费充值卡的用户</td>
		       <td>话费充值卡输入卡号密码，就可以为如意彩帐户充值</td>
		     </tr>
		     <tr>
		       <td>游戏点卡充值</td>
		       <td>骏网一卡通、征途游戏卡、盛大游戏卡用户</td>
		       <td>输入游戏卡密码，就可以为如意彩账户充值</td>
		     </tr>
		     <tr class="diwen">
		       <td>如意彩卡充值</td>
		       <td>有如意彩卡的用户</td>
		       <td>如意彩充值卡是神谷数码科贸有限公司提供给用户的，具有一定面值，<br/>
		           供如意彩用户中心账户充值使用，购买彩票
		       </td>
		     </tr>
		     <tr>
		       <td>银行卡电话充值</td>
		       <td>未办理网银的普通储蓄卡用户</td>
		       <td>办理了普通银联储蓄卡即可充值</td>
		     </tr>
		  </table>
		  <div class="content">
		    <p class="yjbt">网上银行充值说明</p>
		    <p class="red">一、网上银行充值手续费由如意彩支付，用户无须支付任何网银手续费。一般从支付完毕到资金进入如意彩账户只需要5秒。</p>
		    <p class="red">二、网上银行充值需要您已经开通对应银行卡的网上银行业务。</p>
		    <p class="putong">1、在银行柜台办理开通网上支付业务，需提供如下资料：申请人本人有效身份证件、所需注册的本地银行卡； <br/>
		    2、银行经办员审核上述资料无误后，将与客户签署《网上银行个人客户服务协议》，办理注册资料录入、设置网上银行密码等注册手续。<br/> 
		    3、下一银行工作日客户即可使用个人网上银行系统。</p>
		    <p class="red">三、各银行网上支付演示及官方网站 </p>
		    <p class="putong">
		      <a href="javascript:;">工商银行网银支付演示</a>官方网站：<a href="http://www.icbc.com.cn" target="_blank">http://www.icbc.com.cn</a><br/> 
		      <a href="javascript:;">建设银行网银支付演示</a>官方网站：<a href="http://www.ccb.cn" target="_blank">http://www.ccb.cn</a><br/>
		      <a href="javascript:;">农业银行网银支付演示</a>官方网站：<a href="http://www.95599.cn" target="_blank">http://www.95599.cn</a><br/>
		      <a href="javascript:;">中国银行网银支付演示</a>官方网站：<a href="http://www.boc.cn" target="_blank">http://www.boc.cn</a><br/>
		      <a href="javascript:;">招商银行网银支付演示</a>官方网站：<a href="http://www.cmbchina.com" target="_blank">http://www.cmbchina.com</a><br/>
		      <a href="javascript:;">交通银行网银支付演示</a>官方网站：<a href="http://www.bankcomm.com" target="_blank">http://www.bankcomm.com</a><br/>
		      <a href="javascript:;">民生银行网银支付演示</a>官方网站：<a href="http://www.cmbc.com.cn" target="_blank">http://www.cmbc.com.cn</a><br/>
		      <a href="javascript:;">深圳发展银行网银支付演示</a>官方网站：<a href="http://www.sdb.com.cn" target="_blank">http://www.sdb.com.cn</a><br/>
		    </p>
		    <p class="yjbt">话费充值卡充值说明：</p>
		    <p class="putong">充值金额必须选择和充值卡面值相等，否则会导致充值失败，损失金额无法找回； 同一张充值卡的卡号和密码只能提交一次，请确保输入无误
		再点击"立即充值"；
		    </p>
		    <p class="yjbt">储蓄卡直充说明</p>
		    <p class="putong">
		      一、储蓄卡直充<font class="red">由中国银联采用卡密分离核心专利技术,彻底保障用户支付交易安全；</font><br/> 
		      二、普通银联储蓄卡即可使用，<font class="red">无需开通网银及下载证书；</font><br/> 
		      三、目前支持以下银行：建行、农行、招行、交行、兴业、中信、华夏、浦发和深圳发展银行；其他银行后续增加；<br/>
		      四、提交信息后，您的手机将收到银联02096585的来电，请按语音提示输入银行卡密码完成支付；<br/>
		      <font class="red">五、单笔充值金额超过100元（含），不收取手续费；低于100元，由银联代收1元手续费。充值不成功，不收任何费用。每日最高支付限额1000元。</font> 
		   </p>
		  </div>
		</div>
		</div>
	    <!-- 网上银行 -->
		 <div id="sub_nav_2" style="display:none;">
		   <form method="post" id="MinshengForm" name="MinshengForm">
		    <div class="card_sel">您选择的是网上银行充值</div>
				<div class="card_title">1、请输入充值金额</div>
				<div class="card_money">
				<input type="text" size="10" maxlength="40" tabindex="1" name="chargeBean.transaction_money" id="minshengMoney" />
				元<span class="red_text">（免手续费）</span></div>
				<div class="card_title">2、请选择您开通的网上银行或第三方账户：</div>
				<div class="card_bank">
					<ul>
						<li>
						<input name="radiobutton" type="radio" id="radio" value="minShengBanks"  checked onclick="javascript:bankRadioCharge('radiobutton');"> 
						<img src="/chlw/page/ruyicai/images/minsheng.gif" alt="民生银行充值" title="民生银行充值" width="113" height="20" 
						onclick="javascript:document.MinshengForm.radio.checked='checked',bankRadioCharge('radiobutton');" /></li>
					</ul>
				</div>	
				<div class="card_bank1">
					<ul>
					<li><input name="radiobutton" type="radio"  id="radio1" value="zfbzx" onclick="javascript:bankRadioCharge('radiobutton');">
					<img src="/chlw/page/ruyicai/images/charge/zfbzx.jpg" alt="支付宝在线充值" title="支付宝在线充值" width="113" height="35" 
					onclick="javascript:document.MinshengForm.radio1.checked='checked',bankRadioCharge('radiobutton');"/></li>
					<li><input name="radiobutton" type="radio" id="radio2" value="zfbyy" onclick="javascript:bankRadioCharge('radiobutton');" />
					<img src="/chlw/page/ruyicai/images/charge/zfbyy.jpg" alt="支付宝语音充值" title="支付宝语音充值" width="113" height="35" 
					onclick="javascript:document.MinshengForm.radio2.checked='checked',bankRadioCharge('radiobutton');"/></li>
					<li><input name="radiobutton" type="radio" id="radio3" value="yeepay" onclick="javascript:bankRadioCharge('radiobutton');"/>
					<img src="/chlw/page/ruyicai/images/charge/yeepayCharge.jpg" alt="易宝充值" title="易宝充值" width="113" height="35" 
					onclick="javascript:document.MinshengForm.radio3.checked='checked',bankRadioCharge('radiobutton');"/></li>
					</ul>
				</div> 			
				 <div class="card_bottom" >
				  <div class="card_1"><input name="" type="button" class="card_btn1" value=""  onclick="ajaxMinshengFill()" /></div>
				  <div class="card_hold" id="minshengNo">本次充值由 <span id="dis">民生银行支付</span> 提供接口支持</div>
			     </div>
			   </form>
		</div>
	  <!-- Yeepay点卡充值 -->
      <div id="sub_nav_3" style="display:none;">
         <form action="" method="post" name="pointForm" id="pointForm">
         <div class="card_sel">您选择的是话费、游戏点卡充值</div>
				<div class="card_title">1、请选择充值卡类型</div>
				<div class="card_con">
					<ul>
						<li><input name="radioName" id="radioName1" type="radio" onclick="pointRadio('radioName')" value="SZX" checked /><img src="/chlw/page/ruyicai/images/yidong.gif" width="162" height="46" 
						onclick="javascript:document.pointForm.radioName1.checked='checked',pointRadio('radioName');"/></li>
						<li><input name="radioName" id="radioName2" type="radio" onclick="pointRadio('radioName')" value="UNICOM" /><img src="/chlw/page/ruyicai/images/liantong.gif" 
						onclick="javascript:document.pointForm.radioName2.checked='checked',pointRadio('radioName');"/></li>
						<li><input name="radioName" id="radioName3" type="radio" onclick="pointRadio('radioName')" value="DXJFK" /><img src="/chlw/page/ruyicai/images/dianxin.gif" 
						onclick="javascript:document.pointForm.radioName3.checked='checked',pointRadio('radioName');"/></li>
					</ul>
				</div>
				<div class="card_value">
					<ul>
						<li>仅支持移动全国卡<br/>30/50/100/300/500面值</li>
						<li>仅支持全国充值卡<br/>30/50/100/300/500面值</li>
						<li>仅支持全国充值卡<br/>50/100面值</li>
					</ul>
				</div>
				<div class="card_con">
					<ul>
						<li><input name="radioName" id="radioName4" type="radio" value="JUNNET" onclick="javascript:pointRadio('radioName');" /><img src="/chlw/page/ruyicai/images/charge/junnet.gif" alt="骏网一卡通" title="骏网一卡通" width="162" height="46"  
						onclick="javascript:document.pointForm.radioName4.checked='checked',pointRadio('radioName');" /></li>
						<li><input name="radioName" id="radioName5" type="radio" value="SNDACARD" onclick="javascript:pointRadio('radioName');"/><img src="/chlw/page/ruyicai/images/charge/sndacard.gif" alt="盛大游戏卡" title="盛大游戏卡"
						onclick="javascript:document.pointForm.radioName5.checked='checked',pointRadio('radioName');"/></li>
						<li><input name="radioName" id="radioName6" type="radio" value="ZHENGTU" onclick="javascript:pointRadio('radioName');"/><img src="/chlw/page/ruyicai/images/charge/zhengtu.gif" alt="征途卡游戏卡" title="征途卡游戏卡" 
						onclick="javascript:document.pointForm.radioName6.checked='checked',pointRadio('radioName');"/></li>
					</ul>
				</div>
				<div class="card_title">2、确认充值卡面值</div>
				<div id="huafei" style="display: block;">
					<div class="card_conf">
						<ul>
							<li><input name="mzmoney" id="mzmoney" type="radio" value="30"  checked="checked"/><span class="huang_text">30元</span>服务费1.2元，实际到账28.8元</li>
							<li><input name="mzmoney" id="mzmoney" type="radio" value="50" /><span class="huang_text">50元</span>服务费2元，实际到账48元</li>
							<li><input name="mzmoney" id="mzmoney" type="radio" value="100" /><span class="huang_text">100元</span>服务费4元，实际到账96元</li>
							<li><input name="mzmoney" id="mzmoney" type="radio" value="300" /><span class="huang_text">300元</span>服务费12元，实际到账288元</li>
							<li><input name="mzmoney" id="mzmoney" type="radio" value="500" /><span class="huang_text">500元</span>服务费20元，实际到账480元</li>
						</ul>
					</div>
				</div>
				<div class="card_num" id="game" style="display:none;">
				   <input type="text" id="mzmoney1" name="mzmoney1" />
				</div>
				
				<div class="card_title">3、输入充值卡号和密码</div>
				<div class="card_pas">
					<div class="card_num">充值卡号:<input type="text"  maxlength="19" name="chargeBean.card_no" id="cardNoPoint" /></div>
					<div class="card_xianzhi">已输入 0 位。移动:17位 | 联通:15位 | 电信:19位</div>
					<div class="card_num">充值密码:<input type="text"  maxlength="19" name="chargeBean.card_pwd" id="cardPassword" /></div>
					<div class="card_xianzhi">已输入 0 位。移动:17位 | 联通:15位 | 电信:19位</div>
				</div>				
				<div class="card_bottom" >
				  <div class="card_1"><input name="" type="button" class="card_btn1" value=""  onclick="ajaxPointFill()" /></div>
				  <div class="card_hold" id="pointMessage"></div>
			   </div>
         </form>
	    </div>
       <!--3DNA充值-->
	   <div id="sub_nav_4" style="display:none;">
	     <form action="" name="dnaForm" id="dnaForm" method="post">
	        <table width="798"  border="0" cellpadding="0" cellspacing="0">
		      <tr>
                <td class="card_biao1">充值金额：</td>
		        <td class="card_biao2">
				   <input type="hidden" id="hiddenName" name="hiddenName">
     				<input type="text" size="25" maxlength="40" tabindex="3" name="chargeBean.transaction_money" id="amount"/>元
     			</td>
	          </tr>
			  <tr>
                <td class="card_biao1">银行卡号：</td>
			    <td class="card_biao2">
				  <input type="text" size="25" maxlength="40" tabindex="2" name="chargeBean.cardNumber" id="cardNumber"/>
				  您的账号已经绑定次银行卡，如需更改请联系我们400-665-1000！
				</td>
		      </tr>
			  <tr>
                <td class="card_biao1">接听电话：</td>
			    <td class="card_biao2">
				<input type="text" size="25" maxlength="40" tabindex="3" name="chargeBean.tel" id="tel" />
				&nbsp;&nbsp;您将使用此号码接听来自银联02096585的支付操作电话
				</td>
		      </tr>
		      <tr>
		      <td colspan="2">
		      <div id="displayAll" style="display:none;">
		      <table width="798" border="0" cellpadding="0" cellspacing="0">
			  <tr>
				<td class="card_biao1">银行卡开户地址：</td>
				<td class="card_biao2">
				  <select name="chargeBean.province" id="shengFengBank" onChange="fun()">
					<option value="北京市" selected>北京市</option>
					<option value="天津市">天津市</option>
					<option value="上海市">上海市</option>
					<option value="重庆市">重庆市</option>
					<option value="黑龙江省">黑龙江省</option>
					<option value="云南省">云南省</option>
					<option value="吉林省">吉林省</option>
					<option value="安徽省">安徽省</option>
					<option value="山东省">山东省</option>
					<option value="山西省">山西省</option>
					<option value="广东省">广东省</option>
					<option value="江苏省">江苏省</option>
					<option value="江西省">江西省</option>
					<option value="河北省">河北省</option>
					<option value="河南省">河南省</option>
					<option value="浙江省">浙江省</option>
					<option value="海南省">海南省</option>
					<option value="湖北省">湖北省</option>
					<option value="湖南省">湖南省</option>
					<option value="甘肃省">甘肃省</option>
					<option value="福建省">福建省</option>
					<option value="四川省">四川省</option>
					<option value="贵州省">贵州省</option>
					<option value="辽宁省">辽宁省</option>
					<option value="陕西省">陕西省</option>
					<option value="青海省">青海省</option>
					<option value="广西壮族自治区">广西壮族自治区</option>
					<option value="宁夏回族自治区">宁夏回族自治区</option>
					<option value="西藏自治区">西藏自治区</option>
					<option value="新疆维吾尔自治区">新疆维吾尔自治区</option>
					<option value="内蒙古自治区">内蒙古自治区</option>
					<option value="香港特别行政区">香港特别行政区</option>
					<option value="澳门特别行政区">澳门特别行政区</option>
					<option value="台湾省">台湾省</option>
				  </select>省
				  <select name="chargeBean.city" id="cityBank">
					<option value="东城区" selected>东城区</option>
					<option value="丰台区">丰台区</option>
					<option value="大兴区">大兴区</option>
					<option value="宣武区">宣武区</option>
					<option value="崇文区">崇文区</option>
					<option value="平谷区">平谷区</option>
					<option value="怀柔区">怀柔区</option>
					<option value="房山区">房山区</option>
					<option value="昌平区">昌平区</option>
					<option value="朝阳区">朝阳区</option>
					<option value="海淀区">海淀区</option>
					<option value="石景山区">石景山区</option>
					<option value="西城区">西城区</option>
					<option value="通州区">通州区</option>
					<option value="门头沟区">门头沟区</option>
					<option value="顺义区">顺义区</option>
				  </select>市
				</td>
			  </tr>
			   <tr>
                <td class="card_biao1">持卡人姓名：</td>
			    <td class="card_biao2">
				<input type="text" size="25" maxlength="40" tabindex="4" name="chargeBean.userName" id="userName"/>
				</td>
		      </tr> 
			    <tr>
                <td class="card_biao1">持卡人身份证号码：</td>
			    <td class="card_biao2">
				<input type="text" size="25" maxlength="40" tabindex="5" name="chargeBean.documentNumber" id="documentNumber"/>
				</td>
		      </tr> 
			    <tr>
                <td class="card_biao1">身份证户籍所在地：</td>
			    <td class="card_biao2">
				<select name="chargeBean.provinceCard" id="shengFeng" onChange="fun()">
					<option value="北京市" selected>北京市</option>
					<option value="天津市">天津市</option>
					<option value="上海市">上海市</option>
					<option value="重庆市">重庆市</option>
					<option value="黑龙江省">黑龙江省</option>
					<option value="云南省">云南省</option>
					<option value="吉林省">吉林省</option>
					<option value="安徽省">安徽省</option>
					<option value="山东省">山东省</option>
					<option value="山西省">山西省</option>
					<option value="广东省">广东省</option>
					<option value="江苏省">江苏省</option>
					<option value="江西省">江西省</option>
					<option value="河北省">河北省</option>
					<option value="河南省">河南省</option>
					<option value="浙江省">浙江省</option>
					<option value="海南省">海南省</option>
					<option value="湖北省">湖北省</option>
					<option value="湖南省">湖南省</option>
					<option value="甘肃省">甘肃省</option>
					<option value="福建省">福建省</option>
					<option value="四川省">四川省</option>
					<option value="贵州省">贵州省</option>
					<option value="辽宁省">辽宁省</option>
					<option value="陕西省">陕西省</option>
					<option value="青海省">青海省</option>
					<option value="广西壮族自治区">广西壮族自治区</option>
					<option value="宁夏回族自治区">宁夏回族自治区</option>
					<option value="西藏自治区">西藏自治区</option>
					<option value="新疆维吾尔自治区">新疆维吾尔自治区</option>
					<option value="内蒙古自治区">内蒙古自治区</option>
					<option value="香港特别行政区">香港特别行政区</option>
					<option value="澳门特别行政区">澳门特别行政区</option>
					<option value="台湾省">台湾省</option>
				  </select>省
				  <select name="chargeBean.cityCard" id="city">
					<option value="东城区" selected>东城区</option>
					<option value="丰台区">丰台区</option>
					<option value="大兴区">大兴区</option>
					<option value="宣武区">宣武区</option>
					<option value="崇文区">崇文区</option>
					<option value="平谷区">平谷区</option>
					<option value="怀柔区">怀柔区</option>
					<option value="房山区">房山区</option>
					<option value="昌平区">昌平区</option>
					<option value="朝阳区">朝阳区</option>
					<option value="海淀区">海淀区</option>
					<option value="石景山区">石景山区</option>
					<option value="西城区">西城区</option>
					<option value="通州区">通州区</option>
					<option value="门头沟区">门头沟区</option>
					<option value="顺义区">顺义区</option>
				  </select>市
				  <input type="text" size="15" maxlength="40" tabindex="6" name="chargeBean.addressCard" id="documentAddress"/><br />例如：山东省青岛市XX街XX路XX号(以身份证为准)。
				  </td>
		      </tr> 
		      </table>
		     </div>
		     </td></tr>
			   <tr>
			      <td colspan="2"><input name="dna" type="button" class="card_btn1" value=""  onclick="ajaxDnaFill()" />
			      <div class="card_hold" id="dnaMessage"></div>
				  </td>
		      </tr>
			</table>
	     </form>
	   </div>
	  <!--6如意彩点卡充值 -->
	   <div id="sub_nav_5" style="display: none;">
	   <form action="" name="ruyicaiForm" id="ruyicaiForm" method="post">
	     <table width="798"  border="0" cellpadding="0" cellspacing="0">
		      <tr>
                <td class="card_biao1">手机号码：</td>
		        <td class="card_biao2">
				  <s:property value="#session.user.MOBILEID"/>
                </td>
	          </tr>
		      <tr>
                <td class="card_biao1">充值卡卡号：</td>
		        <td class="card_biao2">
				  <input type="text" width="150" size="23" maxlength="40" tabindex="2" name="chargeBean.ryc_cardNo" id="cardNoRyc" value="" onBlur="return chargeCardNoCheck2();" />
                 </td>
	          </tr>
			  <tr>
                <td class="card_biao1">充值卡密码：</td>
			    <td class="card_biao2">
				 <input type="text" width="150" size="23" maxlength="40" tabindex="3" name="chargeBean.ryc_cardPwd" id="cardPasswordRyc" value="" onBlur="return chargePassCheck2();" />
				</td>
		      </tr>
			   <tr>
			      <td colspan="2"><input name="ryc" type="button" class="card_btn1" value=""  onclick="ajaxRycPointFill()" /><div class="card_hold" id="rycMessage"></div>
				  </td>
		      </tr>
			</table>
	   </form>
	   </div>
	</div>
</div>
<div class="zijin_tishi"><img src="/chlw/page/ruyicai/images/xing.gif" width="12" height="14" />大部分银行要求使用IE浏览器进行充值，为确保充值成功，建议您更换后继续操作。</div>