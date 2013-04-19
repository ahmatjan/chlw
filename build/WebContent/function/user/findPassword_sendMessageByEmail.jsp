<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="s" uri="/struts-tags" %>

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
	      <input type="hidden" id="username" value="${sengMsgByE}">
	
	 	<div class="test_tsh"  style="margin:20px 0px 0px 80px;">${session.emailMsg}</div>
		<div class="test_yzh" style="padding:0px 0px 0px 50px;">接受邮箱：<span id="email">${session.email}</span></div>
		
		<div class="test_con"><span class="test_con1">请进入邮箱查收邮件，若无法收到邮件，请点击重新发送邮件，重发不超过2次。</span><br/><a href="javaScript:getSendEmail();" title="点击重发"><span class="chongfa"><span id="count">60</span>秒后点击重发</span></a></div>
		<div class="test_zhushi">若还没收到邮件，请确认是否误认为垃圾邮件到垃圾箱了</div>
		<div class="test_bottom" style="padding:30px 0px 0px 260px;"><input style="margin:0px;" class="test_btn" name="" type="button" value=""  onclick="openEmail('<s:property value="#session.emailUrl"/>');" /></div>
	 </div>
</div>

<SCRIPT LANGUAGE="JavaScript"> 

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
		getSendEmailAgain();
		a=0;
	}
}
function countadd()
{ 
    a=1;
}

</SCRIPT>