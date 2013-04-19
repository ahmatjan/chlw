<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<link href="/css/user.css" rel="stylesheet" type="text/css">
<!--  邮箱设定页面-->
		<div class="user_head">
			<div class="user_zi">服务--邮箱服务</div>
		</div>
		<div class="user_content">
           <div class="user_contenttop">邮箱服务</div>
           <div class="user_contentmain">
                <div class="contmain01">
                  <p>请输入您的电子邮箱地址，系统会给您发送验证邮件</p>
                  <script type="text/javascript">band();</script><font color="red"><s:property value="#request.message"/></font>
                    <form name="emailBandForm" id="emailBandForm" action="#" method="post" onsubmit="return reHtml(39,$('#emailBandForm').serialize());" >
                  <span><input type="hidden" name="typePage" id="typePage" value="emailBand"></span>
                  <p><span>电子邮箱地址：<input class="emailinput" name="tuserinfo.EMAIL" id="emailBand" type="text" value='<s:property value="#session.user.EMAIL.trim()"/>' /></span><span id="emailBandTip"></span></p>
                  <p> <input name="" class="send_ranzheng" type="submit"  value=""/></p>
                  </form>
             </div>
                
           </div>
		
		</div>