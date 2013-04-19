<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>



<form id="subForm" action="#" method="post" onsubmit="reHtmlInParameters('<s:property value="#request.lotNo" />','','','stopLine='+this.stopLine.value);return false;">
	<input type="hidden" id="lotNo" name="lotNo" value="<s:property value="#request.lotNo" />"/>
	<div class="kjhm">
			<span class="kjhm_head">
			<s:if test='#request.lotNo=="F47104"||#request.lotNo=="B001"' >双色球</s:if>
					<s:if test='#request.lotNo=="F47103"||#request.lotNo=="D3"'>福彩3D</s:if>
					<s:if test='#request.lotNo=="F47102"||#request.lotNo=="QL730"' >七乐彩</s:if>
					<s:if test='#request.lotNo=="T01002"||#request.lotNo=="PL3_33"' >排列三</s:if>
					<s:if test='#request.lotNo=="T01001"||#request.lotNo=="DLT_23529"' >大乐透</s:if>历史开奖号码</span>
					<span class="kjhm_message"><s:if test='#request.lotNo=="F47104"||#request.lotNo=="B001"' >双色球</s:if>
					<s:if test='#request.lotNo=="F47103"||#request.lotNo=="D3"'>福彩3D</s:if>
					<s:if test='#request.lotNo=="F47102"||#request.lotNo=="QL730"' >七乐彩</s:if>
					<s:if test='#request.lotNo=="T01002"||#request.lotNo=="PL3_33"' >排列三</s:if>
					<s:if test='#request.lotNo=="T01001"||#request.lotNo=="DLT_23529"' >大乐透</s:if>历史开奖信息：</span>
	
					<span><input type="button" value="" class="tijiao10" onclick="reHtmlInParameters('<s:property value="#request.lotNo" />','','','stopLine=10')"/></span>
					<span><input type="button" value="" class="tijiao30" onclick="reHtmlInParameters('<s:property value="#request.lotNo" />','','','stopLine=30')"/></span>
					<span><input type="button" value="" class="tijiao50" onclick="reHtmlInParameters('<s:property value="#request.lotNo" />','','','stopLine=50')"/></span>
					<span><input class="kjin" id="stopLine" name="stopLine" type="text" value="" />
					<input class="chaxun_btn" type="submit" value="" /></span>

	  </div>
		<div>
			<table width="832" height="" border="0" cellpadding="0" cellspacing="0">
				  <tr>
					<td class="kjbox" width="76" height="100" rowspan="2">期数</td>
					<td class="kjbox" width="104" rowspan="2">中奖号码</td>
					<td class="kjbox" width="127" rowspan="2">总销售额（元）</td>
					<td class="kjbox" colspan="2">一等奖</td>
					<td class="kjbox" colspan="2">二等奖</td>
					<td class="kjbox" colspan="2">三等奖</td>
					<td class="kjbox" width="106" rowspan="2">开奖日期</td>
				  </tr>
				  <tr class="kjbox">
					<td class="kjbox" width="74">注数</td>
					<td class="kjbox" width="77">金额（元）</td>
					<td class="kjbox" width="57">注数</td>
					<td class="kjbox" width="77">金额（元）</td>
					<td class="kjbox" width="55">注数</td>
					<td class="kjbox" width="77">金额（元）</td>
				  </tr>
			  <s:iterator value="#request.jaToPage" >
				  <tr>
					<td class="kjbox2"><s:property value="term_code"/></td>
					<td class="kjbox2"><s:property value="win_base_code"/></td>
					<td class="kjbox2"><s:property value="valid_sell_amount/100"/></td>
					<td class="kjbox2"><s:property value="win_num1"/></td>
					<td class="kjbox2"><s:property value="win_money1/100"/></td>
					<td class="kjbox2"><s:property value="win_num2"/></td>
					<td class="kjbox2"><s:property value="win_money2/100"/></td>
					<td class="kjbox2"><s:property value="win_num3"/></td>
					<td class="kjbox2"><s:property value="win_money3/100"/></td>
					<td class="kjbox2">后台无返回数据</td>
				  </tr>
			 </s:iterator>
		</table>
		<div>${message}</div>
	</div>
	<div class="account_page">
	  	${pageHtml}
	</div>
</form>
