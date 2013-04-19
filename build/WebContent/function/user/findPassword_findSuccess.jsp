<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="s" uri="/struts-tags" %>
<script></script>

  <div class="rusercontent" style="height:400px; overflow:hidden;">
		<div class="biaoti2"><img src="/images/mimalogo.gif"/></div>
		<div class="rusercont" style="padding-left:50px;">
			<input type="hidden" id="username" value="${session.resetPwd}">
			<div class="gongxi" style="margin:60px 0px 0px 60px; width:auto; clear:both; display:inline;"><span><img src="/images/duigou.gif" /></span><span class="newmima">您的新登录密码设置成功！</span></div>
			<div class="nicheng" style="float:left; margin-left:170px; width:200px; clear:both; display:inline;">请牢记您的登录密码。</div>
			<div style="float:left; margin:40px 0px 0px 190px; clear:both; display:inline; overflow:hidden;"><input class="tijiaobtn2" style="margin:0px; clear:both;" name="" type="button" onclick="window.location.href='/rules/login.html'" value="" /></div>
		</div>
  </div>
