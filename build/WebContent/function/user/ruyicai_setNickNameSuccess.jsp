<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/css/ruserAll.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/css/util.css" />
<script type="text/javascript" src="/js/jqueryJS/jquery-1.5.min.js"></script>
<title>如意彩——昵称设置成功页面</title>
</head>
<body>
<div id="container">
<div id="setNickName">
       
</div>
       
<div class="rusercontent" style="height:400px;">
	<div class="biaoti"><img src="/images/nicheng.gif" /></div>
	<div class="rusercont">
		<div class="gongxi" style="display:inline; margin-left:65px;">
			<span><img src="/images/duigou.gif" /></span>
			<span class="gongxizi"><font class="redzi">恭喜您！</font>设置成功！</span>
		</div>
		<div class="nicheng" style="float:left; display:inline; margin-left:120px;">
			您的昵称为： <font class="blue"><s:property value="#session.user.NICKNAME"/></font>
		</div>
		<div class="wxtishi" style="margin-left:120px; display:inline;">
			温馨提示： 为了能够为您提供更为优质的服务，请及时完善您的<a href="/rules/user.html?key=7" title="个人资料"><font class="blue1">个人资料</font></a>。
		</div>
		<div class="quxiang" style="float:left; display:inline;">
			<span class="qukan">您还可以：</span><br /><span class="qukan1"><a href="/rules/user.html?key=4" title="立即充值">立即充值&gt;&gt;</a><a href="/shuangseqiu.html" title="购买彩票">购买彩票&gt;&gt;</a><a href="/index.html" title="去首页看看">去首页看看&gt;&gt;</a></span>
		</div>
	</div>
</div>
  <div id="footer">
		<jsp:include page="/function/common/ruyicai_include_common_footer_litter.jsp"></jsp:include>
  </div>
</div>
</body>
</html>