<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/css/index.css" />
<link rel="stylesheet" type="text/css" href="/css/zhuce.css" />
<script type="text/javascript" src="/chlw/function/js/jquery-1.5.min.js"></script>
<title>3g彩票网——昵称设置成功页面</title>
</head>
<body>
<div id="container">
		<div id="setNickName">
         <script type="text/javascript">
         $.ajax({
      		'type': 'POST',
      		'url': '/include/top.html?r='+ Math.round(Math.random()*10000),
      		beforeSend:function(XMLHttpRequest){
     	    	
     	    },
      		'dataType': 'html',
      		'success': function(data){
      			$("#setNickName").html($.trim(data));
      		}
      	});
       	
         </script>
         
          </div>
	<div id="main">
		<div class="register_head">设置昵称</div>
		<div class="register_content">
			<div class="register_succ">
				<div class="register_succ_head"><span class="red">恭喜您！</span><span class="huizi">设置成功！</span></div>
				<div class="register_succ_name">您的昵称为：&nbsp;&nbsp;<span class="red"><s:property value="#session.user.NICKNAME"/></span></div>
				<div class="register_succ_name2"><span class="red">温馨提示</span>： 为了能够为您提供更为优质的服务，请及时完善您的<a href="/rules/user.html?key=7&#Menu=ChildMenu3"  target="_blank" title="继续完善个人资料"><span class="blue">个人资料。</span></a></div>
				<div class="register_succ_do">您还可以：<a href="/rules/user.html?key=4&#Menu=ChildMenu1" target="_blank" title="立即充值"><span class="red_text">立即充值</span></a><a href="/shuangseqiu.html" target="_blank" title="购买彩票"><span class="red_text">购买彩票</span></a><a href="/" target="_blank" title="去首页看看"><span class="red_text">去首页看看</span></a></div>
			</div>
		</div>
	</div>
	
			  <div id="footer">
         <script type="text/javascript">
         $.ajax({
      		'type': 'POST',
      		'url': '/include/footer.html?r='+ Math.round(Math.random()*10000),
      		beforeSend:function(XMLHttpRequest){
     	    	
     	    },
      		'dataType': 'html',
      		'success': function(data){
      			$("#footer").html($.trim(data));
      		}
      	});
         </script>
          </div>
</div>
</body>
</html>