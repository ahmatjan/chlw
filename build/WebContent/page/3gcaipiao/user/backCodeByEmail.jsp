<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>{success}
<div id="container">
  <div id="main">
	<div class="register_head">找回密码</div>
	<div class="register_nav"><img src="/images/zh_1b.jpg" /><img src="/images/zh_2b.jpg" /><img src="/images/zh_3y.jpg" /><img src="/images/zh_4b.jpg" /></div>
		<form action="#" method="post" id="realForm" name="realForm" >
		<div class="register_content">
		  <div class="test_top">
		  	<div class="test_tsh" id="sendEmailAgain"><s:property value="#request.message" escape="false"/></div>
			<div class="test_yzh"><strong>接受邮箱：<s:property value="#session.email"/></strong></div>
			<div class="test_mail">
				<div class="test_mail_con"><span  class="test_mail_zi">请进入邮箱查收邮件，若无法收到邮件，请点击重新发送邮件,每天只能发送3次。</span><br/><span class="accept_zis">如果您在60秒内没收到验证码，请:</span><a href="#" title="点击重发"><span id="a1" class="test_chongfa" onclick="send();"><span id="count">60</span>秒后点击重发</span></a></div>
				<div class="test_if">若还没收到邮件，请确认是否误认为垃圾邮件到垃圾箱了</div>
			</div>
			<div class="test_btn"><input class="givepass_bot2" type="button" onclick="openEmail('<s:property value="#session.emailUrl"/>');"/></div>
		  </div>
		  </div>
		</form>
	</div>
</div>

<SCRIPT LANGUAGE="JavaScript"> 

var a = 0;
$(function(){
	$('#count').countdown({seconds: 60,callback: 'countadd()'});

})
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