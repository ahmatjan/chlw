<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>{success}
<script language=javascript>
var price='0'; //价格  （销售分成用到，引导注册默认不用修改）
var orders = '<s:property value="#session.user.USERNAME"/>';//订单号（销售分成用到，引导注册默认不用修改）
var proportion = '0'; 
var like='';  //原样返回
</script>
<script language=javascript src='http://js1.9wad.com/cpa.js'></script>
<div class="RegisterBody">

	<div class="RegistePannel">
		<div class="RegistePannelHead RegistePannelHead_right">
			<h3>用户注册</h3>
		</div>
		<div class="RegistePannelBody">
			<div class="space20">&#160;</div>
			<ol class="RegisterProcessBanner RegisterProcessThred"><li>1. 填写会员信息</li><li>2. 输入验证码</li><li>3. 注册成功</li></ol>
			<div class="zhuce_success">
			
				<div class="Register_Success" style=" background:none;">
					<div class="Success_con" >恭喜您！注册成功！</div>
					<div class="Success_info">您的用户名为：<font id="trueName" class="blue"><s:property value="#session.user.USERNAME"/></font>您的昵称为： <font class="blue"><s:property value="#session.user.NICKNAME"/></font>   您的余额为：<font class="red1" id="touzhu_money">¥<script>getBalance();</script></font>元</div>
					<a href="/rules/user.html?key=4"  title="立即充值"><img src="/images/t_lijichongzhi.gif" width="116" height="32" /></a><a href="/include/goucaidating.html" title="购买彩票"><img src="../images/goumaicaipiao.gif" width="116" height="32" /></a>
				</div>
				
			</div>
		</div>
	
	</div>
</div>