<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<script type="text/javascript">
	//增加获取当前地址并登录成功后跳转到这个地址
	$(function() {
		var reqUrl = window.location.href;
		$("#reqUrl").val(reqUrl.split("com")[1]);
		$("#reqUrlLog").val(reqUrl.split("com")[1]);
	});
</script>
<input id="reqUrl" type="hidden" value="" name="reqUrl" class="SelectedAddressInput">
<s:if test="#session.user!=null">
	<%//1.判断用户是登陆？已登录，则获取用户信息 %>
		<input type="hidden" value="${session.user.NICKNAME}" id="nick">
		<s:if test=' #session.user.NICKNAME == null || #session.user.NICKNAME.equals(" ")'>
			<%//1.1已登录用户判断是否有昵称 ，没有昵称则跳转到填写昵称页面 %>
				<script>
					topLogin2();
				</script>
		</s:if>
		<s:else>
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
						<a href="/rules/user.html?key=7" target="_blank">
							${session.user.NICKNAME}
						</a>
					</dt>
					<dd>
						<div class="SelectAccount" onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))"
						onclick="javaScript:window.location.href='/rules/user.html?key=23'">
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
						|<a href="/rules/user.html?key=4" target="_blank">充值</a>
						|<a href="/rules/user.html?key=11" target="_blank">提款</a>
						|<a href="javascript:ajaxLoginOut();">退出</a>
					</dt>
				</dl>
				<!-- 登陆后 账户信息及账户操作end -->
		</s:else>
</s:if>
<s:elseif test="#session.CHANNEL=='636'||#session.CHANNEL=='660'">
	<%//2.用户没有登陆， 判断是否是彩多多用户，如果是则跳转到彩多多用户注册页面，进行用户注册 %>
		<script>
			window.location.href = "/chlw/function/cooperation/coop_inputUserInfo.jsp ";
		</script>
</s:elseif>
<s:else>
	<%//3.用户没有登陆 也不是彩多多的用户则 跳回首页 %>
		<form method="post" id="userLoginFormTOP">
			<!-- 登录前 账户密码输入框以及快速入口 start -->
			<dt><em>用户名</em></dt>
			<dd>
				<input class="text" type="text" name="tuserinfo.USERNAME" id="userName"/>
			</dd>
			<dt><em>密码</em></dt>
			<dd>
				<input class="text" type="password" name="tuserinfo.PASSWORD" id="Pwd"
				onKeyDown="if (event.keyCode==13)loginAjax(0,'userLoginFormTOP');" />
			</dd>
			<dd>
				<div class="SelectAspect" onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))">
					<font class="SelectedAddress">选择去向</font>
					<span class="SelectTriangle"></span>
					<span class="line"></span>
					<dl>
						<dt><a onmouseover="HoverOver($(this));" onmouseout="HoverOut($(this));" onclick="SelectAspect($(this))" AddressTarget="/rules/user.html?key=23">
								我的账户
							</a>
						</dt>
						<dd>
							<a onmouseover="HoverOver($(this));" onmouseout="HoverOut($(this));" onclick="SelectAspect($(this))" AddressTarget="/include/goucaidating.html">
								购彩大厅
							</a>
						</dd>
						<dd>
							<a onmouseover="HoverOver($(this));" onmouseout="HoverOut($(this));" onclick="SelectAspect($(this))" AddressTarget="/hemai/hemaiCenter.html">
								合买中心
							</a>
						</dd>
						<dd>
							<a onmouseover="HoverOver($(this));" onmouseout="HoverOut($(this));" onclick="SelectAspect($(this))" AddressTarget="/shuangseqiu.html">
								双色球投注
							</a>
						</dd>
						<dd>
							<a onmouseover="HoverOver($(this));" onmouseout="HoverOut($(this));" onclick="SelectAspect($(this))" AddressTarget="/shishicai.html">
								时时彩投注
							</a>
						</dd>
					</dl>
				</div>
			</dd>
			<dd>
				<input class="button Button_L3_Y" type="button" value="登录" onclick="loginAjax(0,'userLoginFormTOP')"
				/>
			</dd>
			<dd>
				<div class="SelectLogin" onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))">
					免注册登录
					<span class="line">
					</span>
					<dl>
						<dt>
							<a href="javascript:void(qqUnitedLogin())"><img src="/images/login_QQ.gif" />QQ</a>
						</dt>
						<dd><a href="javascript:void(zfbLogin())"><img src="/images/login_zhiFuBao.gif" />支付宝</a>
						</dd>
					</dl>
				</div>
			</dd>
			<dt><a href="/rules/register.html">免费注册</a>|<a href="/rules/findPwd.html">忘记密码</a></dt>
			<input id="reqUrlLog" type="hidden" value="" name="reqUrl" class="SelectedAddressInput">
			<input type="hidden" value="0"  name="rank_value" />
			<!-- 登录前 账户密码输入框以及快速入口 end -->
			<script>
				//首页未登录选择去向脚本 
				function SelectAspect(n) {
					var Content = n.html();
					var Address = n.attr("AddressTarget");
					$(".SelectedAddress").html(Content);
					$(".SelectedAddressInput").val(Address);
					$(".SelectAspect").removeClass("over");
				}
			</script>
		</form>
</s:else>