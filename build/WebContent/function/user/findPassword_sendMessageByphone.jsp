<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="s" uri="/struts-tags" %>
    <script>checkRand();</script>

  <div class="rusercontent" style="height:400px;">
		<div class="biaoti1"><img src="/images/mimalogo.gif"/></div>
		<div class="mimanav">
			<div class="nav_left"></div>
			<div class="nav_mid">
				<ul>
					<li class="mimalist">1.填写如意彩用户名</li>
					<li class="mimalist">2.选择密码找回方式</li>
					<li class="mimahover">3.安全验证</li>
					<li class="mimalist">4.重设密码</li>
				</ul>
			</div>
			<div class="nav_right"></div>
		</div>
        <div class="rusercont">
        <form id="callbackForm" method="post" action="">
         <input type="hidden" id="username" value="${session.sendMsgByP}">
		  	<div class="test_tsh" style="margin:20px 0px 0px 80px;"><s:property value="#session.phoneMesg" escape="false"/></div>
			<div class="test_yzh1" style="padding:0px 0px 0px 50px;"><span style="float:left;">验证码：</span><span><input name="phoneRand" type="text"  id="passRegister" style="float:left;"/></span><span id="passRegisterTip">验证码是4位数字</span></div>
			<div class="test_con"><span class="test_con1">如果一分钟内没有收到验证短信，您可以再次获取验证码，此服务免费。</span><br/><a href="javaScript:getSendMessageAgain('key=1');"  title="点击获取短信"><span class="chongfa">在<span id="count">60</span>秒后点此重发</span></a></div>
			<div class="test_bottom" style="padding:30px 0px 0px 260px;"><input style="margin:0px;" type="hidden" name="userno" value="${session.userno }"/>
			<input style="margin:0px;" class="test_btn1" name="" type="button" value="" onclick="tGPhoneCheck('key=2');" /></div>
		 </form>
		  </div>
		  </div>

<script > 
var a = 0;
$(function(){
	$('#count').countdown({seconds: 60,callback: 'countadd()'});

});
function oncl(){      
	$('#count').countdown({seconds: 60,callback: 'countadd()'}); 
	}
function send()
{ 
    if(a==1){
		$("#a1").attr('onclick',oncl);//添加事件
		getSendMessageAgain();
		a=0;
	}
}
function countadd()
{ 
    a=1;
}

</script>