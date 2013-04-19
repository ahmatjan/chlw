<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%><%@taglib prefix="s" uri="/struts-tags"%>
<style>div.My_account{ width:778px; padding:0px;} div.My_account h2{ margin:0 14px;}</style>
{success}
		
		<s:if test="#request.objValue[0].state==1">
     	    <form action="/chlw/user/tuserinfoAction!updateCashDetail" method="post" 
     	    onsubmit="return reHtml(14,'cashBean.withdrawel_money='+this.withdrawel_money.value
     	    +'&cashBean.real_name='+ encodeURI(encodeURI(this.real_name.value))
     	    +'&cashBean.ID_number='+this.bank_number.value
     	    +'&cashBean.bank_name='+ encodeURI(encodeURI(this.bank_name.value))
     	    +'&cashBean.state='+this.state.value)"  target="a">
	     </s:if>
	      <s:elseif test="#request.objValue[0].state==102 || #request.objValue[0].state==103">
	     	<form action="/chlw/user/tuserinfoAction" method="post" target="cash" >
	     </s:elseif> 
	     <s:elseif test="#request.objValue[0].state==104 || #request.objValue[0].state==106">
	     	<form action="/chlw/user/tuserinfoAction!toCash" method="post" onsubmit="return reHtml(11,'')" >
	     </s:elseif>   
			<h2>账户提款</h2>
				<div class="account_recharge">
				<ul class="account_rechargeTab  BaseTab" >
					<li ControlTarget=".drawing_Wizard" class="light " onclick="return reHtml(18,'')">提款向导</li>
					<li ControlTarget=".user_Drawing" class="light selected" onclick="return reHtml(11,'')">用户提款</li>
					<li ControlTarget=".cash_Records" class="light" onclick="return reHtml(12,'')">提款记录</li>
				</ul>
			</div>

			<div class="account_rechargeContent">
				<div class="user_Drawing none selected">
				<p class="userDrawing_p">温馨提示：<s:property value="#session.user.NICKNAME"/>，为确保您的提款能及时安全到账，请如实填写以下信息！</p>
				<table width="100%" class="userDrawing_table" cellspacing="0" cellpadding="0">
					<tr>
						<th width="117">用 户 名</th>
						<td>
							<s:if test="#request.objValue[0].state==1">
			                                      提现请求成功提交，请等待客服电话确认！ 
				            </s:if>
				            <s:elseif test="#request.objValue[0].state==102 || #request.objValue[0].state==103">
				                                    请耐心等待，您提现申请正在审核中！ 
				            </s:elseif>
				            <s:elseif test="#request.objValue[0].state==104 || #request.objValue[0].state==106">
				                                    提现请求未通过，请重新填写提现申请！
				            </s:elseif>
				            <%/*<s:elseif test="#request.objValue.STATE==105 ">
				                                    提现请求已通过审核，将于五个工作日到账，请耐心等候！
				            </s:elseif>*/ %> 
				            <s:elseif test="#request.objValue[0].state==null || #request.objValue[0].state.empty()">
				              <s:property value="#request.message"/>
				            </s:elseif>
						</td>
					</tr>
					<tr>
						<th>可提现金</th>
						<td><span class="red1">206.00</span>元</td>
					</tr>
					<tr>
						<th>提现金额</th>
						<td><input name="" type="text" class="userDrawing_input" />元<font>请输入提现金额</font></td>
					</tr>
					<tr>
						<th>真实姓名</th>
						<td><input name="" type="text" class="userDrawing_input" /></td>
					</tr>
					<tr>
						<th>开卡银行</th>
						<td>
							<select onchange="checkBankName()" id="bank_name" name="cashBean.bank_name">
								<option value="">请选择开卡银行</option>
								<option value="招商银行">招商银行</option>
								<option value="中国建设银行">中国建设银行</option>
								<option value="中国工商银行">中国工商银行</option>
								<option value="中国农业银行">中国农业银行</option>
								<option value="交通银行">交通银行</option>
								<option value="中国民生银行">中国民生银行</option>
								<option value="深圳发展银行">深圳发展银行</option>	              
								<option value="中国光大银行">中国光大银行</option>
								<option value="广东发展银行">广东发展银行</option>
								<option value="兴业银行">兴业银行</option>
								<option value="中信银行">中信银行</option>
								<option value="杭州银行">杭州银行</option>
								<option value="上海浦东发展银行">上海浦东发展银行</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>银行卡号</th>
						<td><input name="" type="text" class="userDrawing_input" /></td>
					</tr>
					<tr>
						<td colspan="2"><input name="" type="button" value="确定"  class="userDrawing_btn"/></td>
					</tr>
				</table>
				
				<p class="account_page"> <a href="#">1</a>  <a href="#">2</a>  <a href="#">上一页</a> <a href="#">下一页</a> <span>共2页</span> <span>30条</span> </p>
				<p class="recharge_title">提款规则：</p>
				<dl class="recharge_explain">
					<dt>1、银行卡姓名必须与用户的真实姓名相符，否则将提款不成功。</dt>
					<dt>2、如果账户资金低于10元，仍需提款，请一次性提清。</dt>
					<dt>3、用户提款申请提交成功后，请耐心等待汇款，一般1-3个工作日到账。</dt>
					<dd>若在3个工作日后仍没有收到提款，请您致电客服热线：400-665-1000。</dd>
					<dt>4、为了防止少数用户利用信用卡套现和洗钱行为，保证正常用户的资金安全，本站针对提款做出以下规定：</dt>
					<dd><b>针对累计消费金额（购买彩票成功的累计数）小于之前一次或几次累计存入金额（不包含奖金）30%的账户提款申请，</b></dd>
					<dd><b>本站将加收10%的异常提款处理费用，同时，提款到账日自提出申请之日起，不得少于15天。</b></dd>
				</dl>
				<div class="space15">&#160;</div>
				
				</div>
			<script>
			$(function(){
				$(".a_ATM").addClass("selected");
			});
		</script>

		</div>
	

<div class="zh_rightbg">
		<div class="zh_rt">提款</div>
		
		<s:if test="#request.objValue[0].state==1">
     	    <form action="/chlw/user/tuserinfoAction!updateCashDetail" method="post" 
     	    onsubmit="return reHtml(14,'cashBean.withdrawel_money='+this.withdrawel_money.value
     	    +'&cashBean.real_name='+ encodeURI(encodeURI(this.real_name.value))
     	    +'&cashBean.ID_number='+this.bank_number.value
     	    +'&cashBean.bank_name='+ encodeURI(encodeURI(this.bank_name.value))
     	    +'&cashBean.state='+this.state.value)"  target="a">
	     </s:if>
	      <s:elseif test="#request.objValue[0].state==102 || #request.objValue[0].state==103">
	     	<form action="/chlw/user/tuserinfoAction" method="post" target="cash" >
	     </s:elseif> 
	     <s:elseif test="#request.objValue[0].state==104 || #request.objValue[0].state==106">
	     	<form action="/chlw/user/tuserinfoAction!toCash" method="post" onsubmit="return reHtml(11,'')" >
	     </s:elseif>   
		<div class="user_content">
			<div class="zijin_nav" >
				<ul>
					<li><a class="hout" id="nav_1" href="javascript:;" onclick="return reHtml(18,'')">提款向导</a></li>
					<li><a class="hover" id="nav_2"  href="javascript:;" onclick="return reHtml(5,'')" >用户提款</a></li>
				</ul>
			</div>
			<div id="sub_nav_0" style="display:none;"></div>
			<div id="sub_nav_1" style="display:none;"></div>
			 <div class="zhh_miantop1">
		     	温馨提示：<s:property value="#session.user.NICKNAME"/>，为确保您的提款能及时安全到账，请如实填写以下信息！
		     </div>
		    <div class="tikuan_content" id="sub_nav_2" style="display:block;">
		   <table width="720"  border="0" cellpadding="0" cellspacing="0">
			      <tbody><tr>
	                <td rowspan="2" class="tikuan_biao1">用户名：</td>
			        <td class="tikuan_biao2">
				     <span class="red">
					     <s:if test="#request.objValue[0].state==1">
			                                      提现请求成功提交，请等待客服电话确认！ 
			            </s:if>
			            <s:elseif test="#request.objValue[0].state==102 || #request.objValue[0].state==103">
			                                    请耐心等待，您提现申请正在审核中！ 
			            </s:elseif>
			            <s:elseif test="#request.objValue[0].state==104 || #request.objValue[0].state==106">
			                                    提现请求未通过，请重新填写提现申请！
			            </s:elseif>
			           <%/*<s:elseif test="#request.objValue.STATE==105 ">
			                                    提现请求已通过审核，将于五个工作日到账，请耐心等候！
			            </s:elseif>*/ %> 
			            <s:elseif test="#request.objValue[0].state==null || #request.objValue[0].state.empty()">
			              <s:property value="#request.message"/>
			            </s:elseif>
				    </span> 
		          </td>
		       </tr>
		       <tr><td class="tikuan_biao4">
		        <s:property value="#session.user.MOBILEID"/>
                <input type="hidden" name="cashBean.state" id="state" value="<s:property value="#request.objValue[0].state"/>"></input></td>
		        </tr>
		      <tr>
	          	<td class="tikuan_biao3">可提现金额：</td>
		        <td class="tikuan_biao4"><input type="hidden" id="Valid_amount" value="<s:property value="#request.objBalance.drawbalance/100"/>"/><s:i18n name="Format">
				<s:text name="FormatNumeral" >
				<s:param value="#request.objBalance.drawbalance/100"/>
				</s:text>
				</s:i18n>元</td>
	          </tr>
			  <tr>
				<td class="tikuan_biao3">提现金额：</td>
				<td class="tikuan_biao4"><font class="red2">
				<input type="hidden" name="cashBean.withdrawel_money" id="withdrawel_money" value="<s:property value="#request.objValue[0].AMT"/>" >
                <s:i18n name="Format">
				<s:text name="FormatNumeral" >
				<s:param value="#request.objValue[0].AMT"/>
				</s:text>
				</s:i18n></font>&nbsp;元
				</td>
			  </tr>
			  <tr>
                <td class="tikuan_biao3">银行卡号：</td>
			    <td class="tikuan_biao4">
			    <input type="hidden" name="cashBean.ID_number" id="bank_number" value="<s:property value="#request.objValue[0].bankaccount"/>" >
            <s:property value="#request.objValue[0].bankaccount"/>
			    </td>
		      </tr>
			  <tr>
                <td class="tikuan_biao3">真实姓名：</td>
			    <td class="tikuan_biao4">
			    <input type="hidden" name="cashBean.real_name" id="real_name" value="<s:property value="#request.objValue[0].name"/>" >
	            <s:property value="#request.objValue[0].name"/>
			    </td>
		      </tr>
			  <tr>
				<td class="tikuan_biao3">开卡银行：</td>
				<td class="tikuan_biao4">
					<input type="hidden" name="cashBean.bank_name" id="bank_name" value="<s:property value="#request.objValue[0].bankname"/>" >
	           		 <s:property value="#request.objValue[0].bankname"/>
				</td>
			  </tr>
			</table>
		</div></div>
		<div>
			<s:if test="#request.objValue[0].state==1">
                <input class="xiugai_btn1" type="submit" value="" ></input>
                <input class="xiugai_btn2" type="button" value="" onclick = "reHtml(17,'')"></input> 
             </s:if><s:elseif test="#request.objValue[0].state==104 || #request.objValue[0].state==106">
                <input class="xiugai_btn3" type="submit" value=""></input>
              </s:elseif>
              
              <%/*<s:elseif test="#request.objValue[0].state==105">
                 <input class="xiugai_btn4" type="submit" value="" ></input>
              </s:elseif>*/ %> 
		</div>
		</form> 
		  
		<div class="draw_tikuan"><p class="yjbt">提款规则:</p>
		    <p class="putong">1、银行卡姓名必须与用户的真实姓名相符，否则将提款不成功。</p>
		    <p class="putong">2、如果账户资金低于10元，仍需提款，请一次性提清。    </p>
		    <p class="putong">3、用户提款申请提交成功后，请耐心等待汇款，一般1-3个工作日到账。若在3个工作日后仍没有收到提款，请您致电客服热线：400-665-1000。</p>
		    <p class="putong">4、为了防止少数用户利用信用卡套现和洗钱行为，保证正常用户的资金安全，本站针对提款做出以下规定：<font class="red1">针对累计消费金额（购买彩票成功的累计数）小于之前一次或几次累计存入金额（不包含奖金）30%的账户提款申请，本站将加收10%的异常提款处理费用，同时，提款到账日自提出申请之日起，不得少于15天。 </font></p>
	    </div>
		  