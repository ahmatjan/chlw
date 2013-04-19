<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!-- 3G彩票网左侧8条开奖信息 -->
<table width="290" border="0" cellpadding="0" cellspacing="1">
<s:iterator value="#request.arrWininfo" id="arrWininfo" status="status">
<!-- 时时彩 -->
<s:if test='id.lotno=="T01007"'>
   <s:if test="status.index==0">
	<tr class="hisnav1">
		<td width="30%">期号</td>
		<td width="30%">时间</td>
		<td width="40%">开奖号码</td>
	</tr>
	</s:if><s:elseif test="status.last">
		<tr>
			 <td colspan="3" class="blue"><a href="/include/kaijianggonggao.html?key=46&lotno=T01007" target="_blank"><span class="gengduo">更多</span></a></td>
		</tr>
	</s:elseif><s:else>
	  <tr>
		<td><span id="termDate0"><s:property value="id.batchcode"/></span></td>
		<td><span id="termDate"><s:property value="opentime"/></span></td>
		<td class="red">
			<span id="redBall0">				
			    <s:property value="winbasecode.substring(0,1)"/>&nbsp;
     			<s:property value="winbasecode.substring(1,2)"/>&nbsp;
     			<s:property value="winbasecode.substring(2,3)"/>&nbsp;
     			<s:property value="winbasecode.substring(3,4)"/>&nbsp;
     			<s:property value="winbasecode.substring(4,5)"/>
			</span>
		</td>
	</tr>
	</s:else>
	
</s:if><s:else>
	<s:if test="status.index==0">
	 	<tr class="hisnav1"><td>期号</td><td>开奖号码</td></tr>
	</s:if><s:else>
		<tr>
			<td><span id="termDate0"><s:property value="id.batchcode"/>&nbsp;</span></td>
       		<td>
				<!-- 3D -->
				<s:if test='id.lotno=="F47103"'>
					<span class="red" id="redBall0">
					<s:property value="winbasecode.substring(1,2)"/>&nbsp;
					<s:property value="winbasecode.substring(3,4)"/>&nbsp;
					<s:property value="winbasecode.substring(5,6)"/></span>				
				</s:if>
				<!-- 排列三 -->
				<s:elseif test='id.lotno=="T01002"'>
					<span class="red" id="redBall0">
					<s:property value="winbasecode.substring(0,1)"/>&nbsp;
					<s:property value="winbasecode.substring(1,2)"/>&nbsp;
					<s:property value="winbasecode.substring(2,3)"/></span>
				</s:elseif>
				<!-- 排列五 -->
				<s:elseif test='id.lotno=="T01011"'>
				 <span class="red" id="redBall0">
					<s:property value="winbasecode.substring(0,1)"/>&nbsp;
					<s:property value="winbasecode.substring(1,2)"/>&nbsp;
					<s:property value="winbasecode.substring(2,3)"/>&nbsp;
					<s:property value="winbasecode.substring(3,4)"/>&nbsp;
					<s:property value="winbasecode.substring(4,5)"/></span>
				</s:elseif>
				<!-- 七星彩 -->
				<s:elseif test='id.lotno=="T01009"'>
					<span  class="red" id="redBall0">
					<s:property value="winbasecode.substring(0,1)"/>&nbsp;
					<s:property value="winbasecode.substring(1,2)"/>&nbsp;
					<s:property value="winbasecode.substring(2,3)"/>&nbsp;
					<s:property value="winbasecode.substring(3,4)"/>&nbsp;
					<s:property value="winbasecode.substring(4,5)"/>&nbsp;
					<s:property value="winbasecode.substring(5,6)"/>&nbsp;
					<s:property value="winbasecode.substring(6,7)"/></span>
				</s:elseif>
				<!-- 双色球 -->
				<s:elseif test='id.lotno=="F47104"'>
					<span class="red" id="redBall0">
						<s:property value="winbasecode.substring(0,2)"/>&nbsp;
						<s:property value="winbasecode.substring(2,4)"/>&nbsp;
						<s:property value="winbasecode.substring(4,6)"/>&nbsp;
						<s:property value="winbasecode.substring(6,8)"/>&nbsp;
						<s:property value="winbasecode.substring(8,10)"/>&nbsp;
						<s:property value="winbasecode.substring(10,12)"/>&nbsp;
					</span>|
					<span class="blue" id="blueBall0"><s:property value="winspecialcode"/>&nbsp;</span>
				</s:elseif>
				<!-- 七乐彩 -->
				<s:elseif test='id.lotno=="F47102"'>
					<span  class="red" id="redBall0">
					<s:property value="winbasecode.substring(0,2)"/>&nbsp;
					<s:property value="winbasecode.substring(2,4)"/>&nbsp;
					<s:property value="winbasecode.substring(4,6)"/>&nbsp;
					<s:property value="winbasecode.substring(6,8)"/>&nbsp;
					<s:property value="winbasecode.substring(8,10)"/>&nbsp;
					<s:property value="winbasecode.substring(10,12)"/>&nbsp;
					<s:property value="winbasecode.substring(12,14)"/>&nbsp;</span>|
					<span class="blue" id="blueBall0"><s:property value="winspecialcode"/>&nbsp;</span>
				</s:elseif>
				<!-- 大乐透 -->
				<s:elseif test='id.lotno=="T01001"'>
				<span class="red" id="redBall0">
					<s:property value="winbasecode.substring(0,2)"/>&nbsp;
					<s:property value="winbasecode.substring(2,4)"/>&nbsp;
					<s:property value="winbasecode.substring(4,6)"/>&nbsp;
					<s:property value="winbasecode.substring(6,8)"/>&nbsp;
					<s:property value="winbasecode.substring(8,10)"/>&nbsp;</span>|
					<span class="blue" id="blueBall0">
					<s:property value="winbasecode.substring(11,13)"/>&nbsp;
					<s:property value="winbasecode.substring(13,15)"/>&nbsp;</span>
				</s:elseif>
			  </td>
			</tr>
		</s:else>	
	</s:else>	
</s:iterator>
</table>