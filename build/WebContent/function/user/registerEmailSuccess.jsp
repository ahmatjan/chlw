<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>邮箱注册成功页面</title>
<link type="text/css" href="/css/util.css" rel="stylesheet"/>
<link type="text/css" href="/css/ruserAll.css" rel="stylesheet"/>
<script type="text/javascript" src="/js/jqueryJS/jquery-1.5.min.js"></script>
<script type="text/javascript" src="/js/ruserAll.js"></script>
<script type="text/javascript" src="/js/util.js"></script>
<script language=javascript>
var price='0'; //价格  （销售分成用到，引导注册默认不用修改）
var orders = '<s:property value="#session.user.USERNAME"/>';//订单号（销售分成用到，引导注册默认不用修改）
var proportion = '0'; 
var like='';  //原样返回
</script>
<script language=javascript src='http://js1.9wad.com/cpa.js'></script>
 </head>
<body>
 <div id="body">
	<div class="RegisterHead">
<table><tr><td><a href="/index.html"><img src="/images/RegisterLogo.gif" /></a></td></tr></table> <dl><dt>客服热线：400-665-1000</dt><dd><a href="/index.html">返回首页</a></dd></dl>
</div>

<div class="RegisterBody">

	<div class="RegistePannel">
		<div class="RegistePannelHead RegistePannelHead_right">
			<h3>用户注册</h3>
		</div>
		<div class="RegistePannelBody">
			<div class="space20">&#160;</div>
			<ol class="RegisterProcessBanner RegisterProcessThred"><li>1. 填写会员信息</li><li>2. 输入验证码</li><li>3. 注册成功</li></ol>
			<div class="zhuce_success">
			
				<div class="Register_Success">
					<div class="Success_con" >恭喜您！注册成功！</div>
					<div class="Success_info">
						您的用户名为：<font id="trueName" class="blue"><s:property value="#session.user.USERNAME"/></font>
						<br />您的昵称为：<font class="blue"><s:property value="#session.user.NICKNAME"/></font>
						<br />您的余额为：<font class="red1">¥0.00</font>元
					</div>
					<a href="/rules/user.html?key=4"  title="立即充值"><img src="/images/t_lijichongzhi.gif" width="116" height="32" /></a><a href="/include/goucaidating.html" title="购买彩票"><img src="/images/goumaicaipiao.gif" width="116" height="32" /></a>
				</div>
				
				<dl class="phone_yanzheng">
					<dt style="color:#de0201;">验证手机号码！</dt>
					<dt>
						<a class="wanShan_btn" href="/rules/user.html?key=10&view=ChildMenu4&style=menu4" title="马上验证">马上验证</a>
					</dt>
					
					<dt style="clear:both;">为什么要验证手机？	</dt>
					<dd>手机找回密码更安全更方便</dd>
					<dd>免费接收开奖短信、中奖通知</dd>
				</dl>
				
			</div>
		</div>
	
	</div>
</div>
<div id="footer" class="footer">
  <hr>
		<div class="copyright">Copyright 2002-2011如意彩票网 All rights reserved  京ICP备10007936号 增值电信业务经营许可证（<span lang="EN-US">B2-20100007</span>）</div>
	<div class="lianxi">客服热线：400-665-1000  | 客服邮箱：service@ruyicai.com</div>
	<div class="lianxi"> 如意彩温馨提示：彩票乃公益事业，投注请量力而行，不向未满18周岁的青少年出售彩票！</div>
	</div>
	</div>
 <!--#include virtual="/rules/51la.html"-->


</body>
</html>