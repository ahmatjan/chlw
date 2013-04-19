<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@taglib prefix="s" uri="/struts-tags"%>

	<link href="/css/user.css" rel="stylesheet" type="text/css">
	<div class="user_head">
			<div class="user_zi">账户管理--账户明细</div>
	</div>
    <div class="user_content">
         <%/*<div class="zijin_nav">
          <ul>
           <li><a class="hover" href="javascript:" onclick="reHtml(6,)" title="账户明细">账户明细</a></li>
          <li><a class="hout" href="javascript:" onclick="reHtml(0)" title="购买彩票">购买彩票</a></li>
           <li><a class="hout" href="#" title="奖金派送">奖金派送</a></li>
           <li><a class="hout" href="#" title="充值记录">充值记录</a></li>
           <li><a class="hout" href="#" title="提款记录">提款记录</a></li>   
           
         </ul>
        </div> */%>
		<form action="/chlw/user/selectAll!accountDetail_3g" method="get" onsubmit="return reHtmlInParameters('',this.startDate.value,this.stopDate.value,'')">
        <div class="cz_cxxz">
          <div class="record_zhh">
            <span class="record_zhh1">起始日期：<input type="text" id="startDate" name="startDate" value="<s:property value="#request.startDate"/>" onFocus="WdatePicker({alwaysUseStartDate:true})"/></span>
			<span class="record_zhh1">截止日期：<input type="text" id="stopDate" name="endDate" value="<s:property value="#request.stopDate"/>" onFocus="WdatePicker({alwaysUseStartDate:true})"/></span>
            <input class="cz_cxbtn" name="button"  type="submit"" id="button" value="" />
          </div>
          </div>   
          <%/*
           <div class="tiaoshu">
            <input name="aa" type="radio" id="radio1" value="10" checked="checked" />10条
            <input id="radio2" name="aa" type="radio" value="20" />20条
            <input id="radio3" name="aa" type="radio" value="30" />30条
          </div>
            <div class="cz_srjy">
            支出交易笔数：2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            支出金额合计：<span class="redfont">400.00</span>元
</div>
            */%>
            
            <div class="account_content">
              <table width="794"  border="0" cellpadding="0" cellspacing="0" class="zhzx_tab">
                <tr>
                  <td width="128" class="record_biao1">交易时间</td>
                  <td width="67" class="record_biao1">变动金额</td>
                  <td width="72" class="record_biao1">手续费</td>
                  <% /* <td width="81" class="record_biao1">余额</td>  <td class="record_biao3">￥${balance/100}</td>*/ %>
                  <td width="100" class="record_biao1">交易类型</td>
                  <td class="record_biao1">订单号</td>
                  <td  class="record_biao1">说明</td>
                </tr>
                <s:if test="#request.list==null">
                <tr >
                <td colspan="6" align="center"> <s:property value="#request.msg"></s:property></td>
                </tr>
                </s:if>
                <s:else>
                <s:iterator id="account"  value="#request.list"  status="stat">
                	<%/*<s:if test='state=="1"'>*/ %>
		                <tr>
		                   <s:if test='#stat.isEven()'>	
		                       <td class="record_biao3">${plattime}</td>
		                      <td class="record_biao3">￥${amt/100}</td>
		                      <td class="record_biao3">￥${fee/100}</td>
		                      <td class="record_biao3">
								<s:if test='type=="1"'>投注</s:if><s:elseif test='type=="2"'>银行卡充值</s:elseif><s:elseif test='type=="3"'>平台卡充值</s:elseif>
								<s:elseif test='type=="4"'>结算</s:elseif><s:elseif test='type=="5"'>提现</s:elseif><s:elseif test='type=="6"'>兑奖划款</s:elseif>
								<s:elseif test='type=="7"'>返款</s:elseif><s:elseif test='type=="8"'>追号套餐</s:elseif><s:elseif test='type=="9"'>大客户充值</s:elseif>
								<s:elseif test='type=="10"'>点卡充值</s:elseif><s:elseif test='type=="11"'>调账</s:elseif><s:elseif test='type=="12"'>第一次充值赠金额</s:elseif>
								<s:elseif test='type=="13"'>阶梯充值赠金额</s:elseif><s:elseif test='type=="14"'>用户注册彩金赠送</s:elseif><s:elseif test='type=="15"'>合买金额冻结</s:elseif>
								<s:elseif test='type=="16"'>合买金额解冻</s:elseif><s:elseif test='type=="17"'>合买金额返款</s:elseif><s:elseif test='type=="18"'>合买中奖划款</s:elseif>
								<s:elseif test='type=="20"'>追号定制金额冻结</s:elseif><s:elseif test='type=="23"'>赠送彩金</s:elseif><s:elseif test='type=="24"'>翼支付撤销扣款</s:elseif>
								<s:else>-</s:else>
							  </td>
		                      <td class="record_biao3">${id}</td>
		                      <td class="record_biao3">${memo}</td>
		                    </s:if>
		                    <s:else>
		                    <td class="record_biao2">${plattime}</td>
		                      <td class="record_biao2">￥${amt/100}</td>
		                      <td class="record_biao2">￥${fee/100}</td>
		                      <td class="record_biao2">
							  	<s:if test='type=="1"'>投注</s:if><s:elseif test='type=="2"'>银行卡充值</s:elseif><s:elseif test='type=="3"'>平台卡充值</s:elseif>
								<s:elseif test='type=="4"'>结算</s:elseif><s:elseif test='type=="5"'>提现</s:elseif><s:elseif test='type=="6"'>兑奖划款</s:elseif>
								<s:elseif test='type=="7"'>返款</s:elseif><s:elseif test='type=="8"'>追号套餐</s:elseif><s:elseif test='type=="9"'>大客户充值</s:elseif>
								<s:elseif test='type=="10"'>点卡充值</s:elseif><s:elseif test='type=="11"'>调账</s:elseif><s:elseif test='type=="12"'>第一次充值赠金额</s:elseif>
								<s:elseif test='type=="13"'>阶梯充值赠金额</s:elseif><s:elseif test='type=="14"'>用户注册彩金赠送</s:elseif><s:elseif test='type=="15"'>合买金额冻结</s:elseif>
								<s:elseif test='type=="16"'>合买金额解冻</s:elseif><s:elseif test='type=="17"'>合买金额返款</s:elseif><s:elseif test='type=="18"'>合买中奖划款</s:elseif>
								<s:elseif test='type=="20"'>追号定制金额冻结</s:elseif><s:elseif test='type=="23"'>赠送彩金</s:elseif><s:elseif test='type=="24"'>翼支付撤销扣款</s:elseif>
								<s:else>-</s:else>
							  </td>
		                      <td class="record_biao2">${id}</td>
		                      <td class="record_biao2">${memo}</td>
		                    </s:else>
		                </tr>
               		<%/* </s:if> */ %>
               </s:iterator>
               </s:else>
              </table>
           </div>
        
          <div class="page">
      ${pageHtml}
    </div>
    
           </form>
         <p class="cz_zhuming">
            注：<br/>
            1.如果您充值后，银行账户扣了款，3G彩票网没有为您加上，请及时与我们联系，我们将第一时间为您处理！<br/>
            2. 您可以查询您的账户最近3个月内的账户明细。<br/>
            3.如需要查询全部明细，或您有其他方面需求，请联系网站客服：400-665-1000

        </p>
    </div>
    