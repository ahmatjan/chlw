<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<link href="/css/user.css" rel="stylesheet" type="text/css">
 
		<div class="user_head">
			<div class="user_zi">我的账号-身份证绑定</div>
		</div>
		<div class="user_content">
          <div class="user_contopbg">
            <img src="/images/icon_tanhao.png"  class="user_iconimg" />您还没有填写真实姓名和身份证！真实姓名和身份证是提款的重要凭证，建议您马上填写。
		</div>
		<div class="safe_content">
				<div class="personcard_con">
				<script type="text/javascript">editUserValidator();</script>
				<form action="#" method="post" onsubmit="return reHtml(35,$('#form2').serialize());" id="form2" >
					<font color="red"><s:property value="#request.message"/></font>
					<ul>
						<li><span class="safe_head">真实姓名：</span><span ><input class="ziliao_input" name="tuserinfo.NAME" id="name" type="text" value='<s:property value="#session.user.NAME.trim()"/>' /></span><span id="nameTip"></span></li>
						<li><span class="safe_head">身份证号码：</span><span>
						<s:if test="#session.user.CERTID.trim().equals('')">
						<input class="ziliao_input" type="text" name="tuserinfo.CERTID"  id="userID" value='<s:property value="  "/>'  />
						</s:if>
						<s:elseif test="#session.user.CERTID.trim().equals('111111111111111111')">
						<input class="ziliao_input" type="text" name="tuserinfo.CERTID"  id="userID" value='<s:property value="  "/>'  />
						</s:elseif>
						<s:else><input class="ziliao_input" type="text" name="tuserinfo.CERTID" id="userID"  value='<s:property value="#session.user.CERTID.trim()"/>'   />
						</s:else>
						</span><span id=userIDTip></span></li>
						<li><span><input name="" class="personcard_btn" value="" type="submit" /></span></li>
						
					</ul>
				</form>
				</div>
			</div>
		</div>
    