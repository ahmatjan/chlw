<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>3g彩票网-注册</title>
<link rel="stylesheet" type="text/css" href="/css/index.css" />
<link rel="stylesheet" type="text/css" href="/css/zhuce.css" />
<link type="text/css" rel="stylesheet" href="/css/validator.css"></link>
<script type="text/javascript" src="/js/jqueryJS/jquery_last.js"></script>
<script type="text/javascript" src="/js/jqueryJS/formValidator.js"></script>
<script type="text/javascript" src="/js/jqueryJS/formValidatorRegex.js"></script>
<script type="text/javascript" src="/js/jqueryJS/formValidator_min.js"></script>
<script type="text/javascript" src="/js/login.js"></script>
<script type="text/javascript" src="/js/user.js"></script>
<script type="text/javascript" src="/js/findpwd.js"></script>
<script type="text/javascript" src="/js/jqueryJS/jquery.countdown.js"></script>
</head>
<body>
<div id="container">
<div id="header">
<div class="top">
<div class="top1">
<ul>
	<li class="shouye"><a href="javascript:setHomepage();"
		title="设为首页">设为首页</a></li>
	<li class="shoucang"><a href="javascript:addCookie();"
		title="加入收藏">加入收藏</a></li>
</ul>
</div>
<div class="top2">
<ul>
	<li><a href="/rules/customService.html" title="联系客服">联系客服<span>|</span></a></li>
	<li><a href="/bangzhuzhongxin/yonghuzhuce.html" title="帮助中心">帮助中心</a></li>
</ul>
</div>
</div>
<div class="logo">
<div class="logo_tu"><img src="/images/logo3g.gif" width="112"
	height="31" /></div>
<div class="slogen">唯一支持话费购彩的官方授权网站</div>
<div class="hotline"><img class="hotline_img1"
	src="/images/kfphone.gif" width="142" height="54" /><img
	class="hotline_img2" src="/images/topzxkf.gif" width="108" height="47" /></div>
</div>
<div class="mainbav">
<ul>
	<li><a href="/index.html" title="首页"> 首页</a></li>
	<li><a href="/shuangseqiu.html" title="购彩大厅">购彩大厅</a></li>
	<li><a href="/include/phoneLottery.html" target="_blank"
		title="话费购彩"> 话费购彩</a></li>
	<li><a href="/include/kaijianggonggao.html" title="开奖公告"> 开奖公告</a></li>
	<li><a href="#" title="图表走势"> 图表走势</a></li>
	<li><a href="/rules/phoneTouzhu.html" target="_blank" title="短信投注">
	短信投注</a></li>
</ul>
</div>
</div>
<div id="right_text_certifiction">
  <div class="re_pas_content">
	<form name="updatePasswordForm" id="updatePasswordForm" action="#" method="post">
	<input type="hidden"  name="phone" value="<%=request.getParameter("number")%>"/>
	<div id="main">
		<div class="register_head">找回密码</div>
		<div class="register_nav"><img src="/images/zh_1b.jpg" /><img src="/images/zh_2b.jpg" /><img src="/images/zh_3y.jpg" /><img src="/images/zh_4b.jpg" /></div>
		<div class="register_content">
			<div class="test_top">
				<div class="re_pass"><span class="re_pass_zi">新 密 码：</span><span><input class="re_pass_input" name="passWord" type="password"  id="passUpdate"  onblur="passStrong();" /></span><script>editPwdValidator()</script><span id="passUpdateTip"></span></div>			
				<div class="re_pass"><span class="re_pass_zi1">&nbsp;</span><span class="blue_qd1">密码强度：</span>
					<span class="re_pass_qdt">
						<ul id="tiao">
						</ul>
					</span><span class="register_qdz1" id="showStrong"></span></div>
				<div class="re_pass"><span class="re_pass_zi">确认新密码：</span><input name="newpassWord" class="re_pass_input" type="password"  id="real_pass"/><script>editPwdValidator()</script><span id="real_passTip"></span></div>
				<div class="save_btn"><input class="givepass_bot3" id="updatePwd" type="button" onclick="tGPhoneCheckPwdByEmail()" /></div>
			</div>
		</div>
	</div>
	</form>
  </div>
</div>

<div class="footer">
<div>2003-2011 联动优势科技有限公司版权所有 京ICP证030914号<br> 电信与信息服务业务经营许可证
京2-2-1-2004109Verisign国家信息安全一级认证诚信企业<br> <em>郑重提示：</em>彩票有风险，投注需谨慎
不向未满18周岁的青少年出售彩票 
</div>
<span> <a target="_blank" title="国家信息安全一级认证"
	href="https://www.soopay.net/static/help/help_1.htm"><img
	src="/images/footerImg_1.gif" /></a><a target="_blank" title="诚信企业"
	href="https://www.soopay.net/static/help/help_1.htm"><img
	src="/images/footerImg_2.gif" /></a><a target="_blank" title="Verisign"
	href="https://seal.verisign.com/splash?form_file=fdf/splash.fdf&dn=WWW.SOOPAY.NET&lang=zh_cn"><img
	src="/images/footerImg_3.gif" /></a></span></div>
</div>
</body>
</html>