<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>{success}
<div id="container">
	<div id="main">
	<div class="register_head">返回验证码页面</div>
		<div class="register_nav"><img src="/images/zh_1b.jpg" /><img src="/images/zh_2b.jpg" /><img src="/images/zh_3y.jpg" /><img src="/images/zh_4b.jpg" /></div>
		<form action="#" method="post" id="callbackForm" name="callbackForm" >
		<div class="register_content">
		  <div class="test_top">
		  	<div class="test_tsh" id="sendMobileAgain"><s:property value="#request.message" escape="false"/></div>
			<div class="test_yzh"><span class="yzhm_zi">验证码：</span><span ><input class="yzhm_input" name="rand" type="text" id="passRegister"/></span><span id="passRegisterTip"></span></div>
			<div class="test_content">
				<div class="test_digit">验证码是4位数字</div>
				<div class="accepts"><span class="accept_zi">如果您在60秒内没收到验证码，请:</span><span id="a1" class="chongfa_btn" onclick="send();">在<span id="count">60</span>秒后点此重发</span></div>
			</div>
			<div class="test_btn"><input type="hidden" name="realPass" value="<%=request.getParameter("realPass") %>"/><input class="givepass_bot1" name="renzheng_submit" type="button" onclick="tGPhoneCheck()" value=""/></div>
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
		getSendMessageAgain();
		a=0;
	}
}
function countadd()
{ 
    a=1;
}

</SCRIPT>