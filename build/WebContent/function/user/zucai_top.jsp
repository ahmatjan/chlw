<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@ page import="com.jrt.invokeLot.lot.bean.Tuserinfo,net.sf.json.JSONObject,com.jrt.invokeLot.util.JSONReslutUtil,com.ruyicai.util.NameUtil" %>
<script type="text/javascript">
	//增加获取当前地址并登录成功后跳转到这个地址
	$(function() {
		var reqUrl = window.location.href;
		$("#reqUrl").val(encodeURIComponent(reqUrl));
		$("#reqUrlLog").val(encodeURIComponent(reqUrl));
	});
</script>
<%
	JSONObject user = JSONReslutUtil.getUserInfo(request);
	System.out.print(user);
%>
<input id="reqUrl" type="hidden" value="" name="reqUrl">
<%if(user!=null&&!user.getJSONObject("value").equals("null")&&!(user.getJSONObject("value").isEmpty())){ %>
<% user.put("t_name",NameUtil.getNameUtilJson(user.getJSONObject("value"))) ;%>
	<%//1.判断用户是登陆？已登录，则获取用户信息 %>
		<input type="hidden" value="<%=user.get("t_name") %>" id="nick">

			<%//1.2有昵称则正常跳转回首页 %>
				<!-- 登陆后 账户信息及账户操作 start -->
				<script>
					balanceDivDis("topLogin_money", "", "freeze_money");
				</script>
				<dl class="LoginLater">
					<dt>
						<font>
							欢迎您，
						</font>
						<a href="/rules/user.html?key=7" target="ssq">
							<%=user.get("t_name") %>
						</a>
					</dt>
					<dd>
						<div class="SelectAccount" onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))">
							我的账户
							<span class="SelectTriangle">
							</span>
							<span class="line">
							</span>
							<dl>
								<dt><em>可用余额：<i>¥</i><i id="topLogin_money"></i>元</em></dt>
								<dd><em>冻结资金：<i>¥</i><i id="freeze_money"></i>元</em></dd>
							</dl>
						</div>
					</dd>
					<dt>
						|<a href="/rules/user.html?key=4" target="ssq">充值</a>
						|<a href="/rules/user.html?key=11" target="ssq">提款</a>
						|<a href="javascript:zucaiLoginOut();">退出</a>
					</dt>
				</dl>
				<!-- 登陆后 账户信息及账户操作end -->
<%}else{ %>
<s:if test="#session.CHANNEL=='636'||#session.CHANNEL=='660'">
	<%//2.用户没有登陆， 判断是否是彩多多用户，如果是则跳转到彩多多用户注册页面，进行用户注册 %>
		<script>
			window.location.href = "/chlw/function/cooperation/coop_inputUserInfo.jsp ";
		</script>
</s:if>
<s:else>
	<%//3.用户没有登陆 也不是彩多多的用户则 跳回首页 %>
		<form method="post" id="userLoginForm">
			<!-- 登录前 账户密码输入框以及快速入口 start -->
			<dt>
				您好，欢迎来到如意彩！
			</dt>
			<dt>
				<a href="http://users.ruyicai.com/login.jsp" target="ssq">登录</a>
				|<a href="http://users.ruyicai.com/register/register_new.jsp" target="ssq">免费注册</a>
			</dt>
			<!-- 登录前 账户密码输入框以及快速入口 end -->
		</form>
</s:else>
<% }%>