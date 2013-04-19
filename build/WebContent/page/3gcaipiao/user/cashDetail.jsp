<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%><%@taglib prefix="s" uri="/struts-tags"%>
{success}
		<div class="user_head">
			<div class="user_zi">提款申请</div>
		</div>
		
		<s:if test="#request.objValue.STATE==1">
     	    <form action="/chlw/user/tuserinfoAction!updateCashDetail" method="post" 
     	    onsubmit="return reHtml(14,'cashBean.withdrawel_money='+this.withdrawel_money.value
     	    +'&cashBean.real_name='+ encodeURI(encodeURI(this.real_name.value))
     	    +'&cashBean.ID_number='+this.bank_number.value
     	    +'&cashBean.bank_name='+ encodeURI(encodeURI(this.bank_name.value))
     	    +'&cashBean.state='+this.state.value)"  target="a">
	     </s:if>
	      <s:elseif test="#request.objValue.STATE==102 || #request.objValue.state==103">
	     	<form action="/chlw/user/tuserinfoAction" method="post" target="cash" >
	     </s:elseif> 
	     <s:elseif test="#request.objValue.STATE==104 || #request.objValue.STATE==106">
	     	<form action="/chlw/user/tuserinfoAction!toCash" method="post" onsubmit="return reHtml(11,'')" >
	     </s:elseif>   
		<div class="user_content">
				<div class="zijin_nav" >
				<ul>
					<li><a class="hout" id="nav_1" href="#" onclick="return reHtml(18,'')">提款向导</a></li>
					<li><a class="hover" id="nav_2"  href="#" onclick="return reHtml(5,'')" >用户提款</a></li>
				</ul>
			</div>
			<div id="sub_nav_0" style="display:none;"></div>
			<div id="sub_nav_1" style="display:none;"></div>
			 <div class="zhh_miantop1">温馨提示：<s:property value="#session.user.NICKNAME"/>，为确保您的提款能及时安全到账，请如实填写以下信息！</div>
		    <div class="tikuan_content" id="sub_nav_2" style="display:block;">
		   
		    <table  width="798" height="316" border="0" cellpadding="0" cellspacing="0">
		      <tr>
                <td rowspan="2" class="tikuan_biao1">用户名：</td>
		        <td colspan="2" class="tikuan_biao2">
		        <span class="red">
		     <s:if test="#request.objValue.STATE==1">
                                      提现请求成功提交，请等待客服电话确认！ 
            </s:if>
            <s:elseif test="#request.objValue.STATE==102 || #request.objValue.STATE==103">
                                    请耐心等待，您提现申请正在审核中！ 
            </s:elseif>
            <s:elseif test="#request.objValue.STATE==104 || #request.objValue.STATE==106">
                                    提现请求未通过，请重新填写提现申请！
            </s:elseif>
           <%/*<s:elseif test="#request.objValue.STATE==105 ">
                                    提现请求已通过审核，将于五个工作日到账，请耐心等候！
            </s:elseif>*/ %> 
            <s:elseif test="#request.objValue.STATE==null || #request.objValue.STATE.empty()">
              <s:property value="#request.message"/>
            </s:elseif>
		       </span> 
		       </td>
		       </tr>
		       <tr><td colspan="2" class="tikuan_biao2">
		        <s:property value="#session.user.MOBILEID"/>
                <input type="hidden" name="cashBean.state" id="state" value="<s:property value="#request.objValue.STATE"/>"></input></td>
		        </tr>
		      <tr>
	          	<td class="tikuan_biao1">可提现金额：</td>
		        <td class="tikuan_biao2"><input type="hidden" id="Valid_amount" value="<s:property value="#request.objBalance.drawbalance/100"/>"/><s:i18n name="Format">
				<s:text name="FormatNumeral" >
				<s:param value="#request.objBalance.drawbalance/100"/>
				</s:text>
				</s:i18n>元</td>
	          </tr>
			  <tr>
				<td class="tikuan_biao1">提现金额：</td>
				<td class="tikuan_biao2">
				<input type="hidden" name="cashBean.withdrawel_money" id="withdrawel_money" value="<s:property value="#request.objValue.AMT"/>" >
                <span class="red1"><s:i18n name="Format">
				<s:text name="FormatNumeral" >
				<s:param value="#request.objValue.AMT"/>
				</s:text>
				</s:i18n></span>&nbsp;元
				</td>
			  </tr>
			  <tr>
                <td class="tikuan_biao1">银行卡号：</td>
			    <td class="tikuan_biao2">
			    <input type="hidden" name="cashBean.ID_number" id="bank_number" value="<s:property value="#request.objValue.BANKACCOUNT"/>" >
            <s:property value="#request.objValue.BANKACCOUNT"/>
			    </td>
		      </tr>
			  <tr>
                <td class="tikuan_biao1">真实姓名：</td>
			    <td class="tikuan_biao2">
			    <input type="hidden" name="cashBean.real_name" id="real_name" value="<s:property value="#request.objValue.NAME"/>" >
            <s:property value="#request.objValue.NAME"/>
			    </td>
		      </tr>
			  <tr>
				<td class="tikuan_biao1">开卡银行：</td>
				<td class="tikuan_biao2">
					<input type="hidden" name="cashBean.bank_name" id="bank_name" value="<s:property value="#request.objValue.BANKNAME"/>" >
	           		 <s:property value="#request.objValue.BANKNAME"/>
				</td>
			  </tr>

			</table>
			
		</div></div>
		<div>
			<s:if test="#request.objValue.STATE==1">
                <input class="xiugai_btn1" type="submit" value="" ></input>
                <input class="xiugai_btn2" type="button" value="" onclick = "reHtml(17,'')"></input> 
             </s:if><s:elseif test="#request.objValue.STATE==104 || #request.objValue.STATE==106">
                <input class="xiugai_btn3" type="submit" value=""></input>
              </s:elseif>
              
              <%/*<s:elseif test="#request.objValue.STATE==105">
                 <input class="xiugai_btn4" type="submit" value="" ></input>
              </s:elseif>*/ %> 
		</div>
		</form> 
		  
		<div class="draw_tikuan"><p class="yjbt">提款规则:</p>
		    <p class="putong">1、银行卡姓名必须与用户的真实姓名相符，否则将提款不成功。</p>
		    <p class="putong">2、如果账户资金低于10元，仍需提款，请一次性提清。    </p>  
		    <p class="putong">3、用户在工作日内16：00前提款的，款额当天即可到达用户指定银行账号；16：00以后提款的，款额第二天到达用户指定银行账号。用户在法定节假日提款的，处理时间以当时网站公告为准。若在3个工作日后仍没有收到提款金额，请您致电客服热线：400-665-1000。</p>
		    <p class="putong">4、为了防止少数用户利用信用卡套现和洗钱行为，保证正常用户的资金安全，本站针对提款做出以下规定：<span class="red1">针对累计消费金额（购买彩票成功的累计数）小于之前一次或几次累计存入金额（不包含奖金）30%的账户提款申请，本站将加收10%的异常提款处理费用，同时，提款到账日自提出申请之日起，不得少于15天。 </span></p>
	    </div>
		  