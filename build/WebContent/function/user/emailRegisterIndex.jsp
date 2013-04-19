<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
$(function(){
	 $.formValidator.initConfig({formid:"userEmailRegisterForm",onError:function(){alert(decodeURI(EncodeUtf8("校验没有通过，具体错误请看错误提示。")));}});
	 	var emails = $("#email").val();
		var nicknames = $("#nickname").val();
		
		if($("#email").length>0){
			//电子邮箱验证
			$("#email").formValidator({
				onshow : decodeURI(EncodeUtf8("请输入您常用的邮箱，以便激活账号！")),
				onfocus : decodeURI(EncodeUtf8("邮箱至少6个字符，最多100个字符。")),
				oncorrect :decodeURI(EncodeUtf8( "您的邮箱格式输入正确！"))
			}).inputValidator({
				min : 6,
				max : 100,
				onerror : decodeURI(EncodeUtf8("您输入的邮箱长度非法，请确认！"))
			}).regexValidator({
				regexp : "^\\w+((-\\w+)|(\\.\\w+))*\\@[A-Za-z0-9]+((\\.|-)[A-Za-z0-9]+)*\\.[A-Za-z0-9]+$",
				onerror : decodeURI(EncodeUtf8("请输入正确格式的邮箱！"))
			}).ajaxValidator({ 
		        type : "post",
		    	url : "/chlw/function/tuserinfoAction!queryEmail",
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
		    	buttons: $("#emailregister_submit"),
		    	error: function(){
		    		$.formValidator.setTipState(email,"onError","服务器没有返回数据，可能服务器忙，请重试。");
			    	alert(decodeURI(EncodeUtf8("服务器没有返回数据，可能服务器忙，请重试。")));
			    	},
		    	onerror : "该邮箱已注册，请换用其他电子邮箱注册或用该电子邮箱<a class='light' href='/rules/login.html'>登录</a>。",
		    	onwait : decodeURI(EncodeUtf8("正在对邮箱进行合法性校验，请稍候..."))
		    });}

		//昵称验证
		if($("#nickname").length>0){
		$("#nickname").formValidator({
			onshow : "4-16个字符，一个汉字为两个字符，推荐使用中文会员名。一旦注册会员名不能修改！",
			onfocus : "请输入您的昵称，不可为空！",
			oncorrect : "该昵称格式正确！"
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
	    	buttons: $("#emailregister_submit"),
	    	error: function(){
				$.formValidator.setTipState(nickname,"onError","服务器没有返回数据，可能服务器忙，请重试。");
				alert("服务器没有返回数据，可能服务器忙，请重试。");
				},
	    	onerror : "该昵称已被使用或者含有敏感词，请您重新设置昵称！",
	    	onwait : "正在对昵称进行合法性校验，请稍候..."
	    });}
		
		
		//密码验证
		if($("#passLogin").length>0){
		$("#passLogin").formValidator({
			onshow : "6-16个字符，可由小写英文字母、阿拉伯数字、下划线混合。",
			onfocus : "密码不能为空，密码长度6-16位。",
			oncorrect : "密码合法。"
		}).inputValidator({
			min : 6,
			max : 16,
			empty : {
				leftempty : false,
				rightempty : false,
				emptyerror : "密码两边不能有空符号！"
			},
			onerror :"密码长度范围为6-16。"
		}).regexValidator({
			regexp : "^[a-z0-9_]+$",
			onerror : "密码可由小写英文字母、阿拉伯数字、下划线混合。"
		});}
		
		//重复密码验证
		if($("#realPass").length>0){
		$("#realPass").formValidator({
				onshow : "请再次输入密码。",
				onfocus : "两次密码必须一致哦！",
				oncorrect : "密码一致。"
			}).inputValidator({
				min : 6,
				max : 16,
				empty : {
					leftempty : false,
					rightempty : false,
					emptyerror : "密码两边不能有空符号！"
				},
				onerror :"密码长度范围为6-16。"
			}).compareValidator({
				desid : "passLogin",
				operateor : "=",
				onerror : "两次输入密码不相同。"
			});}
	 });
 </script>
</head>
<body>

<div class="RegisterBody" id="right_text">

	<div class="RegistePannel">
		<div class="RegistePannelHead">
			<h3>用户注册</h3>
		</div>
		<div class="RegistePannelBody">
			<div class="space20">&#160;</div>
			<ol class="RegisterProcessBanner RegisterProcessFirst "><li>1. 填写会员信息</li><li>2. 输入验证码</li><li>3. 注册成功</li></ol>
			<form name="userEmailRegisterForm" id="userEmailRegisterForm" action="#" method="post">
			<table class="RegistePannelTable RuyikaRegisterBox">
				<tr><th>电子邮箱：</th><th colspan="2"><input name="tuserinfo.USERNAME" id="email"  type="text" onfocus="registerFocus(1);" class="registerinput" /></th><td><span id="emailTip"></span></td></tr>
				<tr><th style="line-height:15px;">&nbsp;</th><td colspan="3" style="line-height:15px;">如果您没有邮箱可以<a style='color:#01529D;' onmouseover='HoverOver($(this))' onmouseout='HoverOut($(this))' href='/rules/register.html'>使用手机号注册</a>！<br />&nbsp;</td></tr>
				
				<tr><th>昵　　称：</th><th colspan="2"><input name="tuserinfo.NICKNAME" id="nickname" type="text" onfocus="registerFocus(2);" class="registerinput" /></th><td><span id="nicknameTip" class="nichengtsh"></span></td></tr>
				<tr><th>登录密码：</th><th colspan="2"><input name="tuserinfo.PASSWORD" id="passLogin" type="password"  onfocus="registerFocus(3);" onkeyup="blockPassStrong();" class="registerinput" /></th><td><span id="passLoginTip"></span></td></tr>
				<tr><th>确认密码：</th><th colspan="2"><input name="realPass" id="realPass" type="password" onfocus="registerFocus(4);" class="registerinput" /></th><td><span id="realPassTip"></span></td></tr>
				<tr><th width="70">验 证 码：</th><th width="110"><input name="passRegister" id="passRegister"  type="text" onfocus="registerFocus(8);" onKeyDown="if (event.keyCode==13)phoneRegister_jumpUrl('key=3');" class="authinput" /></th><td width="90"><img src="/chlw/function/common/image.jsp" id="magPassRegister"/></td><td><a href="javascript:change('magPassRegister');" title="刷新"><span class="blue1">刷新</span></a></td></tr>
				<tr><th>&#160;</th><td colspan="3"><input type="checkbox" checked="checked" id="registerXieyi" />我已阅读并同意<a href="/rules/userProtocol.html" title="用户服务协议"><font class="blue">《用户服务协议》</font></a></td></tr>
				<tr><th>&#160;</th><td colspan="3"><input type="button" class="SubmitForSure" id="emailregister_submit" onclick="phoneRegister_jumpUrl('key=3')"/></td></tr>
				
			</table>
			</form>

		</div>
	</div>
	
</div>
