$(document).ready(function() {
//$.formValidator.initConfig({onerror:function(){alert("校验没有通过，具体错误请看错误提示")}});
//	$("input").focus(function() {
//				$(this).attr("style","background-color:red");
//			}).blur(function() {
//				$(this).attr("style", "width:120px;background-color:blue");
//			});

$.formValidator.initConfig({
	formid:"form1",
	onError:function(){alert("校验没有通过，具体错误请看错误提示")}});
	$("#username").formValidator({
		onshow : "4-12位汉字、字母、数字组合，不区分大小写！",
		onfocus : "请输入你的用户名，不可为空",
		oncorrect : "该用户名格式正确"
	}).regexValidator({
		regexp : "^[a-z]{1}[a-z0-9_]{3,15}$",
		onerror : "你输入的用户名格式不正确"
		
	});
	
	$("#mobile_code").formValidator({
		
		onshow : "请填写真实手机号码，确保中大奖后能及时通知您",
		onfocus : "请输入你的手机号码，不可为空",
		oncorrect : "该手机号格式正确"
	}).inputValidator({
		min : 11,
		max : 11,
		onerror : "手机号码必须是11位的,请确认"
	}).regexValidator({
		regexp : "mobile",
		datatype : "enum",
		onerror : "你输入的手机号码格式不正确"
	});
	

	$("#password").formValidator({
				onshow : "6-15个字符，建议使用字母、数字组合，混合大小写",
				onfocus : "密码不能为空,密码长度6-15位",
				oncorrect : "密码合法"
			}).inputValidator({
				min : 6,
				max : 15,
				empty : {
					leftempty : false,
					rightempty : false,
					emptyerror : "密码两边不能有空符号"
				},
				onerror : "密码不合法,请确认"
			});
	$("#realPass").formValidator({
				min : 6,
				max : 15,
				onshow : "请再次输入密码",
				onfocus : "两次密码必须一致哦",
				oncorrect : "密码一致"
			}).inputValidator({
				min : 6,
				max : 15,
				empty : {
					leftempty : false,
					rightempty : false,
					emptyerror : "重复密码两边不能有空符号"
				},
				onerror : "重复密码不能为空,请确认"
			}).compareValidator({
				desid : "password",
				operateor : "=",
				onerror : "2次密码不一致,请确认"
			});
	
	$("#userID").formValidator({
				onshow : "领奖取现的重要凭证，请认真填写！或在以后完善信息",
				onfocus : "输入15或18位的身份证",
				oncorrect : "输入正确"
			}).functionValidator({
				fun : isCardID
			});
	$("#email").formValidator({
		empty : true,
		onshow : "请输入你的邮箱，不可以为空",
		onfocus : "邮箱至少6个字符,最多100个字符",
		oncorrect : "邮箱格式输入正确"
			//defaultvalue : "@"
		}).inputValidator({
				min : 6,
				max : 100,
				onerror : "你输入的邮箱长度非法,请确认"
			}).regexValidator({
		regexp : "^([\\w-.]+)@(([[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.)|(([\\w-]+.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(]?)$",
		onerror : "你输入的邮箱格式不正确"
	});
	
	$("#nickName").formValidator({
		empty : true,
		onshow : "请输入你的昵称，可以为空",
		onfocus : "请输入你想要的昵称",
		oncorrect : "昵称输入完成"
			//defaultvalue : "@"
		}).inputValidator({
				min : 0,
				max : 20,
				onerror : "昵称不能超过10个字符!"
		});
	
	$("#user_address").formValidator({
		empty : true,
		onshow : "请输入你的地址，可以为空",
		onfocus : "请输入你的地址",
		oncorrect : "地址输入完成"
			//defaultvalue : "@"
		}).inputValidator({
				min : 0,
				max : 60,
				onerror : "地址不能超过40个英文字符(20个汉字)!"
		});
	

	$("#telephone").formValidator({
				empty : true,
				onshow : "请输入你的联系电话，可以为空",
				onfocus : "请正确输入，多个号码请以'_'分隔!",
				oncorrect : "谢谢你的合作"
			}).functionValidator({
				fun : checkPhone
			});

	$("#qq").formValidator({
		empty : true,
		onshow : "请输入你的QQ，可以为空",
		onfocus : "请输入您的QQ",
		oncorrect : "输入正确"
			//defaultvalue : "@"
		}).inputValidator({
				min : 4,
				max : 10,
				onerror : "你输入的QQ长度非法,请确认"
			}).regexValidator({
		regexp : "^[1-9]*[1-9][0-9]*$",
		onerror : "你输入的QQ格式不正确"
	});
	
	$("#msn").formValidator({
		empty : true,
		onshow : "请输入你的MSN，可以为空",
		onfocus : "请输入您的MSN",
		oncorrect : "输入正确"
			//defaultvalue : "@"
		}).inputValidator({
				min : 6,
				max : 100,
				onerror : "你输入的MSN长度非法,请确认"
			}).regexValidator({
		regexp : "/^[0-9a-zA-Z]+([\.\-\_][0-9a-zA-Z]+)*@[0-9a-zA-Z]+([\.\-][0-9a-zA-Z]+)*.[a-zA-Z]$/",
		onerror : "你输入的MSN格式不正确"
	});
	
});
function test(obj) {
	if (obj.value == "不校验身份证") {
		$("#sfzh").attr("disabled", true).unFormValidator(true);
		obj.value = "校验身份证";
	} else {
		$("#sfzh").attr("disabled", false).unFormValidator(false);
		obj.value = "不校验身份证";
	}
}
//更改验证码
function change(){
	var a=document.getElementById("mag");
	var d=new Date();
	a.src="../common/image.jsp?id="+d.getDate();
}
//验证密码
function checkPass(){
	var pass = document.getElementById("password").value;
	var upass = document.getElementById("upass");
	if(pass==null || pass==""){
		upass.innerHTML="请正确输入密码!";
		upass.style.color="#FF0000";
		return false;
	}
	upass.innerHTML="OK"; 
	upass.style.color="#00CC66";
	return true;
}