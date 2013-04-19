<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/css/login.css" rel="stylesheet" type="text/css" />
<link href="/css/3gtouzhu.css" rel="stylesheet" type="text/css" />
<link href="/css/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/chlw/function/js/jquery-1.5.min.js"></script>
<script type="text/javascript" src="/js/login.js"></script>
<title>3g彩票网——邮箱绑定点击邮箱链接成功页面</title>
</head>
<body>
<div id="container">
         <div id="emailTop">
         <script type="text/javascript">
         $.ajax({
      		'type': 'POST',
      		'url': '/include/top.html?r='+ Math.round(Math.random()*10000),
      		beforeSend:function(XMLHttpRequest){
     	    	
     	    },
      		'dataType': 'html',
      		'success': function(data){
      			$("#emailTop").html($.trim(data));
      		}
      	});
       	
         </script>
         
          </div>
          <div class="loginbar" ><jsp:include page="./topLogin.jsp"></jsp:include></div>
<div id="main">
	<div class="email_suc">
		<div class="email_head"><img src="/images/lvduigou.gif" width="37" height="48" /><span class="gongxi_red">恭喜您邮箱绑定成功！</span></div>
		<div class="email_content">
			<div class="email_binding">已绑定邮箱：<s:property value="#session.user.EMAIL"/><a href="/rules/user.html?key=38&#Menu=ChildMenu4" title="修改绑定"><span>修改绑定</span></a></div>
			<div class="email_return"><span class="email_ret1">密码找回</span><span class="email_ret2">当您忘记密码时，可通过邮箱找回您的密码。</span><span class="email_ret3"><img src="/images/reg4.gif" />已定制（系统默认）</span></div>
		</div>
	</div>
	<div class="recom">
			<div class="recom_content">
					<div class="recom_tu"><img src="/images/ssq.gif" width="46" height="47" border="0"  alt="双色球"/></div>
					<div class="recom_btn"><span class="recom_zi">双色球</span><a href="#" title="现在购买"><img src="/images/sale.gif" width="60" height="23" alt="现在购买"/></a><a href="#" title="玩法介绍"><img src="/images/wfjs.gif" width="59" height="23" alt="玩法介绍" /></a></div>
					<div class="recom_time">2元赢取1000万！每周二、四、日开奖！</div>
			</div>
			<div class="recom_content">
					<div class="recom_tu"><img src="/images/fc3d.gif" width="46" height="47" border="0"  alt="福彩3D"/></div>
					<div class="recom_btn"><span class="recom_zi">福彩3D</span><a href="#" title="现在购买"><img src="/images/sale.gif" width="60" height="23" alt="现在购买"/></a><a href="#" title="玩法介绍"><img src="/images/wfjs.gif" width="59" height="23" alt="玩法介绍" /></a></div>
					<div class="recom_time">玩法简单，只选3个号，每天开奖，中奖更容易！</div>
			</div>
			<div class="recom_content">
					<div class="recom_tu"><img src="/images/pls.gif" width="46" height="47" border="0"  alt="大乐透"/></div>
					<div class="recom_btn"><span class="recom_zi">排列三</span><a href="#" title="现在购买"><img src="/images/sale.gif" width="60" height="23" alt="现在购买"/></a><a href="#" title="玩法介绍"><img src="/images/wfjs.gif" width="59" height="23" alt="玩法介绍" /></a></div>
					<div class="recom_time">天天开奖的体彩，直选3个号码中1000元</div>
			</div>
			<div class="recom_content">
					<div class="recom_tu"><img src="/images/dlt.gif" width="46" height="47" border="0"  alt="大乐透"/></div>
					<div class="recom_btn"><span class="recom_zi">超级大乐透</span><a href="#" title="现在购买"><img src="/images/sale.gif" width="60" height="23" alt="现在购买"/></a><a href="#" title="玩法介绍"><img src="/images/wfjs.gif" width="59" height="23" alt="玩法介绍" /></a></div>
					<div class="recom_time">头奖1600万！每周一、三、六开奖！</div>
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