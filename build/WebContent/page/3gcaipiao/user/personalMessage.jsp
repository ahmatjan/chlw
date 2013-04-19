<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<link href="/css/user.css" rel="stylesheet" type="text/css">
 
		<div class="user_head">
			<div class="user_zi">我的账号-基本资料</div>
		</div>
		<div class="user_content">
			<div class="user_contopbg">
			  <div class="safe_top">
			  
				您的资料完整度是<font class="wenzi_red"><span id="tip"><script >topShow()</script></span></font>
			  </div>
			  <div class="ziliao_bar">
			  	<ul id="percentage">
				</ul>
			  </div>
	    	</div>
	    	<form action="#" method="post" onsubmit="return reHtml(25,$('#form2').serialize());" id="form2" >
			<div class="safe_content">
				<div class="ziliao_con">
				<font color="red"><s:property value="#request.message"/></font>
					<ul>
						<li><span class="safe_head">用户名：</span><span class="safe_nr"><s:property value="#session.user.MOBILEID"/></span></li>
						<li><span class="safe_head">昵称：</span><span class="safe_nr"><s:property value="#session.user.NICKNAME"/></span></li>
						<!-- <li><span class="safe_head">性别：</span><span class="ziliao_nr"><input name="name" type="radio" value="" />男<input name="name" type="radio" value="" />女<input name="name" type="radio" value="" checked />保密</span></li> -->
						<li><span class="safe_head">居住地：</span>
						<span>
						<input id="address" class="ziliao_input" name="tuserinfo.ADDRESS" type="text" value='<s:property value="#session.user.ADDRESS.trim()"/>'/>
						<!--<select class="ziliao_select" name=""><option value="">==请选择==</option></select><select class="ziliao_select" name=""><option value="">==请选择==</option></select>-->
						</span>
						</li>
						<li><span class="safe_head">QQ：</span>
						<span >
						<input id="qq" class="ziliao_input" name="tuserinfo.QQ" type="text" value='<s:property value="#session.user.QQ.trim()"/>'/>
						</span>
						</li>
					<%/*	<li><span class="safe_head">联系电话：</span><span><input id="phone" class="ziliao_input" name="tuserinfo.MOBILEID" type="text" value='<s:property value="#session.user.MOBILEID"/>'/></span><span class="ziliao_tishi">确认提款时与您联系的电话号码。（手机座机均可）</span></li>*/%>
						<li><span><input name="" class="ziliao_btn" value="" type="submit" /></span></li> 
					</ul>
					<p></p>
					
				</div>
			</div>
			</form>
		</div>
		