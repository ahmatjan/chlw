<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<link href="/css/user.css" rel="stylesheet" type="text/css">

<!--  邮箱验证两个页面-->
		<div class="user_head">
			<div class="user_zi">服务--邮箱服务</div>
		</div>
		<div class="user_content">
           <div class="user_contenttop">邮箱服务</div>
           <div class="user_contentmain">
                <div class="contmain01">
                  <span>验证邮件已经发送到以下地址，请注意查收！</span><br />
                  <span class="red"><s:property value="#request.tuserinfo.EMAIL"/></span><a href='http://<s:property value="#session.emailUrl"/>' target="_blank"  style="cursor:pointer;"><span class="blue">登录邮箱</span></a><br>
                <span class="616060">验证邮件可能会被误认为垃圾邮件，查收时请注意。</span>
                </div>
           </div>
		
		</div>
