<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<table>
	<tr><td>彩种</td><td>期号</td><td>购买日期</td><td>开奖日期</td><td>注码</td></tr>
	<s:iterator value="#request.jsRen" status="sta">
		<tr>
		<td><s:if test='play_name=="F47104"||play_name=="B001"' >双色球</s:if>
		<s:if test='play_name=="F47103"||play_name=="D3"'>福彩3D</s:if>
		<s:if test='play_name=="F47102"||play_name=="QL730"' >七乐彩</s:if>
		<s:if test='play_name=="T01002"||play_name=="PL3_33"' >排列三</s:if>
		<s:if test='play_name=="T01001"||play_name=="DLT_23529"' >大乐透</s:if></td>
		
		<td><s:property value="batchcode"/></td>
		<td><s:property value="sell_datetime"/></td>
		<td><s:property value="cash_date_time"/></td>
		<td><s:property value="betCode"/></td>
		</tr>
	</s:iterator>
</table>