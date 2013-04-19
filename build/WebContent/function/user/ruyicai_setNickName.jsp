<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page import="java.util.UUID" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="/css/ruserAll.css" />
<link rel="stylesheet" type="text/css" href="/css/util.css" />
<link rel="stylesheet" type="text/css" href="/css/ymPrompt.css" />
<link type="text/css" rel="stylesheet" href="/css/validator.css"></link>
<script type="text/javascript" src="/js/ymPrompt_source.js"></script>
<script type="text/javascript" src="/js/jqueryJS/jquery-1.5.min.js"></script>
<script type="text/javascript" src="/js/jqueryJS/formValidator.js" ></script>
<script type="text/javascript" src="/js/jqueryJS/formValidatorRegex.js"></script>
<script type="text/javascript" src="/js/jqueryJS/formValidator_min.js"></script>
<script type="text/javascript" src="/js/jqueryJS/DateTimeMask.js"></script>
<script type="text/javascript" src="/js/ruserAll.js"></script>
<script type="text/javascript" src="/js/util.js"></script>
<title>设置昵称</title>
<meta http-equiv="keywords" content="如意彩，购彩用户，设置昵称">
<meta http-equiv="description" content="如意彩用户快来设置一个自己喜欢的昵称吧，让更多的购彩朋友记住你!">
</head>
<body>
<div id="container">
	<div id="setNickName"></div>
          <div class="rusercontent" style="overflow:hidden;">
		<div class="biaoti"><img src="/images/nicheng.gif" /></div>
		<div class="rusercont" style="margin-left:260px; width:auto;">
		<s:if test="#session.user!=null">
		<input type="hidden" value="${session.user.NICKNAME}"   id="nick">
		<s:if test=' #session.user.NICKNAME != null && !(#session.user.NICKNAME.equals(" "))'>
		<script>window.location.href="/index.html";</script></s:if>
		</s:if>
		${messge}
			<div class="huanying">亲爱的用户，欢迎您来到如意彩网</div>
			<form name="userRegisterForm" id="userRegisterForm" action="#" method="post">
			<div class="nichenglist"><span style="float:left;">起个个性的昵称：</span><span style="float:left; clear:right;"><input class="nickname_con_input" name="nickname" id="nickname" type="text" onblur="regFormValidator();" onclick='regFormValidator();'/></span>
			<span style="float:left; clear:left;" class="nickname_con_tsh" id="nicknameTip"></span></div>
			<input type="hidden" name="isIE" value="中文"/>
			<div><input class="tijiaobtn" name="" type="button"  id="button" value="" onclick='chargeNickname();'/></div>
			</form>
			<div class="nchblue">昵称：</div>
			<div class="nchtishi">中奖排行、战绩展示、合买发单、保护隐私、彰显个性，实乃纵横彩市必备之品。</div>
			<div class="nchline"><span class="nchphone1"><img src="/images/dianhua.gif" /></span><span class="nchphone2">客服电话：</span><span class="nchphone3"><img src="/images/haoma.gif" /></span><span class="nchphone4"><a style="margin:0px;" class="HomePageBGBox TopQQNumber" href="http://wpa.qq.com/msgrd?v=3&amp;uin=1427872305&amp;site=qq&amp;menu=yes" title="在线客服" target="_blank"></a></span></div>
		</div>
	</div>
	<div id="footer">
		<jsp:include page="/function/common/ruyicai_include_common_footer_litter.jsp"></jsp:include>
	</div>
</div>
</body>
</html>