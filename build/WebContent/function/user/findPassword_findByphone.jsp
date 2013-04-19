<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

  <div class="rusercontent" style="height:500px;">
		<div class="biaoti1"><img src="/images/mimalogo.gif"/></div>
		<div class="mimanav">
			<div class="nav_left"></div>
			<div class="nav_mid">
				<ul>
					<li class="mimalist">1.填写如意彩用户名</li>
					<li class="mimahover">2.选择密码找回方式</li>
					<li class="mimalist">3.安全验证</li>
					<li class="mimalist">4.重设密码</li>
				</ul>
			</div>
			<div class="nav_right"></div>
		</div>
        <div class="givepass">
        <form action="" method="post"  id='chooseFindPwdForm'>
        <input type="hidden" value='${session.userName}' id="username">
        <input type="hidden" value='${session.phone}' id="phones">
        <input type="hidden" value='${session.email}' id="emails">
        <div class="givepass_top">
	 		<div class="givepass_name">您需要找回密码的用户名是<span id="userFind" class="blue">${session.userName}</span>，请选择您准备找回密码的方式：<strong></strong></div>
			<div class="givepass_fashi">
				<div class="givepass_head"><input name="findPwdInfo" type="radio" value="" checked  id="phone"  />手机短信找回</div>
				<div class="givepass_content"><span class="givepass_con">您的手机${session.phone}将收到验证码。本服务完全免费。</span>
					<s:if test="#session.phone.equals('')">
						<input type="hidden" value="0" id="phoneBind1">
						<span class="givepass_bound" id="phoneBind">未绑定</span>
					</s:if><s:else>
						<input type="hidden" value="1" id="phoneBind1">
						<span class="givepass_bound" id="phoneBind">已绑定</span>
					</s:else>
				</div>
				<div class="givepass_btn"><span style="color:#333333;" class="givepass_anniu1">接收验证码</span><span style="color:#333333;" class="givepass_anniu2">设置新密码</span>
				<s:if test="#session.phone.equals('')"><span class="givepass_use">（不可以使用）</span></s:if>
				 <s:else><span class="givepass_use">（可以使用）</span></s:else></div>
			</div>
			<div class="givepass_fashi">
				<div class="givepass_head"><input  id="email" name="findPwdInfo" type="radio" value="" />电子邮箱找回</div>
				<div class="givepass_content"><span class="givepass_con">您的邮箱${session.email}将收到一封信，用于找回密码。</span>
				<s:if test="#session.email.equals('')">
				<input type="hidden" value="0" id="emailBind1">
				<span class="givepass_nobound" id="emailBind">未绑定</span>
				</s:if>
				<s:else>
				<input type="hidden" value="1" id="emailBind1">
				<span class="givepass_nobound" id="emailBind">已绑定</span>
				</s:else></div>
				<div class="givepass_btn"><span style="color:#333333;" class="givepass_anniu1">查收邮件</span><span style="color:#333333;" class="givepass_anniu2">设置密码</span>
				<s:if test="#session.email.equals('')"><span class="givepass_use">（不可以使用）</span></s:if>
				 <s:else><span class="givepass_use">（可以使用）</span></s:else></div>
			</div>
			<div ><input id="findPwdinput" class="givepass_bottom" name="" type="button" value=""  onclick="tGFindPwd('key=1')"/></div>
		</div>
		<script>
      //   alert($("#phones").val()+"-----"+$("#emails").val());
         if($("#phones").val()==""){
        		 $("#phone").attr("disabled","disabled");
        		 $("#phone").attr("checked",'');
        		 $("#email").attr("checked",'checked');
          }
         if($("#emails").val()==""){
        	 $("#email").attr("disabled","disabled");
        	 $("#email").attr("checked",'');
    		 $("#phone").attr("checked",'checked');
         }
         
         </script>  
			</form>
        </div>
    	   
  </div>
        