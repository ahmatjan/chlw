<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><%@ taglib prefix="s" uri="/struts-tags" %>{success}
	<div id="main">
		<div class="register_head">注册</div>
		<div class="register_nav"><img src="/images/t_txhyxi2.png" /><img src="/images/zhuce_2.gif" /><img src="/images/t_zccg1.png" /></div>
		<div class="register_content">
			<div class="register_succ">
				<div class="register_succ_head"><span class="red">恭喜您！</span><span class="huizi">注册成功！</span></div>
				<div class="register_succ_name">您的用户名为&nbsp;&nbsp;<span class="red"><s:property value="#session.user.MOBILEID"/></span></div>
				<div class="register_succ_name">您的昵称为&nbsp;&nbsp;<span class="red"><s:property value="#session.user.NICKNAME"/></span><a href="/rules/user.html?key=7&#Menu=ChildMenu3"  target="_blank" title="继续完善个人资料"><span class="blue_text">继续完善个人资料>></span></a></div>
				<div class="register_succ_do">您还可以：<a href="/rules/user.html?key=4&#Menu=ChildMenu1" target="_blank" title="立即充值"><span class="red_text">立即充值</span></a><a href="/shuangseqiu.html" target="_blank" title="购买彩票"><span class="red_text">购买彩票</span></a><a href="/" target="_blank" title="去首页看看"><span class="red_text">去首页看看</span></a></div>
			</div>
		</div>
	</div>