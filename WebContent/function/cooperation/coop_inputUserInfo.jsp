<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="/css/validator.css"></link>
<link type="text/css" href="/css/ruserAll.css" rel="stylesheet"/>
<link type="text/css" href="/css/util.css" rel="stylesheet"/>
<link rel="stylesheet" type="text/css" href="/css/ymPrompt.css" />
<script type="text/javascript" src="/js/ymPrompt_source.js"></script>
<script type="text/javascript" src="/js/jqueryJS/jquery-1.5.min.js"></script>
<script type="text/javascript" src="/js/jqueryJS/formValidator.js" ></script>
<script type="text/javascript" src="/js/jqueryJS/formValidatorRegex.js"></script>
<script type="text/javascript" src="/js/jqueryJS/formValidator_min.js"></script>
<script type="text/javascript" src="/js/jqueryJS/jquery.countdown.js"></script>
<script type="text/javascript" src="/js/public_touZhu.js"></script>
<script type="text/javascript" src="/js/ruserAll.js"></script>
<script type="text/javascript" src="/js/util.js"></script>
<script type="text/javascript" src="/js/div_show.js"></script>
<script type="text/javascript">
$(function(){
	 $.formValidator.initConfig({formid:"userPhoneRegisterForm",onError:function(){alert(decodeURI(EncodeUtf8("校验没有通过，具体错误请看错误提示。")));}});
	 var mobiles = $("#mobile").val();
		var nicknames = $("#nickname").val();
		
			//手机号码验证
			$("#mobile").formValidator({
				onshow : "请输入11位手机号码！",
				onfocus : "请输入您的手机号码，不可为空！",
				empty:true,
				oncorrect : "该手机号格式正确。"
			}).inputValidator({
				min : 11,
				max : 11,
				onerror : "该手机号码不存在或者号码格式错误。请输入11位手机号码。"
			}).regexValidator({
				regexp : "mobile",
				datatype : "enum",
				onerror : "该手机号码不存在或者号码格式错误。请输入11位手机号码。"
			}).ajaxValidator({ 
		        type : "post",
		    	url : "/chlw/function/tuserinfoAction!queryMobile",
		    	datatype : "html",
		    	success : function(html){	
		            if( html == "0" )
		    		{
		                return true;
		    		}
		            else
		    		{
		                return false;
		    		}
		    	},
		    	buttons: $("#phoneregister_submit"),
		    	error: function(){
					$.formValidator.setTipState(mobile,"onError","服务器没有返回数据，可能服务器忙，请重试！");
					alert("服务器没有返回数据，可能服务器忙，请重试！");
					},
		    	onerror :"该手机号码已被注册或已被绑定到某账户，请换用其他手机号码注册或用该手机号码<a class='light' href='http://users.ruyicai.com/login.jsp'>登录</a>。",
			    	
		    	onwait : "正在对手机号码进行合法性校验，请稍候..."
		    });


		//昵称验证
		$("#nickname").formValidator({
			onshow : "请您修改或继续使用现在的昵称！推荐使用中文会员名。一旦注册会员名不能修改！",
			onfocus : "4-16个字符，一个汉字为两个字符，推荐使用中文会员名。一旦注册会员名不能修改！",
			oncorrect : "该昵称格式正确。"
		}).inputValidator({
			min : 4,
			max : 16,
			onerror : "对不起，昵称长度至少为4个，最多16个字符！"
		}).regexValidator({
			regexp : "^(([a-zA-Z0-9]|[0-9]|[\u4e00-\u9fa5]){2,16})+$",
			onerror : "对不起，昵称仅支持数字、英文、汉字组合，请重新输入！"
			
		}).ajaxValidator({ 
	        type : "get",
	    	url : "/chlw/function/tuserinfoAction!queryNickName",
	    	datatype : "html",
	    	success : function(html){	
	            if( html == "0" )
	    		{
	                return true;
	    		}
	            else
	    		{
	                return false;
	    		}
	    	},
	    	buttons: $("#phoneregister_submit"),
	    	error: function(){
				$.formValidator.setTipState(nickname,"onError","服务器没有返回数据，可能服务器忙，请重试。");
				alert("服务器没有返回数据，可能服务器忙，请重试。");
				},
	    	onerror : "该昵称已被使用或者含有敏感词，请您重新设置昵称！",
	    	onwait : "正在对昵称进行合法性校验，请稍候..."
	    });
		
	 });
 </script>
 </head>
<body>
<div class="RegisterHead">
<table><tr>
<td id="logo">
<s:if test="#session.CHANNEL=='636'">
<a href="http://www.88967.com/portal.php">
<img src="/images/cddlogo.gif"  style="display:block; float:left; margin:0px 0px 0px 0px;"/></a>
</s:if>
<a href="/index.html"><img src="/images/ryclogo.gif" style="display:block; float:left; margin:0px 0px 0px 0px;" /></a></td></tr></table><dl><dt>客服热线：400-665-1000</dt><dd><a href="/index.html">返回首页</a></dd></dl>
</div>

<div class="RegisterBody">
	<div class="RegistePannel">
		<div class="RegistePannelHead">
			<h3>完善账户信息</h3>
		</div>
		<span id="msg" class="msg_tishi">${msg}</span>
		<div class="RegistePannelBody">
					<form action="/chlw/cooperation/channel!coopRegister" method="post"  id="userPhoneRegisterForm">
			<table class="RegistePannelTable">
				<tr><th>手机号：</th><th colspan="2"><input type="text" class="registerinput" name="mobile" id="mobile"  onfocus="registerFocus(1);"/></th><td><span id="mobileTip"></span></td></tr>
				<tr><th>昵　称：</th><th colspan="2"><input type="text" class="registerinput" name="nickname" id="nickname" type="text" onfocus="registerFocus(2);" value=""/></th><td><span id="nicknameTip" class="nichengtsh"></span></td></tr>
				<tr><th width="60">验证码：</th><th width="110"><input type="text" class="authinput" name="rand"/></th><td width="90"><span><img  id="findimg" class="yanzhengs" src="/chlw/function/common/image.jsp?id=260.48305424745194614" /></span></td><td><a href="javaScript:change('findimg');" title="看不清，换一张"><span class="blue1">看不清，换一张</span></a></td></tr>
				<tr><th>&#160;</th><td colspan="3"><input type="submit" class="SubmitForSure" id="phoneregister_submit" value="" /></td></tr>
			</table>
			</form>

		</div>
	</div>
	
</div>
<div id="footer" class="footer">
  <hr>
		<div class="copyright">Copyright 2002-2011如意彩票网 All rights reserved  京ICP备10007936号 增值电信业务经营许可证（<span lang="EN-US">B2-20100007</span>）</div>
	<div class="lianxi">客服热线：400-665-1000  | 客服邮箱：<a href="mailto:service@ruyicai.com">service@ruyicai.com</a></div>
	<div class="lianxi"> 如意彩温馨提示：彩票乃公益事业，投注请量力而行，不向未满18周岁的青少年出售彩票！</div>
	</div>
 <input type="hidden" value="" name="tishi" id="tishi">
</body>
</html>		  