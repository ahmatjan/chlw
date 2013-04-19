<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><%@taglib prefix="s" uri="/struts-tags" %>

<div>
<div class="mainlogin" id="mainlogin">
<s:if test="#session.user==null">
<form action="" method="post" id="userLoginForm" name="userLoginForm" onsubmit="checkformsub()">
 <div class="mainlogin_in">
 <input type="hidden" id="user_p" value="">
                <ul>
                  <li>用户名：（请输入手机号码）</li>
                  <li><span>
                    <input class="input" name="tuserinfo.MOBILEID" type="text" id="mobileId" onfocus="change('magLogin');"/>
                  </span></li>
                  <li>登录密码：</li>
                  <li><span >
                    <input class="input"name="tuserinfo.PASSWORD" type="password" id="password" />
                  </span></li>
                  <li>验证码：</li>
                  <li>
                    <input class="yanzhengk"  id="password1" name="password1" type="text" onKeyDown="if (event.keyCode==13)tgtologin();"/>
                    <span class="yanzhengm">
                    <img src="/chlw/function/common/image.jsp" id="magLogin"/><script>change('magLogin')</script></span>
                    <a href="javascript:change('magLogin');" title="换一张"><span class="huanyizhang">换一张</span></a></li>
                </ul>
		      </div>

			  <div class="login_btn"><input class="lbn" name="" id="login_submit" type="button" value="" onclick="tgtologin()"/></div>
			  </form>
				<div class="forget"><a href="/rules/register.html" title="免费注册"><span class="blue">免费注册</span></a><br/><a href="/rules/findPwd.html" title="忘记密码"><span class="blue">忘记密码</span></a></div>
</s:if>
<s:else>
<s:if test="#session.user.NICKNAME.equals(null)">
<script>tgisnickname();</script>
</s:if>
<s:else>
        <div class="mainlogin_int">
         <input type="hidden" id="user_p" value='<s:property value="#session.user.MOBILEID"/>'>
          <ul>
            <li>  欢迎您，<span class="red"><s:property value="#session.user.NICKNAME"/></span></li>
            <li>  可投注金额：
            <span class="red" id="topLogin_money" <s:if test='#session.moneyShowType.equals("hide")'>style="display:none" </s:if>><script>balanceDivDis();</script></span>
            <span class="red" id="topLogin_moneyNone" <s:if test='#session.moneyShowType.equals("show")'> style="display:none" </s:if>  >******</span>
            	元<span class="bluey" id="showId"  <s:if test='#session.moneyShowType.equals("show")'>style="display:none" </s:if> onclick="chanage('showId','hideId','topLogin_money','topLogin_moneyNone','show')">显示</span>
            <span class="bluey" id="hideId"  <s:if test='#session.moneyShowType.equals("hide")'>style="display:none" </s:if> onclick="chanage('showId','hideId','topLogin_money','topLogin_moneyNone','hide')">隐藏</span>
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
            </li>
          </ul>
        </div>
		<div class="mainlogin_btn">
			<ul>
				<li><a href="/shuangseqiu.html" target="_blank" class="mainlogin_huang" title="购买彩票">购买彩票</a></li>
				<li><a href="/rules/user.html?key=23&#Menu=ChildMenu1" target="_blank" class="mainlogin_hui" title="我的账户">我的账户</a></li>
				<li><a href="/rules/user.html?key=4&#Menu=ChildMenu1" target="_blank" class="mainlogin_hui" title="充  值">充  值</a></li>
				<li><a href="/rules/user.html?key=18&#Menu=ChildMenu1" target="_blank" class="mainlogin_hui" title="提款">提款</a></li>
			</ul>
		</div>
		<div class="mainlogin_btn1">
			<ul>
				<li><a href="/rules/user.html?key=0&#Menu=ChildMenu2"  target="_blank" title="投注记录">投注记录</a></li>
				<li><a href="/rules/user.html?key=1&#Menu=ChildMenu2"  target="_blank" title="追号记录">追号记录</a></li>
				<li><a href="/rules/user.html?key=7&#Menu=ChildMenu3"  target="_blank" title="我的资料">我的资料</a></li>
				<li><a href="/rules/user.html?key=6&#Menu=ChildMenu1"  target="_blank" title="账户明细">账户明细</a></li>
			</ul>
		</div>
		<div class="tuichu"><a href="/bangzhuzhongxin/goucaibangzhu.html" title="购彩帮助" target="_blank"><span class="red">购彩帮助</span></a><a title="退出" href="javascript:ajaxLoginOut();"><span class="blue">[退出]</span></a></div>
		</s:else>
		</s:else>
        <div class="leiji" id="leijirenshu">
         <script type="text/javascript">
         $.ajax({
      		'type': 'POST',
      		'url': '/include/leijijiangjin.html?r='+ Math.round(Math.random()*10000),
      		beforeSend:function(XMLHttpRequest){
     	    	
     	    },
      		'dataType': 'html',
      		'success': function(data){
      			$("#leijirenshu").html($.trim(data));
      		}
      	});
         </script>
          </div>
</div>
</div>