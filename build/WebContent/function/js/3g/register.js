//注册页面的密码强弱的函数

 function passStrong(){
	 var num = new RegExp('[0-9]');
	 var pinyin = new RegExp('[A-Za-z]');
	 var teshu = new RegExp('[_]');
	 var tiao = '';
	 var countT = 0;
	 
	 var pwd =$("#passLogin").val();
	 if(pwd!=null || !pwd.equals("")){
	 	if(num.test(pwd)||pinyin.test(pwd)){
		 $("#showStrong").text(decodeURI(EncodeUtf8("弱")));
		 countT = countT + 3;
		 	if(num.test(pwd)&&pinyin.test(pwd)){
		 		$("#showStrong").text(decodeURI(EncodeUtf8("中")));
				countT = countT + 3;
		 			if(teshu.test(pwd)){
		 				$("#showStrong").text(decodeURI(EncodeUtf8("强")));
						countT = countT + 4;
			 			}
			 	}
		 }else{
			 $("#showStrong").text("");
			 $("#tiao").html('<li class="register_hui">&nbsp;</li>');
		 }
		 
	for ( var i = 0; i < 10; i++) {
		if (i < countT) {
			tiao = tiao + '<li class="register_hong">&nbsp;</li>';
		} else {
			tiao = tiao + '<li class="register_hui">&nbsp;</li>';
		}
		$("#tiao").html(tiao);
	}
		 
	}else{
			 $("#showStrong").text("");
			 $("#tiao").html('<li class="register_hui">&nbsp;</li>');
			 }


 }




//修改密码页面的头部显示强弱的函数
 
 function upd(){
	 var num = new RegExp('[0-9]');
	 var pinyin = new RegExp('[A-Za-z]');
	 var teshu = new RegExp('[_]');
	 var pwd =$("#new_pass").val();
	 
	 if(pwd!=null || !pwd.equals("")){
	 	if(num.test(pwd)||pinyin.test(pwd)){
		 $("#tips").text(decodeURI(EncodeUtf8("弱")));
		 	if(num.test(pwd)&&pinyin.test(pwd)){
		 		$("#tips").text(decodeURI(EncodeUtf8("中")));
		 			if(teshu.test(pwd)){
		 				$("#tips").text(decodeURI(EncodeUtf8("强")));
			 			}
			 	}
		 }else{
			 $("#tips").text("");
			 }
	 } 
 }
 
 // 基本资料页面头部显示的完整度的函数
 
 function upd_data(){
	 var num = new RegExp('[0-9]');
	 var pinyin = new RegExp('[A-Za-z]');
	 var teshu = new RegExp('[_]');
	 var word =$("#word").val();
	 if(word!=null || !word.equals("")){
	 	if(num.test(word)||pinyin.test(word)){
		 $("#tips_data").text(decodeURI(EncodeUtf8("弱")));
		 $("#line").html('<li class="safe_lan">&nbsp;</li>'+
					'<li class="safe_lan">&nbsp;</li>'+
					'<li class="safe_hui">&nbsp;</li>'+
					'<li class="safe_hui">&nbsp;</li>'+
					'<li class="safe_hui">&nbsp;</li>'+
					'<li class="safe_hui">&nbsp;</li>');
		 	if(num.test(word)&&pinyin.test(word)){
		 		$("#tips_data").text(decodeURI(EncodeUtf8("中")));
		 		$("#line").html('<li class="safe_lan">&nbsp;</li>'+
						'<li class="safe_lan">&nbsp;</li>'+
						'<li class="safe_lan">&nbsp;</li>'+
						'<li class="safe_lan">&nbsp;</li>'+
						'<li class="safe_hui">&nbsp;</li>'+
						'<li class="safe_hui">&nbsp;</li>');
		 			if(teshu.test(word)){
		 				$("#tips_data").text(decodeURI(EncodeUtf8("强")));
		 				$("#line").html('<li class="safe_lan">&nbsp;</li>'+
								'<li class="safe_lan">&nbsp;</li>'+
								'<li class="safe_lan">&nbsp;</li>'+
								'<li class="safe_lan">&nbsp;</li>'+
								'<li class="safe_lan">&nbsp;</li>'+
								'<li class="safe_lan">&nbsp;</li>');
			 			}
			 	}
		 }
	 } 
}
 // 基本资料页面头部显示的完整度的函数

 

 function topShow() {
	var address = $("#address").val();
	var qq = $("#qq").val();
	var countB = 50;
	var countT = 5;
	var tiao = '';
	if (address.length > 0) {
		countB = countB + 25;
		countT = countT + 2;

	}
	if (qq.length > 0) {
		countB = countB + 25;
		countT = countT + 3;
	}

	for ( var i = 0; i < 10; i++) {
		if (i < countT) {
			tiao = tiao + '<li class="ziliao_lan">&nbsp;</li>';
		} else {
			tiao = tiao + '<li class="ziliao_hui">&nbsp;</li>';
		}
	}
	$("#tip").text(countB + "%");
	$("#percentage").html(tiao);
}
  
// 个人信息修改

function editUserValidator(){
$.formValidator.initConfig({formid:"form2",onError:function(){alert(decodeURI(EncodeUtf8("校验没有通过，具体错误请看错误提示。")));}});

	$("#old_pass").formValidator( {
		onshow : decodeURI(EncodeUtf8("6-16个字符，可由小写英文字母、阿拉伯数字、下划线混合。")),
		onfocus : decodeURI(EncodeUtf8("密码不能为空，密码长度6-16位。")),
		oncorrect : decodeURI(EncodeUtf8("密码合法！"))
	}).inputValidator( {
		min : 6,
		max : 16,
		empty : {
			leftempty : false,
			rightempty : false,
			emptyerror :decodeURI(EncodeUtf8( "密码两边不能有空符号！"))
		},
		onerror : decodeURI(EncodeUtf8("密码不合法，请确认！"))
	}).regexValidator({
		regexp : "^[a-z0-9_]+$",
		onerror : decodeURI(EncodeUtf8("密码格式不合法，请确认！"))
	});

	$("#new_pass").formValidator( {
		onshow : decodeURI(EncodeUtf8("6-16个字符，可由小写英文字母、阿拉伯数字、下划线混合。")),
		onfocus : decodeURI(EncodeUtf8("密码不能为空，密码长度6-16位。")),
		oncorrect : decodeURI(EncodeUtf8("密码合法！"))
	}).inputValidator( {
		min : 6,
		max : 16,
		empty : {
			leftempty : false,
			rightempty : false,
			emptyerror :decodeURI(EncodeUtf8( "密码两边不能有空符号！"))
		},
		onerror : decodeURI(EncodeUtf8("密码不合法，请确认！"))
	}).regexValidator({
		regexp : "^[a-z0-9_]+$",
		onerror : decodeURI(EncodeUtf8("密码格式不合法，请确认！"))
	});
	$("#real_pass").formValidator( {
		min : 6,
		max : 16,
		onshow : decodeURI(EncodeUtf8("请输入重复密码！")),
		onfocus : decodeURI(EncodeUtf8("两次密码必须一致哦！")),
		oncorrect : decodeURI(EncodeUtf8("密码一致。"))
	}).inputValidator( {
		min : 6,
		max : 16,
		empty : {
			leftempty : false,
			rightempty : false,
			emptyerror : decodeURI(EncodeUtf8("重复密码两边不能有空符号！"))
		},
		onerror : decodeURI(EncodeUtf8("重复密码不能为空，请确认！"))
	}).compareValidator( {
		desid : "new_pass",
		operateor : "=",
		onerror : decodeURI(EncodeUtf8("2次密码不一致，请确认！"))
	});
	$("#name").formValidator({
		onshow: decodeURI(EncodeUtf8("4-16个字符，仅支持数字、英文、汉字组合，不能以数字开头。")),
		onfocus : decodeURI(EncodeUtf8("请输入您的真实姓名，不可为空！")),
		oncorrect : decodeURI(EncodeUtf8("您输入的真实姓名正确！"))
	}).inputValidator({
		min : 4,
		max : 16,
		onerror : decodeURI(EncodeUtf8("对不起，真实姓名长度至少为4个字符！"))
	}).regexValidator({
		regexp : "^[^0-9][A-Za-z0-9\u4e00-\u9fa5]{1,15}$",
		onerror : decodeURI(EncodeUtf8("对不起，该真实姓名已被使用或包含有敏感词。"))
		
	});;
	$("#userID").formValidator({
		onshow : decodeURI(EncodeUtf8("领奖取现的重要凭证，请认真填写！")),
		onfocus : decodeURI(EncodeUtf8("输入15或18位的身份证。")),
		oncorrect : decodeURI(EncodeUtf8("输入正确。"))
	}).functionValidator({
		fun : isCardID
	});
	
}
function test(obj) {
	if (obj.value == decodeURI(EncodeUtf8("不校验身份证"))) {
		$("#sfzh").attr("disabled", true).unFormValidator(true);
		obj.value = decodeURI(EncodeUtf8("校验身份证"));
	} else {
		$("#sfzh").attr("disabled", false).unFormValidator(false);
		obj.value = decodeURI(EncodeUtf8("不校验身份证"));
	}
}


// 注册验证form名称 userRegisterForm
 
function regFormValidator(){
	$.formValidator.initConfig({formid:"userRegisterForm",onError:function(){alert(decodeURI(EncodeUtf8("校验没有通过，具体错误请看错误提示。")));}});
	
	
	if($("#mobile").length>0){
		//手机号码验证
		$("#mobile").formValidator({
			onshow : decodeURI(EncodeUtf8("请输入11位手机号码！")),
			onfocus : decodeURI(EncodeUtf8("请输入您的手机号码，不可为空！")),
			oncorrect :decodeURI(EncodeUtf8( "该手机号格式正确！"))
		}).inputValidator({
			min : 11,
			max : 11,
			onerror : decodeURI(EncodeUtf8("对不起，用户名长度至少为4个字符！"))
		}).regexValidator({
			regexp : "mobile",
			datatype : "enum",
			onerror :decodeURI(EncodeUtf8( "对不起， 该手机号码不存在或者号码格式错误。"))
		});}
	//用户名验证
	if($("#nickname").length>0){
	$("#nickname").formValidator({
		onshow : decodeURI(EncodeUtf8("4-16个字符，仅支持数字、英文、汉字组合，不能以数字开头，一旦注册成功不可更改！")),
		onfocus : decodeURI(EncodeUtf8("请输入您的昵称，不可为空！")),
		oncorrect : decodeURI(EncodeUtf8("该昵称格式正确！"))
	}).inputValidator({
		min : 4,
		max : 16,
		onerror : decodeURI(EncodeUtf8("对不起，昵称长度至少为4个字符！"))
	}).regexValidator({
		regexp : "^[^0-9][A-Za-z0-9\u4e00-\u9fa5]{1,15}$",
		onerror :decodeURI(EncodeUtf8( "对不起，该昵称已被使用或包含有敏感词。"))
		
	});}
	
	
	
	//密码验证
	if($("#passLogin").length>0){
	$("#passLogin").formValidator({
		onshow : decodeURI(EncodeUtf8("6-16个字符，可由小写英文字母、阿拉伯数字、下划线混合。")),
		onfocus :decodeURI(EncodeUtf8( "密码不能为空，密码长度6-16位。")),
		oncorrect :decodeURI(EncodeUtf8( "密码合法。"))
	}).inputValidator({
		min : 6,
		max : 16,
		empty : {
			leftempty : false,
			rightempty : false,
			emptyerror : decodeURI(EncodeUtf8("密码两边不能有空符号！"))
		},
		onerror :decodeURI(EncodeUtf8("密码长度不合法，请确认！"))
	}).regexValidator({
		regexp : "^[a-z0-9_]+$",
		onerror : decodeURI(EncodeUtf8("密码不合法，请确认！"))
	});}
	
	//重复密码验证
	if($("#realPass").length>0){
	$("#realPass").formValidator({
			min : 6,
			max : 16,
			onshow : decodeURI(EncodeUtf8("请再次输入密码。")),
			onfocus : decodeURI(EncodeUtf8("两次密码必须一致哦！")),
			oncorrect : decodeURI(EncodeUtf8("密码一致。"))
		}).inputValidator({
			min : 6,
			max : 16,
			empty : {
				leftempty : false,
				rightempty : false,
				emptyerror : decodeURI(EncodeUtf8("重复密码两边不能有空符号！"))
			},
			onerror : decodeURI(EncodeUtf8("重复密码不能为空，请确认！"))
		}).compareValidator({
			desid : "passLogin",
			operateor : "=",
			onerror : decodeURI(EncodeUtf8("两次输入密码不相同。"))
		});}
}


//登录验证
function loginFormValidator(){

	$.formValidator.initConfig({formid:"userLoginForm",onError:function(){alert(decodeURI(EncodeUtf8("校验没有通过，具体错误请看错误提示。")));}});
	
	//手机号码验证
	if($("#mobile_code").length>0){
	$("#mobile_code").formValidator({
		oncorrect : function(){
		alert(decodeURI(EncodeUtf8("该手机号格式不正确！")));
		return false;
	}
	}).inputValidator({
		min : 11,
		max : 11,
		onerror : function(){
		alert(decodeURI(EncodeUtf8("手机号码必须是11位的，请确认！")));
		return false;
	}
	}).regexValidator({
		regexp : "mobile",
		datatype : "enum",
		onerror : function(){
		alert(decodeURI(EncodeUtf8("您输入的手机号格式不正确！")));
		return false;
	}
	});}

	//密码验证
	if($("#pwd").length>0){
	$("#pwd").formValidator({
		oncorrect : function(){
		alert(decodeURI(EncodeUtf8("密码合法。")));
		return false;
	}
	}).inputValidator({
		min : 6,
		max : 15,
		empty : {
			leftempty : false,
			rightempty : false,
			emptyerror : decodeURI(EncodeUtf8("密码两边不能有空符号！"))
		},
		onerror : function(){
			alert(decodeURI(EncodeUtf8("密码不合法，请确认！")));
			return false;
		}
	});}
	
}



//------用户登录注册，以及判断用户是否登录的跳转，全站通用-----
var sendSmsCount = 0;
var oldPhone="";
function tGRegister() {
	// 注册表单验证插件
	regFormValidator();

	//--------------用户注册-------------
	$('#register_submit').click(function(){
		// 验证输入的用户名、密码、手机号码、邮箱是否正确
		var regValid = jQuery.formValidator.pageIsValid('1');
		if (!regValid) {
			return;
		}
		
		//用户注册协议
		if ($("#registerXieyi").attr("checked") != true && $("#registerXieyi").attr("checked") != "checked") {
			 alert(decodeURI(EncodeUtf8("您没有同意《如意彩服务协议》！")));
			 return;
        }
		
		var params=$('#userRegisterForm').serialize(); //这里直接就序列化了表单里面的值；直接获取到表单元素的值   
		// 发送请求
		$.ajax({
			url	: '/chlw/3gfunction/3g_tuser2!register',
			type:"POST",//数据发送方式
			data:params,//参数
			dataType:'html',//接受数据格式
			success:function(data){
				//此处判断跳转的的jsp中显示的数据是否有{success}字样，如果有的话，则认为是成功的
				if(data.indexOf("{success}")==-1){
					alert(data);
				}else{
					data = data.replace("{success}","");
					$("#right_text").hide();
					$("#right_text_certifiction").html(data);
					if(sendSmsCount==0||oldPhone!=$("#mobile").val()){
						getSend();
						sendSmsCount ++;
						oldPhone=$("#mobile").val();
					}
					tGPhoneCheck();
					$("#right_text_certifiction").show();
				}
			}		
		});

	});
	
}
// 3g彩票网注册时向用户发送手机短信
function getSend(){
	$.ajax({
		url : '/chlw/3gfunction/3g_tuser2!sendMessage',
		type:"POST",//数据发送方式
		dataType:'html',//接受数据格式
		success:function(data){
			sendCount=data;
			if(parseInt(sendCount)>=3){
				$("#smsMessage").text("抱歉 ！每天一个手机号只发送3次短信，已经向该手机号发送3次短信");
				$("#smsMessage").css("color" , "red");
				$("#accept").hide();
			}
	}
			
	});
}
function tGPhoneCheck() {
	
	$.formValidator.initConfig({
		formid:"realForm",
		onError:function(){
			alert(decodeURI(EncodeUtf8("校验没有通过，具体错误请看错误提示。")));
			return false;
		}
	});
	$("#passRegister").formValidator({
		min : 4,
		max : 4,
		onshow : decodeURI(EncodeUtf8("请输入手机验证码。")),
		onfocus :decodeURI(EncodeUtf8( "必须和您手机收到的保持一致！")),
		oncorrect : decodeURI(EncodeUtf8("验证码一致。"))
	}).inputValidator({
		min : 4,
		max : 4,
		empty : {
			leftempty : false,
			rightempty : false,
			emptyerror :decodeURI(EncodeUtf8( "验证码两边不能有空符号！"))
		},
		onerror :decodeURI(EncodeUtf8( "验证码不能为空，请确认！"))
	});

	//-------------用户注册----------------
	$("#renzheng_submit").click(function(){
		var params=$('#realForm').serialize(); //这里直接就序列化了表单里面的值；直接获取到表单元素的值   
		// 发送请求
		$.ajax({
			url	: '/chlw/3gfunction/3g_tuser2!phoneCheck',
			type:"POST",//数据发送方式
			data:params,//参数
			dataType:'html',//接受数据格式
			success:function(data){
				//此处判断跳转的的jsp中显示的数据是否有{success}字样，如果有的话，则认为是成功的
				if(data.indexOf("{success}")==-1){
					alert(data);
				}else{
					data = data.replace("{success}","");
					$("#right_text_certifiction").html(data);
				}
			}		
		});

	});
	
}

function updatePhone(){
	$("#passRegister").val("0000");
	$("#right_text_certifiction").toggle();
	$("#right_text").toggle();
}
