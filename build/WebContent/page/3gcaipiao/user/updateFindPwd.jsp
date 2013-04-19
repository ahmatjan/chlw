<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>{success}
	<div class="re_pas_content">
	  <form name="updatePasswordForm" id="updatePasswordForm" action="#" method="post" onsubmit="return reHtml(27,$('#updatePasswordForm').serialize());">
	  	<div id="main">
		<div class="register_head">找回密码</div>
		<div class="register_nav"><img src="/images/zh_1b.jpg" /><img src="/images/zh_2b.jpg" /><img src="/images/zh_3y.jpg" /><img src="/images/zh_4b.jpg" /></div>
		<div class="register_content">
			<div class="test_top">
				<div class="re_pass"><span class="re_pass_zi">新 密 码：</span><span><input class="re_pass_input" name="passWord" type="password"  id="passUpdate"  onblur="passStrong();" onfocus="editPwdValidator();"/></span><span id="passUpdateTip"></span></div>			
				<div class="re_pass"><span class="re_pass_zi1">&nbsp;</span><span class="blue_qd1">密码强度：</span>
					<span class="re_pass_qdt">
						<ul id="tiao">
						</ul>
					</span><span class="register_qdz1" id="showStrong"></span></div>
				<div class="re_pass"><span class="re_pass_zi">确认新密码：</span><input name="newpassWord" class="re_pass_input" type="password"  id="real_pass" onblur="editPwdValidator();"/><div id="real_passTip"></div></div>
			<div class="save_btn"><input class="givepass_bot3"  id="updatePwd" type="button" onclick="tGPhoneCheckPwd()" /></div>
		  </div>
		</div>
	 </div>
	</form>
 </div>