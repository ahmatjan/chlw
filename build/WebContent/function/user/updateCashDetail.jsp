<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<div class="zh_rightbg">
		<div class="zh_rt">提款</div>
		
		<form action="user/tuserinfoAction!doUpdateCashDetail" method="post" 
		onsubmit="return reHtml(16,'cashBean.withdrawel_money='+this.withdrawel_money.value
		+'&cashBean.real_name='+ encodeURI(encodeURI(this.real_name.value))
		+'&cashBean.ID_number='+this.bank_number.value
		+'&cashBean.bank_name='+ encodeURI(encodeURI(this.bank_name.value))
		+'&cashBean.state='+this.state.value)" >
		<div class="user_content">
			<div class="zijin_nav" >
				<ul>
					<li><a class="hout" id="nav_1" onclick="return reHtml(18,'')" href="javascript:;">提款向导</a></li>
					<li><a class="hover" id="nav_2" onclick="return reHtml(5,'')" >用户提款</a></li>
				</ul>
			</div>
			<div id="sub_nav_0" style="display:none;"></div>
			<div id="sub_nav_1" style="display:none;"></div>
			 <div class="zhh_miantop1">
		     	温馨提示：<s:property value="#session.user.NICKNAME"/>，为确保您的提款能及时安全到账，请如实填写以下信息！
		     </div>
		    <div class="tikuan_content" id="sub_nav_2" style="display:block;" >
		   
		    <table width="720" border="0" cellpadding="0" cellspacing="0">
		      <tr>
                <td class="tikuan_biao1">用户名：</td>
			        <td class="tikuan_biao2">
		       		<s:property value="#session.user.MOBILEID"/>
		       		<input type="hidden" name="cashBean.state" id="state" value='<s:property value="#request.objValue.STATE"/>'>
		        </td>
	          </tr>
	          <tr>
	          	<td class="tikuan_biao3">可提现金额：</td>
		        	<td class="tikuan_biao4"><input type="hidden" id="Valid_amount" value="<s:property value="#request.objBalance.drawbalance/100"/>"/><s:property value="#request.objBalance.drawbalance/100"/>元</td>
	          </tr>
			  <tr>
				<td class="tikuan_biao3">提现金额：</td>
				<td class="tikuan_biao4">
				<input type="text" name="cashBean.withdrawel_money" id="withdrawel_money" value='<s:property value="#request.jsonValue.AMT"/>' onkeyup="checkMoney()">&nbsp;元
				<font id="mno">&nbsp;</font>
				</td>
			  </tr>
			  <tr>
                <td class="tikuan_biao3">银行卡号：</td>
			    <td class="tikuan_biao4">
			      <s:if test="#request.jsonValue_DNA.isEmpty() || #request.jsonValue_DNA.bankcardno==null || #request.jsonValue_DNA.bankcardno.isEmpty()">
			  	 	<input type="text" name="cashBean.ID_number" id="bank_number" value='<s:property value="#request.jsonValue.BANKACCOUNT"/>' maxlength=21 style= "width:150px;" onkeyup="checkBankNO()">
			     </s:if><s:else>
			     	<input type="hidden" name="cashBean.ID_number" id="bank_number"  value="<s:property value="#request.jsonValue_DNA.bankcardno"/>"/>
			     	<s:property value="#request.jsonValue_DNA.bankcardno"/>
			     </s:else>
			   <font id="bno">&nbsp;</font>
			    </td>
		      </tr>
			  <tr>
                <td class="tikuan_biao3">真实姓名：</td>
			    <td class="tikuan_biao4">
			   	 <s:if test="#request.jsonValue_DNA.isEmpty() || #request.jsonValue_DNA.name==null || #request.jsonValue_DNA.name.isEmpty()">
			   	 	 <input type="text" class="tikuaninput" name="cashBean.real_name" id="real_name" value='<s:property value="#request.jsonValue.NAME"/>' onblur="checkName_real()">
			   	 </s:if><s:else>
			   	 	 <s:property value="#request.jsonValue_DNA.name"/>
		             <input type="hidden" class="tikuaninput" name="cashBean.real_name" id="real_name" size="25" value="<s:property value="#request.jsonValue_DNA.name"/>">
			   	 </s:else>
				    <font id="realName">&nbsp;</font>
			    </td>
		      </tr>
			  <tr>
				<td class="tikuan_biao3">开卡银行：</td>
				<td class="tikuan_biao4">
					<select name="cashBean.bank_name" id="bank_name" style="width:140px;" onchange="checkBankName()">
		               <option value="招商银行" <s:if test='#request.jsonValue.BANKNAME=="招商银行"'>selected="selected"</s:if>>招商银行</option>
		               <option value="中国建设银行" <s:if test='#request.jsonValue.BANKNAME=="中国建设银行"'>selected="selected"</s:if>>中国建设银行</option>
		               <option value="中国工商银行" <s:if test='#request.jsonValue.BANKNAME=="中国工商银行"'>selected="selected"</s:if>>中国工商银行</option>
		               <option value="中国农业银行" <s:if test='#request.jsonValue.BANKNAME=="中国农业银行"'>selected="selected"</s:if>>中国农业银行</option>
		               <option value="交通银行" <s:if test='#request.jsonValue.BANKNAME=="交通银行"'>selected="selected"</s:if>>交通银行</option>
		               <option value="中国民生银行" <s:if test='#request.jsonValue.BANKNAME=="中国民生银行"'>selected="selected"</s:if>>中国民生银行</option>
		               <option value="深圳发展银行" <s:if test='#request.jsonValue.BANKNAME=="深圳发展银行"'>selected="selected"</s:if>>深圳发展银行</option>
		               <option value="上海浦东发展银行" <s:if test='#request.jsonValue.BANKNAME=="上海浦东发展银行"'>selected="selected"</s:if>>上海浦东发展银行</option>
		               <option value="中国光大银行" <s:if test='#request.jsonValue.BANKNAME=="中国光大银行"'>selected="selected"</s:if>>中国光大银行</option>
		               <option value="广东发展银行" <s:if test='#request.jsonValue.BANKNAME=="广东发展银行"'>selected="selected"</s:if>>广东发展银行</option>
		               <option value="兴业银行" <s:if test='#request.jsonValue.BANKNAME=="兴业银行"'>selected="selected"</s:if>>兴业银行</option>
		             </select>
				    <font id="bankNo">&nbsp;</font>
				</td>
			  </tr>
			</table>			
		</div>
		<div>
			<input class="xiugai_btn" type="button" value="" onclick="checkAllUpdate();"/>
		</div>
		</div>
		</form> 
		<div class="draw_tikuan"><p class="yjbt">提款规则:</p>
		    <p class="putong">1、银行卡姓名必须与用户的真实姓名相符，否则将提款不成功。</p>
		    <p class="putong">2、如果账户资金低于10元，仍需提款，请一次性提清。    </p>
		    <p class="putong">3、用户在工作日内16：00前提款的，款额当天即可到达用户指定银行账号；16：00以后提款的，款额第二天到达用户指定银行账号。用户在法定节假日提款的，处理时间以当时网站公告为准。若在3个工作日后仍没有收到提款金额，请您致电客服热线：400-665-1000。</p>
		    <p class="putong">4、为了防止少数用户利用信用卡套现和洗钱行为，保证正常用户的资金安全，本站针对提款做出以下规定：<font class="red1">针对累计消费金额（购买彩票成功的累计数）小于之前一次或几次累计存入金额（不包含奖金）30%的账户提款申请，本站将加收10%的异常提款处理费用，同时，提款到账日自提出申请之日起，不得少于15天。 </font></p>
	    </div>