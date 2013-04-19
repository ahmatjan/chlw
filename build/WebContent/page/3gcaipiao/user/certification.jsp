<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><%@ taglib prefix="s" uri="/struts-tags" %>{success}
<div id="main">
		<div class="register_head">注册</div>
		<div class="register_nav"><img src="/images/t_txhyxi2.png" /><img src="/images/t_sryzm1.png" /><img src="/images/zhuce_3.gif" /></div>
		<form action="#" method="post" id="realForm" name="realForm" >
		<div class="register_content">
				<div id="smsMessage" class="yzh_note">3G彩票网已经向您的手机发送免费的验证短信，请查看短信</div>
				<div class="yanzhengma">
					<span class="yzhm_zi">手机号码：</span>
					<span class="yzhm_hao"><s:property value="#session.registerUser.MOBILEID"/></span>
					<a href="javascript:" onclick='updatePhone()' title="更换号码">
					<span class="re_ma">更换号码</span></a>
				</div>
				<div class="yanzhengma">
					<span class="yzhm_zi">验证码：</span>
					<span>
						<input class="yzhm_input" name="passRegister" type="text" id="passRegister"/>
						<input style="display: none;" type="text"/>
					</span>
					<span id="passRegisterTip"></span>
				</div>
				<div class="accept" id="accept">
					<span class="accept_zi">如果您在60秒内没收到验证码，请:</span>
					<span id="a1" class="chongfa_btn" onclick="send();">在<span id="count">60</span>秒后点此重发</span>
				</div>
				<div class="xiayibu">
					<input type="hidden" name="realPass" value="<%=request.getParameter("realPass") %>"/>
					<input class="next_btn" name="renzheng_submit" type="button" id="renzheng_submit" value=""/>
				</div>
		</div>
		</form>
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
		getSend();
		a=0;
	}
}
function countadd()
{ 
    a=1;
}

</SCRIPT>