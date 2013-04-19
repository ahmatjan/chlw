<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript">upd_data();</script>
<h2>安全资料</h2>
<div class="account_safetyInformation">
	<div class="space15">&#160;</div>
	<input id="word" type="hidden"  value='<s:property value="#session.tuserinfo.PASSWORD"/>'>
	<table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<th>您的账号安全等级</th>
			<td>
				<dl>
					<dt class="basicInfor_level" id="tips_data"></dt>
						<dd class="basicInfor_bar">
							<ul id="line">
							<li>&#160;</li>
							<li>&#160;</li>
						</ul>
					</dd>
				</dl>
			</td>
		</tr>
		<tr>
			<th>密    码</th>
			<td><span class="safetyInfor_text"><s:property value="#session.user.PASSWORD.replace(#session.user.PASSWORD,'******')"/></span><a class="safetyInfor_link" href="/rules/user.html?key=8" title="修改">修改</a></td>
			
		</tr>
		<tr>
			<th>真实姓名</th>
			<td>
				<s:if test="#session.user.NAME.trim().equals('')"><font color="#B5BBBB" style="line-height:30px;">未绑定</font></s:if>
				<s:else><s:property value="#session.user.NAME.trim().substring(0,1)+'****'"/></s:else>
			</td>
		</tr>
		<tr>
			<th>身份证号</th>
			<td>
				<s:if test="#session.user.CERTID.equals('')||#session.user.CERTID.equals('111111111111111111')"><font color="#B5BBBB" style="line-height:30px;">未绑定</font><a href="/rules/user.html?key=34" title="绑定" style="line-height:30px; margin-left:10px;">立即绑定</a></s:if>
				<s:else><s:property value="#session.user.CERTID.trim().substring(0,6)+'********'"/></s:else>
			</td>
		</tr>
		<s:if test='#session.user.USERNAME.indexOf("@")>-1'>
			<tr>
				<th>手机</th>
				<td>
					<s:if test="#session.user.MOBILEID == null || #session.user.MOBILEID == ''||' '.equals('#session.user.MOBILEID') || #session.user.MOBILEID.indexOf('1')==-1" >
						<span class="safetyInfor_text"><font style="line-height:30px;" color="#B5BBBB">未绑定</font><a style="line-height:30px; margin-left:10px;" href="/rules/user.html?key=10" title="绑定">立即绑定</a></span>
					</s:if>
					<s:else>
						<span class="safetyInfor_text"><s:property value="#session.user.MOBILEID.substring(0,7)+'****'" /></span><a class="safetyInfor_link" href="/rules/user.html?key=10" title="修改">立即修改</a>
					</s:else>
				</td>
			</tr>
		</s:if>
		<s:else>
			<tr>
			<th>电子邮箱</th>
			<td>
				<s:if test="#session.user.EMAIL.equals('')||#session.user.EMAIL.equals('null')||#session.user.EMAIL.indexOf('@')==-1">
					<span class="safetyInfor_text"><font style="line-height:30px;" color="#B5BBBB">未绑定</font><a style="line-height:30px; margin-left:10px;" href="/rules/user.html?key=36" title="绑定">立即绑定</a></span>
				</s:if>
				<s:else>
					<span class="safetyInfor_text"><s:property value="#session.user.EMAIL.trim().split('@')[0].substring(0,2)+'***@'+#session.user.EMAIL.trim().split('@')[1]" /></span>
					<a class="safetyInfor_link" href="/rules/user.html?key=38" title="修改">修改</a>
			</s:else>
			</td>
		</tr>
		</s:else>
	</table>
</div>

<script>
	$(function(){
		$(".a_safetyInformation").addClass("selected");
	});
</script>