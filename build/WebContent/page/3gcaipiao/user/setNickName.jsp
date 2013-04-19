<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/css/index.css" />
<link rel="stylesheet" type="text/css" href="/css/zhuce.css" />

<link type="text/css" rel="stylesheet" href="/css/validator.css"></link>

<script type="text/javascript" src="/chlw/function/js/jquery-1.5.min.js"></script>
<script type="text/javascript" src="/chlw/function/js/user/formValidator.js" ></script>
<script type="text/javascript" src="/chlw/function/js/user/formValidatorRegex.js"></script>
<script type="text/javascript" src="/chlw/function/js/user/formValidator_min.js"></script>
<script type="text/javascript" src="/chlw/function/js/user/DateTimeMask.js"></script>
<script type="text/javascript" src="/chlw/function/js/3g/register.js"></script>
<title>3g彩票网——昵称设置页面</title>
</head>
<body>
<s:if test="#session.user.NICKNAME.equals(null)">
</s:if><s:else>
	<script type="text/javascript">
		window.location.href="/index.html";
	</script>
</s:else>         
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
		<div class="register_tiao"></div>
		<div class="nickname_content">
			<div class="nickname">
			<script type="text/javascript">regFormValidator();</script>
			<form name="userRegisterForm" id="userRegisterForm" action="/chlw/3guser/3g_tuser_new!setNickName" method="post">
				<div class="nickname_head">亲爱的“嗖付”用户，欢迎您来到3G彩票网</div>
				<font color="red"><s:property value="#request.message"/></font>
				<div class="nickname_con"><span class="nickname_con_zi">给自己起个昵称：</span><input class="nickname_con_input" name="tuserinfo.NICKNAME" id="nickname" type="text" /><span class="nickname_con_tsh" id="nicknameTip"></span></div>
				<input type="hidden" name="isIE" value="中文"/>
				<div><input class="nickname_btn" name="" type="submit"  value="" /></div>
			</form>
				<div class="nickname_be"><span class="bluetext">保障账户安全：</span><br/>“昵称”是用于中奖用户公布等对外公布的用户昵称，保障您的中奖隐私和账户安全！</div>
				<div class="nickname_line"><span>免费客服电话：</span><img  class="nickname_hao"src="/images/kfdh.gif" width="136" height="23" alt="热线电话"/><a target="_blank" href=" http://wpa.qq.com/msgrd?v=3&uin=1300894041&site=qq&menu=yes" title="在线客服"><img class="nickname_anniu"src="/images/topzxkf.gif" width="108" height="47" alt="在线客服" /></a></div>
			</div>
		</div>
	</div>
	<div id="guilds">
		<script type="text/javascript">
	         $.ajax({
	      		'type': 'POST',
	      		'url': '/kuaisubangzhu.html?r='+ Math.round(Math.random()*10000),
	      		beforeSend:function(XMLHttpRequest){
	     	    	
	     	    },
	      		'dataType': 'html',
	      		'success': function(data){
	      			$("#guilds").html($.trim(data));
	      		}
	      	});
        </script>
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