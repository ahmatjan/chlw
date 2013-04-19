<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="s" uri="/struts-tags" %>
   <script type="text/javascript">
      $.formValidator.initConfig({formid:"findPwdForm",onError:function(){alert(decodeURI(EncodeUtf8("校验没有通过，具体错误请看错误提示。")));}});
	 $("#inputMobile").formValidator({
			onshow : decodeURI(EncodeUtf8("请输入您用户名！")),
			onfocus : decodeURI(EncodeUtf8("请输入您用户名，不可为空！")),
			oncorrect : decodeURI(EncodeUtf8("恭喜！您输入的用户名是正确的！"))
		}).inputValidator({
				min : 6,
				max : 30,
				onerror : decodeURI(EncodeUtf8("你输入的用户名长度非法，请确认！"))
			});
		
	 
</script>

  <div class="rusercontent" style="height:400px;">
		<div class="biaoti1"><img src="/images/mimalogo.gif"/></div>
		<div class="mimanav">
			<div class="nav_left"></div>
			<div class="nav_mid">
				<ul>
					<li class="mimahover">1.填写如意彩用户名</li>
					<li class="mimalist">2.选择密码找回方式</li>
					<li class="mimalist">3.安全验证</li>
					<li class="mimalist">4.重设密码</li>
				</ul>
			</div>
			<div class="nav_right"></div>
		</div>
        <div class="rusercont" style="margin-top:10px;">
        <form action="/function/findtuser2!ryc_FindPwdWays" id="findPwdForm" method="post" >
          <div class="yonghuming">请输入需要找回的用户名</div>
		  <div class="yonghuming1"><span class="repass_name">用户名：</span><span><input  class="input_l repass_input" name="userName" id="inputMobile" type="text"  onfocus="change('findimg')" onblur="findpwdValidator();"/></span><span id="inputMobileTip" class="onShow repass_name"></span></div>
		  <div class="yonghuming1"><span>验证码：</span><span><input class="mimainput"  type="text" name="pssRank" /></span><span><img  id="findimg" class="yanzhengs" src="/chlw/function/common/image.jsp?id=260.48305424745194614" /></span><a href="javaScript:change('findimg');" title="看不清，换一张"><span class="blue1">看不清，换一张</span></a></div>
		  <div style="float:left; overflow:hidden; padding:10px 0px 0px 168px;"><input class="tijiaobtn1" style="margin:0px;" id="findButton" name="" type="button" value="" onclick="jumpUrl('key=0')"/></div>
       </form>
        </div>
  </div>