 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@taglib prefix="s" uri="/struts-tags"%>   
<link href="/css/user.css" rel="stylesheet" type="text/css">
<style type="text/css">
.right1 {width:800px; margin-left:10px; margin-top:10px;}
table.demo { border-collapse:collapse;}
table.demo td { padding:0; border:1px solid #3abff7; text-align:center; font-size:12px; color:#333; line-height:25px;}
.bt {background-color:#b9ddff; font-weight:bold; line-height:35px;}
.diwen {background-color:#f4fcff;}
.content {color:#333; font-size:12px; line-height:20px; padding: 0 10px; }
.yjbt {font-weight:bold;}
.red { color:#B70505;}
.putong { padding-left:2em;}
.content a { color:#FF6800; text-decoration:block;}
.content a:hover {color:#004b91}
</style>
<script type="text/javascript">
<!--
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
//-->
</script>
<div class="user_head">
	<div class="user_zi">账户管理-账户充值</div>
</div>
<div class="user_content">
	<div class="zijin_nav">
		<ul>
		    <li><a class="hover" id="nav_1" onClick="toggle_nav(1,'hout','hover',4)" href="#" title="充值向导"  >充值向导</a></li>
			<li><a class="hout" id="nav_2" onClick="toggle_nav(2,'hout','hover',4)" href="#" title="网银充值">网银充值</a></li>
			<li><a class="hout" id="nav_3" onClick="toggle_nav(3,'hout','hover',4)" href="javascript:chargeOnload();" title="银行卡电话充值">银行卡电话充值</a></li>
			<li><a class="hout" id="nav_4" onClick="toggle_nav(4,'hout','hover',4)" href="#" title="电话、游戏卡充值">手机充值卡充值</a></li>
			<%/* <li><a class="hout" id="nav_5" onClick="toggle_nav(5,'hout','hover',5)" href="#" title="如意彩点卡充值">充值记录</a></li>   */%>
			
		</ul>
	</div>
	<div class="account_content1">
		<div id="sub_nav_0" style="display:none;"></div>
		<!-- 充值导航 -->
		<div id="sub_nav_1" style="display:block;">
		<div class="right1">
		  <table width="100%" class="demo zhzx_tab">
		     <tr class="bt" height="35">
		       <td width="20%">充值方式</td>
		       <td width="32%">适合人群</td>
		       <td >特点</td>
		     </tr>
		     <tr>
		       <td>网上银行</td>
		       <td>开通了网上银行的用户</td>
		       <td>银行卡需开通网上银行，在网上银行页面付款</td>
		     </tr>
		     <tr class="diwen">
		       <td>支付宝在线充值</td>
		       <td>有支付宝帐号且有余额的用户</td>
		       <td>可以把支付宝的余额充值到3G彩票网账户</td>
		     </tr>
		     <tr>
		       <td>支付宝语音充值</td>
		       <td>手机已注册或绑定支付宝账户且账户内有余额</td>
		       <td>接听支付宝语音电话，或回复支付宝短信就可以完成充值操作</td>
		     </tr>
		     <tr class="diwen">
		       <td>易宝充值</td>
		       <td>有易宝账户并且有余额的用户</td>
		       <td>可以把易宝的余额充值到如意账户</td>
		     </tr>
		     <tr >
		       <td>手机充值卡充值</td>
		       <td>有手机充值卡的用户</td>
		       <td>手机充值卡输入卡号密码，就可以为3G彩票网帐户充值</td>
		     </tr>
		     <tr class="diwen">
		       <td>银行卡电话充值</td>
		       <td>未办理网银的普通储蓄卡用户</td>
		       <td>办理了普通银联储蓄卡即可充值</td>
		     </tr>
		  </table>
		  <div class="content">
		    <p class="yjbt">网银充值说明</p>
		    <p >一、网银充值手续费由3G彩票网支付，用户无须支付任何网银手续费。一般从支付完毕到资金进入3G彩票网账户只需要5秒。</p>
		    <p >二、网银充值需要您已经开通对应银行卡的网上银行业务。</p>
		    <p class="putong">1、在银行柜台办理开通网上支付业务，需提供如下资料：申请人本人有效身份证件、所需注册的本地银行卡。 <br/>
		    2、银行经办员审核上述资料无误后，将与客户签署《网上银行个人客户服务协议》，办理注册资料录入、设置网上银行密码等注册手续。<br/> 
		    3、下一银行工作日客户即可使用个人网上银行系统。</p>
		    <p >三、各银行网上支付演示及官方网站 </p>
		    <p class="putong">
		      <a href="#">工商银行网银支付演示</a>官方网站：<a href="http://www.icbc.com.cn" target="_bank">http://www.icbc.com.cn</a><br/> 
		      <a href="#">建设银行网银支付演示</a>官方网站：<a href="http://www.ccb.cn" target="_bank">http://www.ccb.cn</a><br/>
		      <a href="#">农业银行网银支付演示</a>官方网站：<a href="http://www.95599.cn" target="_bank">http://www.95599.cn</a><br/>
		      <a href="#">招商银行网银支付演示</a>官方网站：<a href="http://www.cmbchina.com" target="_bank">http://www.cmbchina.com</a><br/>
		      <a href="#">浦发银行网银支付演示</a>官方网站：<a href="http://www.spdb.com.cn" target="_bank">http://www.spdb.com.cn</a><br/>
		      <a href="#">交通银行网银支付演示</a>官方网站：<a href="http://www.bankcomm.com" target="_bank">http://www.bankcomm.com</a><br/>
		      <a href="#">广发银行网银支付演示</a>官方网站：<a href="http://www.gdb.com.cn" target="_bank">http://www.gdb.com.cn</a><br/>
		      <a href="#">兴业银行网银支付演示</a>官方网站：<a href="http://www.cib.com.cn/netbank/cn/index.html" target="_bank">http://www.cib.com.cn/netbank/cn/index.html</a><br/>
		      <a href="#">深圳发展银行网银支付演示</a>官方网站：<a href="http://www.sdb.com.cn" target="_bank">http://www.sdb.com.cn</a><br/>
		      <a href="#">民生银行网银支付演示</a>官方网站：<a href="http://www.cmbc.com.cn" target="_bank">http://www.cmbc.com.cn</a><br/>
		      <a href="#">中国邮政储蓄银行网银支付演示</a>官方网站：<a href="http://www.psbc.com/portal/zh_CN/index.html" target="_bank">http://www.psbc.com/portal/zh_CN/index.html</a><br/>
		      <a href="#">中信银行网银支付演示</a>官方网站：<a href="http://bank.ecitic.com" target="_bank">http://bank.ecitic.com</a><br/>
		    </p>
		    <p class="yjbt">手机充值卡充值说明：</p>
		    <p class="putong"><font class="red">充值金额必须选择和充值卡面值相等，否则会导致充值失败，损失金额无法找回； 同一张充值卡的卡号和密码只能提交一次，请确保输入无误 再点击"立即充值"。</font>
		    </p>
		    <p class="yjbt">银行卡电话充值说明</p>
		    <p class="putong">
		      一、银行卡电话充值由中国银联采用卡密分离核心专利技术,彻底保障用户支付交易安全。<br/> 
		      二、普通银联储蓄卡即可使用，无需开通网银及下载证书。<br/> 
		      三、目前支持以下银行：建行、农行、招行、交行、兴业、中信、华夏、中国邮政储蓄银行和深圳发展银行；其他银行后续增加。<br/>
		      四、提交信息后，您的手机将收到银联02096585的来电，请按语音提示输入银行卡密码完成支付。<br/>
		      五、单笔充值金额超过100元（含），不收取手续费；低于100元，由银联代收1元手续费。充值不成功，不收任何费用。每日最高支付限额1000元。<br/>
		      六、<font class="red">首次使用该支付方式后，系统将默认绑定该银行卡作为您再次电话支付和申请提现的唯一专用卡。</font> 
		   </p>
		  </div>
		</div>
		</div>
	    <!-- 网上银行 -->
		 <div id="sub_nav_2" style="display:none;">
		   <form method="post" id="MinshengForm" name="form2">
		    <div class="card_sel">您选择的是网上银行充值</div>
			  <div class="card_box">
            	<div class="card_title">1、请输入充值金额</div>
				<div class="card_money">
				<input type="text" size="10" maxlength="40" tabindex="1" name="chargeBean.transaction_money" id="minshengMoney" />
				元<span class="red_text">（免手续费）</span></div>
				<div class="card_title">2、请选择您开通的网上银行或第三方账户：</div>
				<div class="card_bank2">
					<ul>
						<li><input name="radiobutton" type="radio"  value="ICBCB2C"  id="radio" onclick="javascript:bankRadioCharge('radiobutton');" checked="checked"/><img src="/images/zhzx_img/gs.gif" width="110" height="30" onclick="javascript:document.form2.radio.checked='checked',bankRadioCharge('radiobutton');" alt="中国工商银行" title="中国工商银行"/></li>
                        <li><input type="radio" name="radiobutton" id="radio1" value="CCB" onclick="javascript:bankRadioCharge('radiobutton');" /><img src="/images/zhzx_img/js.gif" width="110" height="30" onclick="javascript:document.form2.radio1.checked='checked',bankRadioCharge('radiobutton');" alt="中国建设银行" title="中国建设银行"/></li>
                        <li><input type="radio" name="radiobutton" id="radio2" value="ABC" onclick="javascript:bankRadioCharge('radiobutton');" /><img src="/images/zhzx_img/ny.gif" width="110" height="30"  onclick="javascript:document.form2.radio2.checked='checked',bankRadioCharge('radiobutton');" alt="中国农业银行" title="中国农业银行"/></li>
                        <li><input type="radio" name="radiobutton" id="radio3" value="CMB" onclick="javascript:bankRadioCharge('radiobutton');"/><img src="/images/zhzx_img/zs.gif" width="110" height="30" onclick="javascript:document.form2.radio3.checked='checked',bankRadioCharge('radiobutton');" alt="中国招商银行" title="中国招商银行"/></li>
					</ul>
                    <ul>
                        <li><input type="radio" name="radiobutton" id="radio4" value="SPDBB2B" onclick="javascript:bankRadioCharge('radiobutton');"/><img src="/images/zhzx_img/pf.gif" width="110" height="30" onclick="javascript:document.form2.radio4.checked='checked',bankRadioCharge('radiobutton');" alt="浦发银行" title="浦发银行"/></li>
                        <li><input type="radio" name="radiobutton" id="radio5" value="COMM" onclick="javascript:bankRadioCharge('radiobutton');"/><img src="/images/zhzx_img/jt.gif" width="110" height="30" onclick="javascript:document.form2.radio5.checked='checked',bankRadioCharge('radiobutton');" alt="交通银行" title="交通银行"/></li>
                        <li><input type="radio" name="radiobutton" id="radio6" value="GDB" onclick="javascript:bankRadioCharge('radiobutton');"/><img src="/images/zhzx_img/gf.gif" width="110" height="30" onclick="javascript:document.form2.radio6.checked='checked',bankRadioCharge('radiobutton');" alt="广东发展银行" title="广东发展银行"/></li>
                        <li><input type="radio" name="radiobutton" id="radio7" value="CIB" onclick="javascript:bankRadioCharge('radiobutton');"/><img src="/images/zhzx_img/xy.gif" width="110" height="30" onclick="javascript:document.form2.radio7.checked='checked',bankRadioCharge('radiobutton');" alt="兴业银行" title="兴业银行"/></li>
                    </ul>
                    <ul>
                        <li><input type="radio" name="radiobutton" id="radio8" value="SDB" onclick="javascript:bankRadioCharge('radiobutton');"/><img src="/images/zhzx_img/sf.gif" width="110" height="30" onclick="javascript:document.form2.radio8.checked='checked',bankRadioCharge('radiobutton');" alt="深圳发展银行" title="深圳发展银行"/></li>
                        <li><input type="radio" name="radiobutton" id="radio9" value="minShengBanks" onclick="javascript:bankRadioCharge('radiobutton');"/><img src="/images/zhzx_img/ms.gif" width="110" height="30" onclick="javascript:document.form2.radio9.checked='checked',bankRadioCharge('radiobutton');" alt="中国民生银行" title="中国民生银行"/></li>
                        <li><input type="radio" name="radiobutton" id="radio10" value="POSTGC" onclick="javascript:bankRadioCharge('radiobutton');"/><img src="/images/zhzx_img/yz.gif" width="110" height="30" onclick="javascript:document.form2.radio10.checked='checked',bankRadioCharge('radiobutton');" alt="中国邮政储蓄银行" title="中国邮政储蓄银行"/></li>
                        <li><input type="radio" name="radiobutton" id="radio11" value="CITIC" onclick="javascript:bankRadioCharge('radiobutton');"/><img src="/images/zhzx_img/zx.gif" width="110" height="30" onclick="javascript:document.form2.radio11.checked='checked',bankRadioCharge('radiobutton');" alt="中信银行" title="中信银行"/></li>
                    </ul>
				</div>	
				<div class="card_bank1">
					<ul>
					<li><input name="radiobutton" type="radio" id="radio12" value="03" onclick="javascript:bankRadioCharge('radiobutton');">
					<img src="/images/zhzx_img/zfbzx.jpg" alt="支付宝在线充值" title="支付宝在线充值" width="113" height="35" onclick="javascript:document.form2.radio12.checked='checked',bankRadioCharge('radiobutton');"/></li>
					<li><input name="radiobutton" type="radio" id="radio13" value="zfbyy" onclick="javascript:bankRadioCharge('radiobutton');" />
					<img src="/images/zhzx_img/zfbyy.jpg" alt="支付宝语音充值" title="支付宝语音充值" width="113" height="35" onclick="javascript:document.form2.radio13.checked='checked',bankRadioCharge('radiobutton');"/></li>
					<li><input name="radiobutton" type="radio" id="radio14" value="yeepay" onclick="javascript:bankRadioCharge('radiobutton');"/>
					<img src="/images/zhzx_img/yeepayCharge.jpg" alt="易宝充值" title="易宝充值" width="113" height="35" onclick="javascript:document.form2.radio14.checked='checked',bankRadioCharge('radiobutton');"/></li>
					</ul>
				</div> 			
				 <div class="card_bottom" >
				  <div class="card_1"><input name="" type="button" class="card_btn1" value=""  onclick="ajaxMinshengFill()" onmouseover="this.style.cursor='hand'"/></div>
				  <div class="card_hold" id="minshengNo">本次充值由&nbsp;<font class="blue" id="dis">支付宝</font>&nbsp;提供接口支持</div>
			     </div>
                 </div>
			   </form>
			   <div class="zijin_tishi"><img src="/images/zhzx_img/xing.gif" width="12" height="14" />大部分银行要求使用IE浏览器进行充值，为确保充值成功，建议您更换后继续操作。</div>
		</div>
	  <!-- Yeepay点卡充值 --> <!--   3G彩票网的充值无点卡充值 -->
      <div id="sub_nav_4" style="display:none;">
         <form action="" method="post" name="pointForm" id="pointForm" >
         <div class="card_sel">您选择的是话费、游戏点卡充值</div>
            <div class="card_box">
				<div class="card_title">1、请选择充值卡类型</div>
				<div class="card_con">
					<ul>
						<li><input name="radioName" id="radioName1" type="radio" onclick="pointRadio('radioName')" value="SZX" checked />
						<img src="/chlw/page/ruyicai/images/yidong.gif" width="162" height="46" onclick="javascript:document.pointForm.radioName1.checked='checked',pointRadio('radioName');"/></li>
						<li><input name="radioName" id="radioName2" type="radio" onclick="pointRadio('radioName')" value="UNICOM" />
						<img src="/chlw/page/ruyicai/images/liantong.gif" onclick="javascript:document.pointForm.radioName2.checked='checked',pointRadio('radioName');"/></li>
						<li><input name="radioName" id="radioName3" type="radio" onclick="pointRadio('radioName')" value="DXJFK" />
						<img src="/chlw/page/ruyicai/images/dianxin.gif" onclick="javascript:document.pointForm.radioName3.checked='checked',pointRadio('radioName');"/></li>
					</ul>
				</div>
				<div class="card_value">
					<ul>
						<li>仅支持移动全国卡和浙江、辽宁、江苏、福建地方卡</li>
						<li>仅支持全国充值卡</li>
						<li>仅支持全国充值卡</li>
					</ul>
				</div>
				<div class="card_title">2、确认充值卡面值</div>
				<div id="huafei" style="display: block;">
					<div class="card_conf">
						<ul>
						   <li><input name="mzmoney" id="mzmoney1" type="radio" value="10" checked="checked"><span class="huang_text">10元</span>实际到账9.6元，运营商收取服务费0.4元</li>
						    <li><input name="mzmoney" id="mzmoney2" type="radio" value="20"><span class="huang_text">20元</span>实际到账19.2元，运营商收取服务费0.8元</li>
							<li><input name="mzmoney" id="mzmoney3" type="radio" value="30"><span class="huang_text">30元</span>实际到账28.8元，运营商收取服务费1.2元</li>
							<li><input name="mzmoney" id="mzmoney4" type="radio" value="50"><span class="huang_text">50元</span>实际到账48元，运营商收取服务费2元</li>
							<li><input name="mzmoney" id="mzmoney5" type="radio" value="100"><span class="huang_text">100元</span>实际到账96元，运营商收取服务费4元</li>
							<li><input name="mzmoney" id="mzmoney6" type="radio" value="100"><span class="huang_text">200元</span>实际到账92元，运营商收取服务费8元</li>
							<li><input name="mzmoney" id="mzmoney7" type="radio" value="300"><span class="huang_text">300元</span>实际到账288元，运营商收取服务费12元</li>
							<li><input name="mzmoney" id="mzmoney8" type="radio" value="500"><span class="huang_text">500元</span>实际到账480元，运营商收取服务费20元</li>
						</ul>
					</div>
				</div>
				<div id="liantong" style="display: none;">
					<div class="card_conf">
						<ul>
						    <li><input name="mzmoney" id="mzmoney9" type="radio" value="20"><span class="huang_text">20元</span>实际到账19.2元，运营商收取服务费0.8元</li>
							<li><input name="mzmoney" id="mzmoney10" type="radio" value="30"><span class="huang_text">30元</span>实际到账28.8元，运营商收取服务费1.2元</li>
							<li><input name="mzmoney" id="mzmoney11" type="radio" value="50"><span class="huang_text">50元</span>实际到账48元，运营商收取服务费2元</li>
							<li><input name="mzmoney" id="mzmoney12" type="radio" value="100"><span class="huang_text">100元</span>实际到账96元，运营商收取服务费4元</li>
							<li><input name="mzmoney" id="mzmoney13" type="radio" value="100"><span class="huang_text">200元</span>实际到账92元，运营商收取服务费8元</li>
							<li><input name="mzmoney" id="mzmoney14" type="radio" value="300"><span class="huang_text">300元</span>实际到账288元，运营商收取服务费12元</li>
							<li><input name="mzmoney" id="mzmoney15" type="radio" value="500"><span class="huang_text">500元</span>实际到账480元，运营商收取服务费20元</li>
						</ul>
					</div>
				</div>
				
				<div class="card_conf" id="game" style="display:none;">
				  <ul>
					<li><input name="mzmoney" id="mzmoney16" type="radio" value="30" checked="checked"><span class="huang_text">20元</span>实际到账19.2元，运营商收取服务费0.8元</li>
					<li><input name="mzmoney" id="mzmoney17" type="radio" value="30"><span class="huang_text">30元</span>实际到账28.8元，运营商收取服务费1.2元</li>
					<li><input name="mzmoney" id="mzmoney18" type="radio" value="50"><span class="huang_text">50元</span>实际到账48元，运营商收取服务费2元</li>
					<li><input name="mzmoney" id="mzmoney19" type="radio" value="100"><span class="huang_text">100元</span>实际到账96元，运营商收取服务费4元</li>
				  </ul>
				</div>
				
				<div class="card_title">3、输入充值卡号和密码</div>
				<div class="card_pas">
					<div class="card_num">充值卡号:<input type="text"  maxlength="19" name="chargeBean.card_no" id="cardNoPoint" onkeyup="javascript:$('#pointLength').html($('#cardNoPoint').val().length);" /></div>
					<%/*<div class="card_xianzhi">已输入 <span id="pointLength">0</span> 位。移动:17位 | 联通:15位 | 电信:19位</div> */ %> 
				  <div class="card_num">充值密码:<input type="text"  maxlength="19" name="chargeBean.card_pwd" id="cardPassword" onkeyup="javascript:$('#pwdLength').html($('#cardPassword').val().length);" />
				  </div>
					<%/* <div class="card_xianzhi">已输入 <span id="pwdLength">0</span> 位。移动:17位 | 联通:15位 | 电信:19位</div>*/ %>
				</div>				
				<div class="card_bottom" >
				  <div class="card_1"><input name="" type="button" class="card_btn1" value=""  onclick="ajaxPointFill()" /></div>
				  <div class="card_hold" id="pointMessage"></div>
			  </div>
			   <div  id="yidong" style="display:block;">
			   <div class="zijin_tishi"><font class="red">重要提示：</font>请务必使用与此面额相同的移动充值卡，否则会导致支付不成功，或金额丢失。（使用面额100元的移动充值卡但选择<br/>　　　　　&nbsp;50元，高于50元部分不返还；使用50元卡但选择100元，支付失败，50元不返还。）不支持彩铃充值卡和短信充值卡，<br/>　　　　　&nbsp;选择任何面额彩铃充值卡，将不予退还任何金额。</div>
			    <div class="zijin_tishi"><font class="red">注意事项：</font>1.使用本卡充值，充值金额只能用于在本站购买彩票，不能提现，中奖奖金可提现。<br/>　　　　　&nbsp;2.充值手续费由运营商或充值服务商收取，从充值金额中直接扣除。</div>
			   </div>
			   <div id="liantongs" style="display:none;">
			   <div class="zijin_tishi"><font class="red">重要提示：</font>请务必使用与与您选择面额相同的联通充值卡，否则引起的交易失败交易资金不予退还。<br/>　　　　　&nbsp;如：选择50元面额但使用100元卡支付，则系统认为实际支付金额为50元，高于50元部分不予退还；<br/>　　　　　&nbsp;选择50元面额但使用30元卡支付则系统认为支付失败，30元不予退还。</div>
			    <div class="zijin_tishi"><font class="red">注意事项：</font>1.使用本卡充值，充值金额只能用于在本站购买彩票，不能提现，中奖奖金可提现。<br/>　　　　　&nbsp;2.充值手续费由运营商或充值服务商收取，从充值金额中直接扣除。</div>
			   </div>
			   <div id="dianxin" style="display:none;">
			   <div class="zijin_tishi"><font class="red">重要提示：</font>请务必使用与此面额相同的电信卡进行支付，否则引起的交易失败或交易金额丢失我方不予承担！<br/>　</div>
			    <div class="zijin_tishi"><font class="red">注意事项：</font>1.使用本卡充值，充值金额只能用于在本站购买彩票，不能提现，中奖奖金可提现。<br/>　　　　　&nbsp;2.充值手续费由运营商或充值服务商收取，从充值金额中直接扣除。</div>
			   </div>
               </div>
         </form>
	    </div> 
        
       <!--3DNA充值-->
	   <div id="sub_nav_3" style="display:none;">
	   <p class="putong">使用银联电话支付无需任何手续费，至少充值20元；</p><br />
	     <form action="" name="dnaForm" id="dnaForm" method="post"  class="tzjl_form">
         <div class="card_box">
           <div class="card_bank">
	        <table width="658"  border="0" align="center" cellpadding="0" cellspacing="0" style="font-size:12px; line-height:28px;">
		      <tr>
                <td >充值金额：</td>
		        <td >
				   <input type="hidden" id="hiddenName" name="hiddenName">
     				<input type="text" size="25" maxlength="40" tabindex="3" name="chargeBean.transaction_money" id="amount"/>元
     			</td>
	          </tr>
			  <tr>
                <td >银行卡号：</td>
			    <td >
				  <input type="text" size="25" maxlength="40" tabindex="2" name="chargeBean.cardNumber" id="cardNumber"/></td>
		      </tr>
			  <tr>
                <td >接听电话：</td>
			    <td >
				<input type="text" size="25" maxlength="40" tabindex="3" name="chargeBean.tel" id="tel" />
				&nbsp;&nbsp;您将使用此号码接听来自银联02096585的支付操作电话
				</td>
		      </tr>
		      <tr>
		      <td colspan="2">
              <!--    3G网手机银行卡充值无一下信息 -->
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
			   <tr class="card_xuxian">
			      <td colspan="2">
				  </td>
		      </tr>
			   <tr>
			     <td colspan="2"></td>
		      </tr>
			</table></div>
	        <table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
	          <tr>
	            <td><input name="dna" type="button" class="card_btn1" value=""  onclick="ajaxDnaFill()"  />
			      <div class="card_hold" id="dnaMessage"></div></td>
              </tr>
           </table>
           </div>
         </form>
	     
         <div class="content"><p class="yjbt">充值须知：</p>
        
如果您发现银行账户已扣款，但本站账户未到账的情况，请马上与我们的客服部电话联系；<br />
<p>服务热线：400-665-1000</p>
<p class="yjbt">小提醒：</p>
<p class="putong"><font class="red">提交信息后，您将接收到银联02096585的来电，请按照语音提示操作；</font><br />
首次使用该支付方式后，系统将默认绑定该银行卡作为您再次电话支付和申请提现的唯一专用卡；<br />
中国银联采用卡密分离核心专利技术，彻底保障用户交易安全！<br />
如您不能成功完成支付过程，请致电银联客服热线：400-657-7577</p>
<p class="putong">1、目前支持招行、农行、中信、浦发、深发、华夏、兴业银行的借记卡；<br />
2、因中国银联于每日23时做结算，本充值方式每日23时至次日0时暂停使用；<br />
3、单笔支付限额2万，当日限额2万；<br />
4、该充值方式支持20元及以上额度；</p>
</div>
</div>
</div>	   



