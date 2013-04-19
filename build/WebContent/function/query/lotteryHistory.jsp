<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
	<div class="guizeRTop1">
		<span>往期开奖</span>
	</div>
	<s:if test='#request.lotNo != "T01007"'>
	<div class="oldLottery">
	  <table width="630" border="0" cellspacing="0" cellpadding="0">
	    <tbody><tr height="26">
	      <td bgcolor="#FFEEEC" width="10%"><strong>期次</strong></td>
	      <td bgcolor="#FFEEEC" width="25%"><strong>开奖号码</strong></td>
	      <td bgcolor="#FFEEEC" width="15%"><strong>开奖日期</strong></td>
	      <td bgcolor="#FFEEEC" width="20%"><strong>总投注金额（元）</strong></td>
	      <td bgcolor="#FFEEEC" width="20%"><strong>头奖单注奖金（元）</strong></td>
	      <td bgcolor="#FFEEEC" width="10%"><strong>头奖数</strong></td>
	    </tr>
	  <s:iterator id="list" value="#request.jaToPage" >
		  <tr height="26">
     		<td><s:property value="term_code"/>&nbsp;</td>
			<td><span class="newRed">
				<s:if test='#request.lotNo=="T01001"'>
					<s:property value="jaRed.substring(0,2)"/>
					<s:property value="jaRed.substring(2,4)"/>
					<s:property value="jaRed.substring(4,6)"/>
					<s:property value="jaRed.substring(6,8)"/>
					<s:property value="jaRed.substring(8,10)"/>+
					<font style="color:blue">
						<s:property value="jaRed.substring(10,12)"/>
						<s:property value="jaRed.substring(12,14)"/></font>
				</s:if>
				<s:elseif test='#request.lotNo=="F47104"||#request.lotNo=="F47102"'>
					<s:property value="#request.list.jaRed"/>+
					<font style="color:blue"><s:property value="win_special_code"/></font>
				</s:elseif>
				<s:elseif test='#request.lotNo=="F47103"'>
					<s:property value="(win_base_code).substring(1,2)"/>
					<s:property value="(win_base_code).substring(3,4)"/>
					<s:property value="(win_base_code).substring(5,6)"/>
				</s:elseif>
				<s:elseif test='#request.lotNo=="T01002"'>
					<s:property value="(win_base_code).substring(0,1)"/>
					<s:property value="(win_base_code).substring(1,2)"/>
					<s:property value="(win_base_code).substring(2,3)"/>
				</s:elseif>
				
				<!-- 排列五、七星彩 -->
				<s:elseif test='#request.lotNo=="T01011"'>
					<s:property value="(win_base_code).substring(0,1)"/>
					<s:property value="(win_base_code).substring(1,2)"/>
					<s:property value="(win_base_code).substring(2,3)"/>
					<s:property value="(win_base_code).substring(3,4)"/>
					<s:property value="(win_base_code).substring(4,5)"/>
				</s:elseif>
				<s:elseif test='#request.lotNo=="T01009"'>
					<s:property value="(win_base_code).substring(0,1)"/>
					<s:property value="(win_base_code).substring(1,2)"/>
					<s:property value="(win_base_code).substring(2,3)"/>
					<s:property value="(win_base_code).substring(3,4)"/>
					<s:property value="(win_base_code).substring(4,5)"/>
					<s:property value="(win_base_code).substring(5,6)"/>
					<s:property value="(win_base_code).substring(6,7)"/>
				</s:elseif>

				</span>
			</td>
			<td><s:property value="(#request.list.Begin_time).substring(0,10)"/>&nbsp;</td>
			<td><span class="newJuhuang"><s:property value="retMap.betTotalMoney"/>&nbsp;</span></td>
			<td><span class="newJuhuang"><s:property value="retMap.money_one"/>&nbsp;</span></td>
			<td><span class="newJuhuang"><s:property value="retMap.zhushu_one"/>&nbsp;</span></td>
		  </tr>
	 </s:iterator>
	 </tbody>
	</table>
</div>
</s:if>
<s:elseif test='#request.lotNo=="T01007"'>
<div class="oldLottery">
	  <table width="630" border="0" cellspacing="0" cellpadding="0">
	    <tbody><tr height="26">
	      <td bgcolor="#FFEEEC" width="10%"><strong>期次</strong></td>
	      <td bgcolor="#FFEEEC" width="25%"><strong>开奖号码</strong></td>
	      <td bgcolor="#FFEEEC" width="15%"><strong>开奖日期</strong></td>
	    </tr>
	    <s:iterator id="list" value="#request.jaToPage" >
		  <tr height="26">
     		<td><s:property value="term_code"/>&nbsp;</td>
			<td>
			<span class="newRed">
				<s:property value="(win_base_code).substring(0,1)"/>
				<s:property value="(win_base_code).substring(1,2)"/>
				<s:property value="(win_base_code).substring(2,3)"/>
				<s:property value="(win_base_code).substring(3,4)"/>
				<s:property value="(win_base_code).substring(4,5)"/>
			</span>
			</td>
			<td><s:property value="(#request.list.Begin_time).substring(0,10)"/>&nbsp;</td>
		  </tr>
	 </s:iterator>
	 </tbody>
	</table>
</div>
</s:elseif>