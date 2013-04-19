<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript">
$(function(){
	 $.formValidator.initConfig({formid:"userPhoneRegisterForm",onError:function(){alert(decodeURI(EncodeUtf8("校验没有通过，具体错误请看错误提示。")));}});
	 var mobiles = $("#mobile").val();
		var nicknames = $("#nickname").val();
		
			//手机号码验证
			$("#mobile").formValidator({
				onshow : "请输入11位手机号码！",
				onfocus : "请输入您的手机号码，不可为空！",
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
		    	onerror :"该手机号码已被注册或已被绑定到某账户，请换用其他手机号码注册或用该手机号码<a class='light' href='/rules/login.html'>登录</a>。",
			    	
		    	onwait : "正在对手机号码进行合法性校验，请稍候..."
		    });

		//昵称验证
		$("#nickname").formValidator({
			onshow : "4-16个字符，一个汉字为两个字符，推荐使用中文会员名。一旦注册会员名不能修改！",
			onfocus : "请输入您的昵称，不可为空！",
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
		
		
		//密码验证
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
			onerror : "密码只由小写英文字母、阿拉伯数字、下划线混合。"
		});
		
		//重复密码验证
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
			});

	 });
</script>
<script type="text/javascript">
//function rycCheck(){
//	if($("#checkCard").hasClass("Switch")){
		//如意点卡验证 	^([0-9]{16,21})
		
		function checkCardNo(){
			var cardNo = $("#card_id").val();
			if(cardNo.trim()==""){
				$("#card_idTip").text("卡号不能为空！");
				return false;
			}else if(cardNo.trim().length!=16 ){
				
				$("#card_idTip").text("如意卡号格式必须是16位数字。");
				return false;
			}else if(cardNo.trim().length==16){
				var re = /^[\d]+$/;
				var ret = re.test(cardNo);
				if(!ret){
					$("#card_idTip").text("如意卡号格式必须是16位数字。");
					return false;
				}
				$("#card_idTip").text("卡号格式正确。");
				return true;
			}
			$("#card_idTip").text("如意卡号格式必须是16位数字。");
			return false;
		}
		
	//	$("#cardid").formValidator({
	//			onshow : "请输入如意卡号。",
	//			onfocus : "卡号不能为空！",
	//			oncorrect : "卡号格式正确。"
	//		}).inputValidator({
	//			min : 16,
	//			max : 16,
	//			empty : {
	//				leftempty : false,
	//				rightempty : false,
	//				emptyerror : "如意卡号两端不能有空符号！"
	//			},
	//			onerror :"如意卡号格式必须是16位数字。"
	//		}).regexValidator({
	//			regexp : "^([0-9]{16,16})",
	//			onerror : "如意卡号格式必须是16位数字。"
	//		});

		//如意彩点卡密码验证
		
		function checkCardPwd(){
			var cardpwd = $("#card_pwd").val();
			if(cardpwd.trim()==""){
				$("#card_pwdTip").html("密码不能为空！");
				return false;
			}else if(cardpwd.trim().length!=6 ){
				
				$("#card_pwdTip").html("密码长度范围为6位数字。");
				return false;
			}else if(cardpwd.trim().length==6){
				var re = /^[\d]+$/;
				var ret = re.test(cardpwd);
				if(!ret){
					$("#card_pwdTip").html("密码只由数字组成。");
					return false;
				}
				$("#card_pwdTip").html("密码格式正确。");
				return true;
			}
			$("#card_pwdTip").html("密码长度范围为6位数字。");
			return false;

		}
		
		
		
	//	$("#cardpwd").formValidator({
	//			onshow : "请输入如意卡密码。", 
	//			onfocus : "密码不能为空！",
	//			oncorrect : "密码格式正确。"
	//		}).inputValidator({
	//			min : 6,
	//			max : 6,
	//			empty : {
	//				leftempty : false,
	//				rightempty : false,
	//				emptyerror : "密码两端不能有空符号！"
	//			},
	//			onerror :"密码长度范围为6位数字。"
	//		}).regexValidator({
	//			regexp : "^[0-9]*$",
	//			onerror : "密码只由数字组成。"
	//		});
	//	}
//}
</script>

<div class="RegisterBody" id="right_text">

	<div class="RegistePannel">
		<div class="RegistePannelHead">
			<h3>用户注册</h3>
		</div>
		<div class="RegistePannelBody">
			<div class="space20">&#160;</div>
			<ol class="RegisterProcessBanner RegisterProcessFirst "><li>1. 填写会员信息</li><li>2. 输入验证码</li><li>3. 注册成功</li></ol>
			<form name="userPhoneRegisterForm" id="userPhoneRegisterForm" action="/chlw/function/tuserinfoAction!ryc_Register" method="post">
			<table class="RegistePannelTable RuyikaRegisterBox">
				<tr><th>手机号码：</th><th colspan="2"><input name="tuserinfo.USERNAME" id="mobile" type="text" onfocus="registerFocus(1);" class="registerinput" /></th><td><span id="mobileTip"></span></td>
				<tr><th style="line-height:15px;">&nbsp;</th><td colspan="3" style="line-height:15px;">如果没有手机号您也可以<a style='color:#01529D;' onmouseover='HoverOver($(this))' onmouseout='HoverOut($(this))' href='/rules/emailRegisterIndex.html'>使用电子邮箱注册</a>！<br />&nbsp;</td></tr>
				</tr>
				<tr><th>昵　　称：</th><th colspan="2"><input name="tuserinfo.NICKNAME" id="nickname" type="text" onfocus="registerFocus(2);" class="registerinput" /></th><td><span id="nicknameTip" class="nichengtsh"></span></td></tr>
				<tr><th>登录密码：</th><th colspan="2"><input name="tuserinfo.PASSWORD" id="passLogin" type="password"  onfocus="registerFocus(3);" onkeyup="blockPassStrong();" class="registerinput" /></th><td><span id="passLoginTip"></span></td></tr>
				<tr><th>确认密码：</th><th colspan="2"><input name="realPass" id="realPass" type="password" onfocus="registerFocus(4);" class="registerinput" /></th><td><span id="realPassTip"></span></td></tr>
				<tr><th width="70">验 证 码：</th><th width="110"><input name="passRegister" id="passRegister"  type="text" onfocus="registerFocus(8);" onKeyDown="if (event.keyCode==13)phoneRegister_jumpUrl('key=2',13);" class="authinput" /></th><td width="90"><img src="/chlw/function/common/image.jsp" id="magPassRegister"/></td><td><a href="javascript:change('magPassRegister');" title="刷新"><span class="blue1">刷新</span></a></td></tr>
				<tr style="display: none;">
					<th>&#160;</th>
					<td colspan="3">
						<dl class="CheckBox RuyikaRegisterCheckBox">
							<dt id="checkCard" class="RuyikaRegister" onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))" onclick="Switch($(this))" ControlTarget=".RuyikaRegister" ></dt>
							<dd>使用如意彩票卡</dd>
						</dl>
					</td>
				</tr>
				<tr class="RuyikaRegister Switch" style="display: none;"><th>如意卡号：</th><th colspan="2"><input name="cardid" id="card_id" type="text" onfocus="registerFocus(6);" class="registerinput" onblur="checkCardNo()"/></th><td><span id="card_idTip">请输入如意卡号。</span></td></tr>
				<tr class="RuyikaRegister Switch" style="display: none;"><th>密　　码：</th><th colspan="2"><input name="cardpwd" id="card_pwd" type="password" onfocus="registerFocus(7);" class="registerinput" onblur="checkCardPwd()"/></th><td><span id="card_pwdTip">请输入如意卡密码。</span></td></tr>
				<tr><th>&#160;</th><td colspan="3"><input type="checkbox" checked="checked" id="registerXieyi" />我已阅读并同意<a href="/rules/userProtocol.html" title="用户服务协议"><font class="blue">《用户服务协议》</font></a></td></tr>
				<tr><th>&#160;</th><td colspan="3"><input type="button" class="SubmitForSure" id="phoneregister_submit" onclick="phoneRegister_jumpUrl('key=2')"/></td></tr>
				
			</table>
			</form>

		</div>
	</div>
	
</div>