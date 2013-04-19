<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<div>
	<div class="user_head">
			<div class="user_zi">个人信息修改</div>
	</div>
	<div class="tikuan_content">
	<form action="/chlw/user/tuserinfoAction!changeTuserinfo" method="post" onsubmit="return reHtml(25,$('#form2').serialize());" id="form2" >
	<input type="hidden" name="tuserinfo.NAME" value='<s:property value="#session.user.NAME"/>'/>
	<table width="798" height="316" border="0" cellpadding="0" cellspacing="0">
	<s:property value="#request.message"/>
	<tr>
	<td width="105" height="47" class="tikuan_biao1">昵称：</td>
	<td colspan="2" class="tikuan_biao7"><span class="repas_mima"><input type="text" name="tuserinfo.USERNAME" id="nickName"  value='<s:property value="#session.user.USERNAME"/>' onfocus="editUserValidator()"></span><span id="nickNameTip"></span> </td>
	</tr>
	
	
	<tr>
	<td width="105" height="47" class="tikuan_biao1">身份证号码：</td>
	<td colspan="2" class="tikuan_biao7">
	<s:if test="#session.user.CERTID.equals('null')"><span class="repas_mima"><input type="text" name="tuserinfo.CERTID"  id="userID" value='<s:property value="  "/>' onfocus="editUserValidator()" /></span></s:if>
	<s:else><span class="repas_mima"><input type="text" name="tuserinfo.CERTID" id="userID"  value='<s:property value="#session.user.CERTID"/>' onfocus="editUserValidator()"  /></span></s:else>
	<span id=userIDTip></span>
	</td>
	</tr>
	
	<tr>
	<td width="105" height="47" class="tikuan_biao1">联系电话：</td>
	<td colspan="2" class="tikuan_biao7"><span class="repas_mima"><input type="text" name="tuserinfo.MOBILEID"  id="mobile_code" value='<s:property value="#session.user.MOBILEID"/>' onfocus="editUserValidator()" /></span><span id="mobile_codeTip"></span></td>
	</tr>
	
	
	<tr>
	<td width="105" height="47" class="tikuan_biao1">邮       箱：</td>
	<td colspan="2" class="tikuan_biao7"><span class="repas_mima"><input type="text" name="tuserinfo.EMAIL"  id="email"  value='<s:property value="#session.user.EMAIL" />' onfocus="editUserValidator()" /></span><span id="emailTip"></span></td>
	</tr>
	
	<tr>
	<td width="105" height="47" class="tikuan_biao1">用户地址：</td>
	<td colspan="2" class="tikuan_biao7">
	<span class="repas_mima"><input type="text" name="tuserinfo.ADDRESS"  id="user_address"   value='<s:property value="#session.user.ADDRESS" />' onfocus="editUserValidator()" /></span>
	<span id=user_addressTip></span>
	</td>
	</tr>
	
	<tr>
	<td width="105" height="47" class="tikuan_biao1">QQ：</td>
	<td colspan="2" class="tikuan_biao7">
	<span class="repas_mima"><input type="text" name="tuserinfo.QQ" id="qq"   value='<s:property value="#session.user.QQ" />' onfocus="editUserValidator()" /></span>
	<span id="qqTip"></span>
	</td>
	</tr>
	
	
	<tr>
	<td width="105" height="47" class="tikuan_biao1">MSN：</td>
	<td colspan="2" class="tikuan_biao7">
	<s:if test="#session.user.MSN.equals('null')"><span class="repas_mima"><input type="text" name="tuserinfo.MSN" id="msn"   value='<s:property value="  " />' onfocus="editUserValidator()" /></span></s:if>
	<s:else><span class="repas_mima"><input type="text" name="tuserinfo.MSN" id="msn"  value='<s:property value="#session.user.MSN" />' onfocus="editUserValidator()" /></span></s:else>
	<span id="msnTip"></span>
	</td>
	</tr>
	
	<tr>
	<td colspan="3" class="tikuan_biao8"><input class="xiugai_btn5" onmouseover="editUserValidator()" type="submit" value="" /></td>
	</tr>
	</table>
	</form>
	</div>
</div>

