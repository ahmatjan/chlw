<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<link href="/css/user.css" rel="stylesheet" type="text/css">

<!-- 修改绑定页面 -->
		<div class="user_head">
			<div class="user_zi">服务--邮箱服务</div>
		</div>
		<div class="user_content">
           <div class="user_contenttop">邮箱服务</div>
           <div class="user_contentmain">
                <div class="contmain01">
                  <p>请输入您的电子邮箱地址，系统会给您发送验证邮件</p>
                  <script type="text/javascript">checkBand();</script> 
                  <font color="red"><s:property value="#request.message"/></font>
                    <form name="updateEmailBandForm" id="updateEmailBandForm" action="#" method="post" onsubmit="return reHtml(39,$('#updateEmailBandForm').serialize());" >
                  <span><input type="hidden" name="typePage" id="typePage" value="updateEmailBand"></span>
                  <p><span>旧电子邮箱地址：<s:property value="#session.user.EMAIL"/><!-- <input class="emailinput"  name="" id="old_email" type="text" value='<s:property value="#session.user.EMAIL"/>'/></span><span id="old_emailTip">--></span> </p><br/>
                  <p><span>新电子邮箱地址：<input class="emailinput"  name="tuserinfo.EMAIL" id="new_email" type="text" /></span><span id="new_emailTip"></span>
                  </p>
                     <p> <input name="" class="send_ranzheng" type="submit"  value=""/></p>
                  </form>
             </div>
                
           </div>
		
		</div>
