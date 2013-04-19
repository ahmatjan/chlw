<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
		<div class="user_head">
			<div class="user_zi">提款申请</div>
		</div>
		<div class="user_content">
			<div class="zijin_nav" >
				<ul>
					<li><a class="hout" id="nav_1" onclick="return reHtml(18,'')"  href="#">提款向导</a></li>
					<li><a class="hover" id="nav_2" onclick="return reHtml(12,'')" href="#" >用户提款</a></li>
				</ul>
			</div>
			
		<s:if test='#session.user.CERTID=="111111111111111111"'>	
			<div class="zhh_miantop2">对不起，您没有进行身份证绑定!	为了保障您的账户安全，请您先进行身份证绑定</div>
		        <div class="zhanghu_mian01">
		        <p>&nbsp;</p>
		        
			     <form action="#" method="post" onsubmit="return reHtml(44,$('#form2').serialize());" id="form2" >
			     	<font color="red"><s:property value="#request.message"/></font>
			       	  <p>真实姓名：<input type="text" name="tuserinfo.NAME" id="name"/>
			          <span class="red" style="font-weight:normal">* </span>非常重要，填写后不可自行更改
			          </p>
			          <p> &nbsp;&nbsp;&nbsp;&nbsp;身份证：<input type="text" name="tuserinfo.CERTID" id="userID" maxlength=18/>
			        <span class="red" style="font-weight:normal">* 领奖人身份证号码，需与姓名一致。</span></p>
			            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			        <label>
			      		<input class="zhanghu_btn" type="submit" name="imageField" id="imageField" value="" />
			        </label>
			     </form>
		    </div>
		</s:if>	
		<s:else>
			<div id="sub_nav_0" style="display:none;"></div>
			<div id="sub_nav_1" style="display:none;"></div>
			<div class="zhh_miantop1">温馨提示：<s:property value="#session.user.NICKNAME"/>，为确保您的提款能及时安全到账，请如实填写以下信息！</div>
		    <div class="tikuan_content"id="sub_nav_1" style="display:block;" >
		    
		    <table width="798" height="316" border="0" cellpadding="0" cellspacing="0">
		      <tr>
                <td class="tikuan_biao1">用户名：</td>
		        <td class="tikuan_biao2">
		        <s:if test="#request.jsonValue_DNA.Mobile==null || #request.jsonValue_DNA.Mobile.isEmpty()">
               		<s:property value="#session.user.MOBILEID"/>
          		</s:if><s:else>
               		<s:property value="#request.jsonValue_DNA.Mobile"/>
          		</s:else>
		        </td>
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
				<input type="text" name="cashBean.withdrawel_money" id="withdrawel_money" value="<s:property value="#request.cashBean.withdrawel_money"/>" onkeyup="checkMoney()">&nbsp;元
            	<font id="mno">请输入提现金额</font>
				</td>
			  </tr>
			  <tr>
                <td class="tikuan_biao1">银行卡号：</td>
			    <td class="tikuan_biao2">
			    <s:if test="#request.jsonValue_DNA.BankCardNo==null || #request.jsonValue_DNA.BankCardNo.isEmpty()">
			      <s:if test="#request.objValue.BANKACCOUNT==null || #request.objValue.BANKACCOUNT.isEmpty()">
			      	<input type="text" name="cashBean.ID_number" id="bank_number"  value="<s:property value="#request.cashBean.ID_number"/>" maxlength=21 style= "width:150px;" onkeyup="return checkBankNO();"/>
             		<font id="bno">银行账号格式必须是16-21位的数字字符串</font>
             	  </s:if><s:else>
             	  	 <input type="text" name="cashBean.ID_number" id="bank_number"  value="<s:property value="#request.objValue.BANKACCOUNT"/>" maxlength=21 style= "width:150px;" onkeyup="return checkBankNO();"/>
             		 <font id="bno">&nbsp;</font>
             	  </s:else>
             	</s:if>
             	<s:else>
                	<input type="hidden" name="cashBean.ID_number" id="bank_number"  value="<s:property value="#request.jsonValue_DNA.BankCardNo"/>"/>
                	<s:property value="#request.jsonValue_DNA.BankCardNo"/>
                	<font id="bno">&nbsp;</font>
            	 </s:else>
			    </td>
		      </tr>
			  <tr>
                <td class="tikuan_biao1">真实姓名：</td>
			    <td class="tikuan_biao2">
				    <s:if test="#request.jsonValue_DNA.Name==null || #request.jsonValue_DNA.Name.isEmpty()">
		                <s:if test="#session.user.NAME==null || #session.user.NAME.isEmpty()">
		                    <input type="text" name="cashBean.real_name"  id="real_name" size="25" value="<s:property value="#request.cashBean.real_name"/>" onblur="checkName_real();" />
		                </s:if><s:else>
		                    <input type="text" name="cashBean.real_name"  id="real_name" size="25" value="<s:property value="#session.user.NAME"/>"/>
		                </s:else>
	            	</s:if><s:else>
		                 <s:property value="#request.jsonValue_DNA.Name"/>
		                 <input type="hidden" name="cashBean.real_name" id="real_name" size="25" value="<s:property value="#request.jsonValue_DNA.Name"/>">
	            	</s:else> 
	            	<font id="realName">&nbsp;</font>
			    </td>
		      </tr>
			  <tr>
				<td class="tikuan_biao1">开卡银行：</td>
				<td class="tikuan_biao2">
				<s:if test="#request.jsonValue_DNA.BANKNAME==null || #request.jsonValue_DNA.BANKNAME.isEmpty()">
					<select name="cashBean.bank_name" id="bank_name" onchange="checkBankName()">
					 <option value="" >请选择开卡银行</option>
		               <option value="招商银行" <s:if test='#request.objValue.BANKNAME=="招商银行"'>selected="selected"</s:if>>招商银行</option>
		               <option value="中国建设银行" <s:if test='#request.objValue.BANKNAME=="中国建设银行"'>selected="selected"</s:if>>中国建设银行</option>
		               <option value="中国工商银行" <s:if test='#request.objValue.BANKNAME=="中国工商银行"'>selected="selected"</s:if>>中国工商银行</option>
		               <option value="中国农业银行" <s:if test='#request.objValue.BANKNAME=="中国农业银行"'>selected="selected"</s:if>>中国农业银行</option>
		               <option value="交通银行" <s:if test='#request.objValue.BANKNAME=="交通银行"'>selected="selected"</s:if>>交通银行</option>
		               <option value="中国民生银行" <s:if test='#request.objValue.BANKNAME=="中国民生银行"'>selected="selected"</s:if>>中国民生银行</option>
		               <option value="深圳发展银行" <s:if test='#request.objValue.BANKNAME=="深圳发展银行"'>selected="selected"</s:if>>深圳发展银行</option>
		               <option value="上海浦东发展银行" <s:if test='#request.objValue.BANKNAME=="上海浦东发展银行"'>selected="selected"</s:if>>上海浦东发展银行</option>
		               <option value="中国光大银行" <s:if test='#request.objValue.BANKNAME=="中国光大银行"'>selected="selected"</s:if>>中国光大银行</option>
		               <option value="广东发展银行" <s:if test='#request.objValue.BANKNAME=="广东发展银行"'>selected="selected"</s:if>>广东发展银行</option>
		               <option value="兴业银行" <s:if test='#request.objValue.BANKNAME=="兴业银行"'>selected="selected"</s:if>>兴业银行</option>
	           	  </select>
				</s:if><s:else>
					<s:property value="#request.jsonValue_DNA.BANKNAME"/>
					<input type="hidden" name="cashBean.bank_name" id="bank_name" value="<s:property value="#request.jsonValue_DNA.BANKNAME"/>">
	           	</s:else>
	           	<font id="bankNo">&nbsp;</font>
				</td>
			  </tr>
			</table>			
		</div>
		<div><input class="xiugai_btn" type="button" value="" onclick="checkAll()" /></div>
		<div class="draw_tikuan"><p class="yjbt">提款规则:</p>
		    <p class="putong">1、银行卡姓名必须与用户的真实姓名相符，否则将提款不成功。</p>
		    <p class="putong">2、如果账户资金低于10元，仍需提款，请一次性提清。    </p>  
		    <p class="putong">3、用户在工作日内16：00前提款的，款额当天即可到达用户指定银行账号；16：00以后提款的，款额第二天到达用户指定银行账号。用户在法定节假日提款的，处理时间以当时网站公告为准。若在3个工作日后仍没有收到提款金额，请您致电客服热线：400-665-1000。</p>
		    <p class="putong">4、为了防止少数用户利用信用卡套现和洗钱行为，保证正常用户的资金安全，本站针对提款做出以下规定：<span class="red1">针对累计消费金额（购买彩票成功的累计数）小于之前一次或几次累计存入金额（不包含奖金）30%的账户提款申请，本站将加收10%的异常提款处理费用，同时，提款到账日自提出申请之日起，不得少于15天。 </span></p>
	    </div>
	 </s:else>
    </div>