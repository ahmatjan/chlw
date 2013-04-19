<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!-- 如意彩频道页右侧查询10期开奖公告 -->

<div class="kjnumber">
<ul>
	<li class="kjqihao1">期号</li>
	<li class="kjqihao2">开奖号</li>
</ul>
 <s:iterator value="#request.arrWininfo" id="arrWininfo">
<ul>
	<li class="kjqihao3"><s:property value="id.batchcode"/>&nbsp;</li>
	<li class="kjqihao4"><span>&nbsp;
	 <!-- 大乐透  -->
	 <s:if test='#request.lotNo=="T01001"'>
	                 <font style="color:red">
					<s:property value="winbasecode.substring(0,2)"/>
					<s:property value="winbasecode.substring(2,4)"/>
					<s:property value="winbasecode.substring(4,6)"/>
					<s:property value="winbasecode.substring(6,8)"/>
					<s:property value="winbasecode.substring(8,10)"/>
					</font>|
					<font style="color:blue">
					<s:property value="winbasecode.substring(11,13)"/>
					<s:property value="winbasecode.substring(13,15)"/>
					</font>
				</s:if>
				 <!-- 福彩3D -->
				<s:elseif test='#request.lotNo=="F47103"'>
				<font style="color:red">
					<s:property value="winbasecode.substring(1,2)"/>
					<s:property value="winbasecode.substring(3,4)"/>
					<s:property value="winbasecode.substring(5,6)"/>
					</font>
				</s:elseif>
				<!-- 体彩排列三 -->
				<s:elseif test='#request.lotNo=="T01002"'>
				<font style="color:red">
					<s:property value="(winbasecode).substring(0,1)"/>
					<s:property value="(winbasecode).substring(1,2)"/>
					<s:property value="(winbasecode).substring(2,3)"/>
					</font>
				</s:elseif>
				<!-- 排列五 -->
				<s:elseif test='#request.lotNo=="T01011"'>
				<font style="color:red">
					<s:property value="(winbasecode).substring(0,1)"/>
					<s:property value="(winbasecode).substring(1,2)"/>
					<s:property value="(winbasecode).substring(2,3)"/>
					<s:property value="(winbasecode).substring(3,4)"/>
					<s:property value="(winbasecode).substring(4,5)"/>
					</font>
				</s:elseif>
				<!-- 七星彩 -->
				<s:elseif test='#request.lotNo=="T01009"'>
				<font style="color:red">
					<s:property value="(winbasecode).substring(0,1)"/>
					<s:property value="(winbasecode).substring(1,2)"/>
					<s:property value="(winbasecode).substring(2,3)"/>
					<s:property value="(winbasecode).substring(3,4)"/>
					<s:property value="(winbasecode).substring(4,5)"/>
					<s:property value="(winbasecode).substring(5,6)"/>
					<s:property value="(winbasecode).substring(6,7)"/>
					</font>
				</s:elseif>
				
				<!-- 双色球 -->
				<s:elseif test='#request.lotNo=="F47104"'>
				<font style="color:red">
					<s:property value="(winbasecode).substring(0,2)"/>
					<s:property value="(winbasecode).substring(2,4)"/>
					<s:property value="(winbasecode).substring(4,6)"/>
					<s:property value="(winbasecode).substring(6,8)"/>
					<s:property value="(winbasecode).substring(8,10)"/>
					<s:property value="(winbasecode).substring(10,12)"/></font>|
					<font style='color:blue'>
					<s:property value="winspecialcode"/>
					</font>
				
				</s:elseif>
				<!-- 七乐彩 -->
				<s:elseif test='#request.lotNo=="F47102"'>
				<font style="color:red">
					<s:property value="(winbasecode).substring(0,2)"/>
					<s:property value="(winbasecode).substring(2,4)"/>
					<s:property value="(winbasecode).substring(4,6)"/>
					<s:property value="(winbasecode).substring(6,8)"/>
					<s:property value="(winbasecode).substring(8,10)"/>
					<s:property value="(winbasecode).substring(10,12)"/>
					<s:property value="(winbasecode).substring(12,14)"/></font>|
					<font style='color:blue'>
					<s:property value="winspecialcode"/>
					</font>
				
				</s:elseif>
				</span>
				<s:if test='id.lotno=="T01007"'>
					<font class="red">				
					<s:property value="winbasecode.substring(0,1)"/>&nbsp;
					<s:property value="winbasecode.substring(1,2)"/>&nbsp;
					<s:property value="winbasecode.substring(2,3)"/>&nbsp;
					<s:property value="winbasecode.substring(3,4)"/>&nbsp;
					<s:property value="winbasecode.substring(4,5)"/>
					</font>
				</s:if>
		</li>
	</ul>
	
	<s:if test='id.lotno=="T01010"'>
		<s:property value="id.batchcode"/>
		<s:property value="winbasecode"/>
		
	</s:if>
	<s:if test='id.lotno=="T01012"'>
		<s:property value="id.batchcode"/>
		<s:property value="winbasecode"/>
		
	</s:if>
	</s:iterator>
</div>
