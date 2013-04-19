<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<link href="/css/user.css" rel="stylesheet" type="text/css">
 <s:if test="#session.user.EMAIL.equals('')||#session.user.EMAIL.equals('null')">
 <!-- 未设定页面 -->
		<div class="user_head">
			<div class="user_zi">服务--邮箱服务</div>
		</div>
		<div class="user_content">
           <div class="user_contenttop">邮箱服务</div>
          <div class="user_contopbg01"><img src="/images/icon_tanhao.png" width="12" height="12" />&nbsp;温馨提示：现在就绑定邮箱后，即可<span class="red">免费定制</span>以下邮箱服务&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/rules/user.html?key=37"><span class="blue"> 立即绑定邮箱</span></a></div>
          <div class="user_zhtx">
          <span class="333333">密码找回</span>&nbsp;&nbsp;&nbsp;&nbsp;    当您忘记密码时，可通过邮箱找回您的密码 
          </div>
    
		  </div>
</s:if>
<s:else>
<!-- 验证完毕页面、已设定页面 -->
		<div class="user_head">
			<div class="user_zi">服务--邮箱服务</div>
		</div>
		<div class="user_content">
           <div class="user_contenttop">邮箱服务</div>
          <div class="user_contopbg2">已绑定邮箱：<s:property value="#session.user.EMAIL"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      <span class="blue01"><a href="/rules/user.html?key=38">修改绑定</a></span></div>
          <div class="user_zhtx">
          <span class="333333">
          <span class="333333">密码找回</span>&nbsp;&nbsp;&nbsp;&nbsp;    当您忘记密码时，可通过邮箱找回您的密码。 <img src="/images/fw-xdg.gif" width="13" height="13" />
          <span class="12">已定制&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;系统默认</span>
          </span>
          </div>
		  </div>
</s:else>