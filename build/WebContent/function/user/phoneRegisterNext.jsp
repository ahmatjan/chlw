<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript">
$(function(){	
$.formValidator.initConfig({
	formid:"realForm",
	onError:function(){
		alert(decodeURI(EncodeUtf8("校验没有通过，具体错误请看错误提示。")));
		return false;
	}
});
$("#passRegister").formValidator({
	min : 4,
	max : 4,
	onshow : decodeURI(EncodeUtf8("请输入您手机中的4位数字验证码。")),
	onfocus :decodeURI(EncodeUtf8( "必须和您手机收到的保持一致！")),
	oncorrect : decodeURI(EncodeUtf8("验证码一致。"))
}).inputValidator({
	min : 4,
	max : 4,
	empty : {
		leftempty : false,
		rightempty : false,
		emptyerror :decodeURI(EncodeUtf8( "验证码两边不能有空符号！"))
	},
	onerror :decodeURI(EncodeUtf8( "验证码位数不对，请确认！"))
});
});
 if($("#trueMsg").text()==''){
	 window.location.href="/rules/register.html";
	 }
 </script>
<div class="RegistePannel">
	<div class="RegistePannelHead RegistePannelHead_right">
		<h3>用户注册</h3>
	</div>
	<form action="#" method="post" id="realForm" name="realForm" >
	<div class="RegistePannelBody">
		<div class="space20">&#160;</div>
		<ol class="RegisterProcessBanner RegisterProcessSecond"><li>1. 填写会员信息</li><li>2. 输入验证码</li><li>3. 注册成功</li></ol>
		<script type="text/javascript">getSend();</script>
		<dl class="input_code">
			<dt> <span id="smsMessage">如意彩已经向您的手机发送免费的验证短信，请查看短信。</span></dt>
			<dd>手机号码：<b><span id="trueMsg" class="shoujihao"><s:property value="#session.registerUser.USERNAME"/></span></b><a class="font_color" href="/rules/phoneRegisterIndex.html" title="更换号码"> 更换号码</a></dd>
			<dt>
				<table>
					<tr>
						<td>
							验证码：<input  name="passRegister" id="passRegister" type="text" class="s_number" />
						</td>
						<td>
							<input style="display: none;" type="text" /><span id="passRegisterTip" style="margin-top:0px; padding-top:0px;"></span>
						</td>
					</tr>
				</table>
			</dt>
			
			<dd>如果您在60秒后没收到验证码，请：<span class="s_time" id="a1" onclick="send()"; style="cursor:pointer;">在<span id="count">60</span>秒后点此重发</span></dd>
			<a href="javaScript:PhoneCheck('key=4')" id="renzheng_submit" title="下一步" class="Received_mail_btn"><img src="/images/second_next.gif" width="116" height="33" /></a>
		</dl>
	</div>
	</form>
</div>
<SCRIPT LANGUAGE="JavaScript"> 

var a = 0;
$(function(){
	$('#count').countdown({seconds: 60,callback: 'countadd()'});

});
function oncl(){
	pageFlashNum=0;
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