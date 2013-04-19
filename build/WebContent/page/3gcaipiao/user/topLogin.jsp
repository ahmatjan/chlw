<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><%@taglib prefix="s" uri="/struts-tags" %>


<s:if test="#session.user==null">
<form action="" method="post" id="userLoginForm" name="userLoginForm" onsubmit="checkformsub()">
<div class="logininput">
	<ul>
		<li><span>用户名：</span><input name="tuserinfo.MOBILEID" type="text" id="mobileId" onfocus="change('magLogin');"/></li>
		<li><span>密码：</span><input name="tuserinfo.PASSWORD" type="password" id="password" /></li>
		<li><span>验证码：</span><input id="password1" name="password1" type="text" onKeyDown="if (event.keyCode==13)tgTopToLogin();"/></li>
	</ul>
</div>
<div class="login_botton">
	<div class="yangzheng_tu"><img src=""  id="magLogin"/></div>
	<div ><a href="javascript:change('magLogin');"  class="lanzi" title="刷新">刷新</a><script>change('magLogin')</script></div>
	<div class="login_btn01"><input class="login_denglu" name="" id="login_submit" type="button" value="" onclick="tgTopToLogin()" /></div>
	
	<div class="forget_btn"><a href="/rules/register.html" title="免费注册">免费注册</a>
	｜ <a href="/rules/findPwd_new.html" title="忘记密码">忘记密码</a></div>
</div>
</form>
</s:if>
<s:else>
<s:if test="#session.user.NICKNAME.equals(null)">
<script>tgTopisnickname();</script>
</s:if>

<s:else>
<input type="hidden" id="user_p" value="#session.user.NICKNAME">
  	<div class="login_user">您好，<span><s:property value="#session.user.NICKNAME"/></span></div>
	<div class="login_zhh">可投注金额：￥<span id="topLogin_money" <s:if test="#session.moneyShowType =='hide'">style="display:none" </s:if> ><script>balanceDivDis();</script></span>
	<span id="topLogin_moneyNone" <s:if test="#session.moneyShowType =='show'"> style="display:none" </s:if> >******</span>元</div>
	<div class="login_gongneng">

	<a href="#" >
	<span id="showChannelId" <s:if test="#session.moneyShowType =='show'">style="display:none" </s:if> onclick="chanage('showChannelId','hideChannelId','topLogin_money','topLogin_moneyNone','show')" >显示</span>
	<span id="hideChannelId" <s:if test="#session.moneyShowType =='hide'">style="display:none" </s:if> onclick="chanage('showChannelId','hideChannelId','topLogin_money','topLogin_moneyNone','hide')">隐藏</span>
	</a>
	
	<script type="text/javascript">
         function chanage(id1,id2,id3,id4,divType){
      		 $("#"+id1).toggle();
      		 $("#"+id2).toggle();
      		 $("#"+id3).toggle();
      		 $("#"+id4).toggle();
      		 $.ajax({
      			url	: '/chlw/function/tuserinfoAction!setMoneryDivShowType?divShowType='+divType,
      			type:"POST",//数据发送方式
      			dataType:'html',//接受数据格式
      			success:function(data){
      				
      			}		
      		});
          }
       </script>
	
	<a href="/rules/user.html?key=23&#Menu=ChildMenu1" title="我的账户"><span>我的账户</span></a></div>
	<div class="login_btn001"><a href="/rules/user.html?key=4&#Menu=ChildMenu1" title="充值"><img src="/images/chongzhi_btn.gif"  alt="充值" /></a><a href="/rules/user.html?key=18&#Menu=ChildMenu1" title="提款"><img src="/images/tikuan_btn.gif"  alt="提款"/></a></div>
	<div class="login_gongneng"><a href="javascript:ajaxLoginOut();" title="退出"><span>退出</span></a></div>
</s:else>
</s:else>

