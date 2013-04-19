<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%><%@ taglib prefix="s" uri="/struts-tags"%>{success}
<div id="container">
<div id="right_text_certifiction">
<form name="chooseFindPwdForm" id="chooseFindPwdForm" action=""
	method="post">
<div id="main">
<div class="register_head">找回密码</div>
<div class="register_nav"><img src="/images/zh_1b.jpg" /><img
	src="/images/zh_2y.jpg" /><img src="/images/zh_3b.jpg" /><img
	src="/images/zh_4b.jpg" /></div>
<div class="register_content">
<div class="givepass_top">
<div class="givepass_fashi">
<div class="givepass_head"><input name="findPwdInfo" type="radio"
	value="<s:property value="#session.phone"/>" id="mobileInfo"
	checked="checked" />手机短信找回</div>
<div class="givepass_content"><span class="givepass_con">您的手机<s:property
	value="#session.phone" />将收到验证码。本服务完全免费。</span><span
	class="givepass_bound">已绑定</span></div>
<div class="givepass_btn"><a href="#" title="接收验证码"><span
	class="givepass_anniu1">接收验证码</span></a><a href="#" title="设置新密码"><span
	class="givepass_anniu2">设置新密码</span></a><span class="givepass_use">（可以使用）</span></div>
</div>
<div class="givepass_fashi">
<div class="givepass_head"><input name="findPwdInfo" type="radio"
	value="emailInfo" id="emailInfo" />电子邮箱找回</div>
<div class="givepass_content"><span class="givepass_con">您的邮箱<s:property value="#session.email"/>将收到一封信，用于找回密码。</span>
<input type="hidden" id="emailHid" name="emailHid" value='<s:property value="#session.email"/>'>
<s:if test='#session.email.equals("")'>
	<span class="givepass_nobound">未绑定</span>
</s:if><s:else>
	<span class="givepass_bound">已绑定</span>
</s:else></div>
<div class="givepass_btn"><a href="#" title="查收邮件"><span
	class="givepass_anniu1">查收邮件</span></a><a href="#" title="设置密码"><span
	class="givepass_anniu2">设置密码</span></a> 
	<s:if test='#session.email.equals("")'>
	<span class="givepass_use">（不可以使用）</span>
	</s:if>
	<s:else>
	<span class="givepass_use">（可以使用）</span>
	</s:else>
</div>
</div>
<div class="givepass_bottom"><input class="givepass_bot" name=""
	type="button" value="" onclick="tGFindPwd()" id="findPwd_submit" /></div>
</div>
</div>
</div>
</form>
</div>
</div>
