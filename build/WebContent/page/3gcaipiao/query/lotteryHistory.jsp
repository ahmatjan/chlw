<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<div class="guizeRTop1">
	<span>往期开奖</span>
</div>
<div class="oldLottery">
<table width="630" border="0" cellspacing="0" cellpadding="0">
<tbody>

<!-- 3G彩票网往期开奖 -->
<s:iterator value="#request.arrWininfo" id="arrWininfo" status="status" begin="0" >
<s:if test='id.lotno=="T01007"'>
   <s:if test="status.index==0">
	    <tr height="26">
	      <td bgcolor="#FFEEEC" width="10%"><strong>期次</strong></td>
	      <td bgcolor="#FFEEEC" width="25%"><strong>开奖号码</strong></td>
	      <td bgcolor="#FFEEEC" width="15%"><strong>开奖日期</strong></td>
	    </tr>
	    </s:if><s:else>
	    <tr height="26">
     		<td><s:property value="id.batchcode"/>&nbsp;</td>
			<td>
			<span class="newRed">
				<s:property value="winbasecode.substring(0,1)"/>
				<s:property value="winbasecode.substring(1,2)"/>
				<s:property value="winbasecode.substring(2,3)"/>
				<s:property value="winbasecode.substring(3,4)"/>
				<s:property value="winbasecode.substring(4,5)"/>
			</span>
			</td>
			<td><s:property value="opentime.substring(0,10)"/>&nbsp;</td>
		 </tr>
		 </s:else>
</s:if><s:else>
	
	    <s:if test="status.index==0">
	    <tr height="26">
	      <td bgcolor="#FFEEEC" width="10%"><strong>期次</strong></td>
	      <td bgcolor="#FFEEEC" width="25%"><strong>开奖号码</strong></td>
	      <td bgcolor="#FFEEEC" width="15%"><strong>开奖日期</strong></td>
	      <td bgcolor="#FFEEEC" width="20%"><strong>总投注金额（元）</strong></td>
	      <td bgcolor="#FFEEEC" width="20%"><strong>头奖单注奖金（元）</strong></td>
	      <td bgcolor="#FFEEEC" width="10%"><strong>头奖数</strong></td>
	    </tr>
	    </s:if><s:else>
		  <tr height="26">
     		<td><s:property value="id.batchcode"/>&nbsp;</td>
			<td><span class="newRed">
				<s:if test='id.lotno=="T01001"'>
					<s:property value="winbasecode.substring(0,2)"/><s:property value="winbasecode.substring(2,4)"/>
					<s:property value="winbasecode.substring(4,6)"/><s:property value="winbasecode.substring(6,8)"/>
					<s:property value="winbasecode.substring(8,10)"/>+
					<font style="color:blue"><s:property value="winbasecode.substring(11,13)"/><s:property value="winbasecode.substring(13,15)"/></font>
				</s:if>
				
				<s:elseif test='id.lotno=="F47104"'>
					<s:property value="winbasecode.substring(0,2)"/><s:property value="winbasecode.substring(2,4)"/>
					<s:property value="winbasecode.substring(4,6)"/><s:property value="winbasecode.substring(6,8)"/>
					<s:property value="winbasecode.substring(8,10)"/><s:property value="winbasecode.substring(10,12)"/>+
					<font style="color:blue"><s:property value="winspecialcode"/></font>
				</s:elseif>
				
				<s:elseif test='id.lotno=="F47102"'>
					<s:property value="winbasecode.substring(0,2)"/><s:property value="winbasecode.substring(2,4)"/>
					<s:property value="winbasecode.substring(4,6)"/><s:property value="winbasecode.substring(6,8)"/>
					<s:property value="winbasecode.substring(8,10)"/><s:property value="winbasecode.substring(10,12)"/>
					<s:property value="winbasecode.substring(12,14)"/>+
					<font style="color:blue"><s:property value="winspecialcode"/></font>
				</s:elseif>
				
				<s:elseif test='id.lotno=="F47103"'>
					<s:property value="winbasecode.substring(1,2)"/>
					<s:property value="winbasecode.substring(3,4)"/>
					<s:property value="winbasecode.substring(5,6)"/>
				</s:elseif>
				
				<s:elseif test='id.lotno=="T01002"'>
					<s:property value="winbasecode.substring(0,1)"/>
					<s:property value="winbasecode.substring(1,2)"/>
					<s:property value="winbasecode.substring(2,3)"/>
				</s:elseif>
				
				<!-- 排列五、七星彩 -->
				<s:elseif test='id.lotno=="T01011"'>
					<s:property value="winbasecode.substring(0,1)"/>
					<s:property value="winbasecode.substring(1,2)"/>
					<s:property value="winbasecode.substring(2,3)"/>
					<s:property value="winbasecode.substring(3,4)"/>
					<s:property value="winbasecode.substring(4,5)"/>
				</s:elseif>
				<s:elseif test='id.lotno=="T01009"'>
					<s:property value="winbasecode.substring(0,1)"/>
					<s:property value="winbasecode.substring(1,2)"/>
					<s:property value="winbasecode.substring(2,3)"/>
					<s:property value="winbasecode.substring(3,4)"/>
					<s:property value="winbasecode.substring(4,5)"/>
					<s:property value="winbasecode.substring(5,6)"/>
					<s:property value="winbasecode.substring(6,7)"/>
				</s:elseif>

				</span>
			</td>
			<td><s:property value="rtnMap.lotteryTime.substring(0,10)"/>&nbsp;</td>
			<td><span class="newJuhuang"><s:property value="rtnMap.betTotalMoney"/>&nbsp;</span></td>
			<s:iterator value="rtnMap.prizeInfo" id="prizeInfo" status="status" begin="0" end="0"> 
				<td><span class="newJuhuang"><s:property value="money"/>&nbsp;</span></td>
				<td><span class="newJuhuang"><s:property value="zhushu"/>&nbsp;</span></td>
			</s:iterator>
		  </tr>
		  </s:else>
</s:else>
</s:iterator>
 </tbody>
	</table>
	</div>