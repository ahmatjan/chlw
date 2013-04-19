<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<link href="/css/user.css" rel="stylesheet" type="text/css">
 
		<div class="user_head">
			<div class="user_zi">我的账号-修改密码</div>
		</div>
		<div class="user_content">
          <div class="user_contopbg1">
            <img src="/images/icon_tanhao.png"  class="user_iconimg" />目前强度：<font class="wenzi_red"><span id="tips"></span></font><br/>
            建议使用6-16个字符，可由小写英文字母、阿拉伯数字、下划线混合提高密码强度。  
          </div>
		  <div class="repas_content">
		  <script type="text/javascript">editUserValidator()</script>
		  <form name="form2" id="form2" action="#" method="post" onsubmit="return reHtml(27,$('#form2').serialize());" >
		  	<ul>
		  
		  	<font color="red"><s:property value="#request.message"/></font>
			  	<li><span class="repas_mima">当前密码：</span><span class="repas_input"><input name="complementBan.old_pass" id="old_pass" type="password" maxlength="20" /></span><span id="old_passTip"></span></li>
				<li><span class="repas_mima">新密码：</span><span class="repas_input"><input name="complementBan.new_pass" id="new_pass" type="password" maxlength="20" onkeyup="upd()"/></span><span id="new_passTip"></span></li>
				<!-- <li><span class="repas_shm">密码说明</span></li> -->
				<li><span class="repas_mima">确认新密码：</span><span class="repas_input"><input name="complementBan.real_pass" id="real_pass" type="password" maxlength="20" /></span><span id="real_passTip"></span></li>
			</ul>
			<div><input name="input" onmouseover="editUserValidator()" class="repas_submit" type="submit" value=""/>
			</div>
			</form>
		  </div>
		</div>
    