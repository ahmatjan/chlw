<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript">upd_data();</script>

<link href="/css/user.css" rel="stylesheet" type="text/css">
		<div class="user_head">
			<div class="user_zi">我的账号-安全资料</div>
		</div>
		<div class="user_content">
			<div class="user_contopbg">
			  <div class="safe_top">
			  <input id="word" type="hidden"  value='<s:property value="#session.user.PASSWORD"/>'>
				您的账号安全等级<font class="wenzi_blue"><span id="tips_data"> </span></font>
			  </div>
			  <div class="safe_bar">
			  	<ul id="line">
				</ul>
			  </div>
	    	</div>
			<div class="safe_content">
				<div class="safe_con">
					<ul>
						<li><span class="safe_head">密码：</span><span class="safe_nr"><s:property value="#session.user.PASSWORD.replace(#session.user.PASSWORD,'******')"/><a href="/rules/user.html?key=8&#Menu=ChildMenu3" title="修改"><font>修改</font></a></span></li>
						<li><span class="safe_head">真实姓名：</span>
						<span class="safe_nr">
						<s:if test="#session.user.NAME.trim().equals('')"><font color="#B5BBBB">未绑定</font><a href="/rules/user.html?key=42&#Menu=ChildMenu3" title="绑定"><font color="#00579c">绑定</font></a></s:if>
						<s:else><s:property value="#session.user.NAME.trim().substring(0,1)+'****'"/></s:else>
						</span></li>
						<li><span class="safe_head">身份证号码：</span>
						<span class="safe_nr">
						<s:if test="#session.user.CERTID.trim().equals('')"><s:property value=" "/></s:if>
						<s:elseif test="#session.user.CERTID.equals('111111111111111111')"><s:property value=" "/></s:elseif>
						<s:else><s:property value="#session.user.CERTID.trim().substring(0,6)+'********'"/></s:else>
						</span></li>
						<%/*<li><span class="safe_head">银行卡：</span><span class="safe_nr"><s:property value="#request.objValue.BANKACCOUNT"/></span></li>*/ %> 
						<li><span class="safe_head">电子邮箱：</span>
						<span class="safe_nr">
						<s:if test="#session.user.EMAIL.equals('')||#session.user.EMAIL.equals('null')"><font color="#B5BBBB">未绑定</font><a href="/rules/user.html?key=37&#Menu=ChildMenu4" title="绑定"><font color="#00579c">绑定</font></a></s:if>
						<s:else> 
						<s:property value="#session.user.EMAIL.trim().split('@')[0].substring(0,2)+'***@'+#session.user.EMAIL.trim().split('@')[1]" /><a href="/rules/user.html?key=38&#Menu=ChildMenu4" title="修改"><font color="#00579c">修改</font></a></s:else>
						</span></li>
					</ul>
				</div>
			</div>
		</div>
		