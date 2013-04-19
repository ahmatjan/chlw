<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="s" uri="/struts-tags" %>
<script>checkPwd();</script>
<div id="container">
  <div class="rusercontent" style="height:400px;">
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
        <input type="hidden" id="username" value="${session.checkPhoneRand}">
        
		<div class="re_pass1" style="height:27px; line-height:27px;">
			<span class="re_pass_zi" style="margin:0px;">新　密　码：</span>
			<input class="re_pass_input" style="margin:1px 0px 0px 0px;" name="newpassWord" type="password"  id="passLogin" onkeyup="blockPassStrong(); "/>
			<span class="re_pass_tsh" id="passLoginTip" style="margin:0px 0px 0px 10px;"></span>
		</div>
		
		<div class="bound3" id="registerPassStrong" style="display: none; float:left; margin:15px 0px 0px 0px; overflow:hidden;">
			<span class="safe_top" style=" margin:0px; padding:0px 0px 0px 10px; letter-spacing:3px;">密码强度：</span>
			<span class="ziliao_bar" style="margin:6px 0px 0px 5px;"><ul id="tiao">	</ul></span>
			<span class="qiangrui" id="showStrong">强</span>
		</div>
			
		<div class="re_pass" style="height:27px; line-height:27px; margin:15px 0px 0px 0px; overflow:hidden;">
			<span class="re_pass_zi" style="margin:0px;">确认新密码：</span>
			<input style="margin:1px 0px 0px 0px;" name="conNewpwd" class="re_pass_input" type="password" id="real_pass"  />
			<span style="margin:0px 0px 0px 10px;" class="re_pass_tsh" id="real_passTip"></span>
		</div>
          
		<input class="save_btn" style="float:left;" name="Input2" type="button" value="" onclick="tGPhoneCheckPwd('key=3')" />
            
          </form>
        </div>
  </div>	  
</div>