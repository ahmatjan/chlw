<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@taglib prefix="s" uri="/struts-tags"%>

	<div class="user_head">
		<div class="user_zi">账户明细</div>
	</div>
	<form action="/chlw/user/selectAll!accountDetail" method="get" onsubmit="return reHtmlInParameters('',this.startDate.value,this.stopDate.value)">
		<div class="user_content">
			  <div class="news_content">
				<table width="800" height="78" border="0" cellpadding="0" cellspacing="0">
					  <tr>
						<td class="news_biao5">可投注金额</td>
					    <td class="news_biao5">可提现金额</td>
					    <td class="news_biao5">冻结金额</td>
					  </tr>
					  <tr>
						<td class="news_biao3">${deposit_amount}</td>
					    <td class="news_biao3">${valid_amount}</td>
					    <td class="news_biao3">${freeze_amout}</td>
					  </tr>
				</table>
		  </div>
		  <div class="account_month"><span>账户收支明细</span><span>开始日期：<input type="text" id="startDate" name="startDate" value="<s:property value="#parameters.startDate"/>" onFocus="WdatePicker({startDate:'2011-01-01',alwaysUseStartDate:true})"/></span>
			<span>截止日期：<input type="text" id="stopDate" name="endDate" value="<s:property value="#parameters.stopDate"/>" onFocus="WdatePicker()"/></span>
			<span><input type="submit" class="chx_btn1" value=""/></span></div>
		  <div class="account_content"><table width="800" height="146" border="0" cellpadding="0" cellspacing="0">
		      <tr>
		        <td width="74" class="record_biao1">次数</td>
		        <td width="154" class="record_biao1">时间</td>
		        <td width="143" class="record_biao1">交易类型</td>
		        <td width="130" class="record_biao1">变动金额（元）</td>
		        <td width="151" class="record_biao1">可提现金额（元）</td>
		        <td width="148" class="record_biao1">总余额（元）</td>
	          </tr>
		<s:iterator id="account"  value="#request.list"  status="stat">
			  <tr>
			  <s:if test='#stat.isEven()'>	
				  	<td class="record_biao3">${index.index+1}</td>
					<td class="record_biao3">${plattime}</td>
					<td class="record_biao3">${memo}</td>
					<td class="record_biao3">${amt/100}</td>
					<td class="record_biao3">${drawamtBalance/100}</td>
					<td class="record_biao3">${balance/100}</td>
				</s:if>
				<s:else>
					<td class="record_biao2">${index.index+1}</td>
					<td class="record_biao2">${plattime}</td>
					<td class="record_biao2">${memo}</td>
					<td class="record_biao2">${amt/100}</td>
					<td class="record_biao2">${drawamtBalance/100}</td>
					<td class="record_biao2">${balance/100}</td>
				</s:else>
			  </tr>
		 </s:iterator>
		</table>
			
		</div>
	  </div>
	  <div class="account_page">
	  	${pageHtml}
	  </div>
	 </form>
