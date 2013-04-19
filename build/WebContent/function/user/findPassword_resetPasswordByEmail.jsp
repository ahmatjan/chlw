<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>如意彩会员找回密码，可通过手机号或邮箱找回密码</title>
<meta http-equiv="keywords" content="如意彩会员，找回密码，手机号找回密码，邮箱找回密码"/>
<meta http-equiv="description" content="如意彩会员找回密码功能让您不再为丢失密码而烦恼！"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/css/util.css" />
<link rel="stylesheet" type="text/css" href="/css/ruserAll.css" />
<link type="text/css" rel="stylesheet" href="/css/validator.css"></link>
<script type="text/javascript" src="/js/jqueryJS/jquery-1.5.min.js"></script>
<script type="text/javascript" src="/js/jqueryJS/new_formValidator.js" ></script>
<script type="text/javascript" src="/js/findPwd.js"></script>
</head>
<body>
   
<div id="body">
	<div class="rusertop">
		<div class="ruserlogo"><a href="/index.html" title="首页"><img src="/images/logony.gif" width="152" height="75" /></a></div>
		<div class="rline"><a href="/index.html" title="首页">首页</a>|<a href="/rules/customesService.html" title="在线客服">在线客服</a></div>
	</div>
	<div class="rusercontent" style="height:400px;" id="successId">
		<div class="biaoti1"><img src="/images/mimalogo.gif"/></div>
		<div class="mimanav">
			<div class="nav_left"></div>
			<div class="nav_mid">
				<ul>
					<li class="mimalist">1.填写如意彩用户名</li>
					<li class="mimalist">2.选择密码找回方式</li>
					<li class="mimalist">3.安全验证</li>
					<li class="mimahover">4.重设密码</li>
				</ul>
			</div>
			<div class="nav_right"></div>
		</div>
        <div class="rusercont">
        <form id="updatePasswordForm" method="post" action="">
			<div class="re_pass1" style="height:27px; line-height:27px;">
				<span class="re_pass_zi" style="margin:0px;">新　密　码：</span>
				<input class="re_pass_input" style="margin:1px 0px 0px 0px;" name="newpassWord" type="password"  id="passLogin" onkeyup="blockPassStrong();"/>
				<span class="re_pass_tsh" id="passLoginTip" style="margin:0px 0px 0px 10px;"></span>
			</div>
          
			<div class="bound3" id="registerPassStrong" style="display: none; float:left; margin:15px 0px 0px 0px; overflow:hidden;">
				<span class="safe_top" style=" margin:0px; padding:0px 0px 0px 10px; letter-spacing:3px;">密码强度：</span>
				<span class="ziliao_bar" style="margin:6px 0px 0px 5px;"><ul id="tiao"></ul></span>
				<span class="qiangrui" id="showStrong">强</span>
			</div>
			
			<div class="re_pass" style="height:27px; line-height:27px; margin:15px 0px 0px 0px; overflow:hidden;">
				<span class="re_pass_zi" style="margin:0px;">确认新密码：</span>
				<input style="margin:1px 0px 0px 0px;" name="conNewpwd" class="re_pass_input" type="password" id="real_pass"  />
				<span style="margin:0px 0px 0px 10px;" class="re_pass_tsh" id="real_passTip"></span>
			</div>
			
          <div style="float:left;">
            <input class="save_btn" name="Input2" type="button" value="" onclick="tGPhoneCheckPwdByEmail('key=3')" />
          </div>
           <script>checkPwd();</script>
          </form>
        </div>
	</div>
	<div id="footer">
	  <script type="text/javascript">
	  var pdkeyP = GetQueryString("key");
		if(pdkeyP==null || pdkeyP=="undefined"){
		$("#body").show();}
         $.ajax({
      		'type': 'POST',
      		'url': '/include/footer_litter.html?r='+ Math.round(Math.random()*10000),
      		beforeSend:function(XMLHttpRequest){
     	    	
     	    },
      		'dataType': 'html',
      		'success': function(data){
      			$("#footer").html($.trim(data));
      		}
      	});
         </script>
	</div>
</div>
</body>
</html>