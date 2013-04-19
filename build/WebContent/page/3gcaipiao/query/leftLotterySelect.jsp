<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 3G彩票各采种左侧开奖公告 -->

<s:iterator value="#request.arrWininfo" id="arrWininfo">
<!-- ===============================双色球================================== --> 
<s:if test='id.lotno=="F47104"'>
	<table border="0" cellpadding="0" cellspacing="1">
		<tr>
            <td>期号：<span class="blue" id="tremDate"><s:property value="id.batchcode"/>&nbsp;</span> </td>
			<td>开奖日期：<span class="blue" id="openDate"><s:property value="opentime.substring(0,10)"/>&nbsp;</span></td>
		</tr>
		<tr>
			<td colspan="2">开奖号码：
            <span class="gonggaonum1">
            	<span id="red1">
            		<s:property value="winbasecode.substring(0,2)"/>&nbsp;
					<s:property value="winbasecode.substring(2,4)"/>&nbsp;
					<s:property value="winbasecode.substring(4,6)"/>&nbsp;
					<s:property value="winbasecode.substring(6,8)"/>&nbsp;
					<s:property value="winbasecode.substring(8,10)"/>&nbsp;
					<s:property value="winbasecode.substring(10,12)"/>&nbsp;
            	</span>
            </span><span class="fengexian">|</span>
				<span class="gonggaonum2"><span id="blue"><s:property value="winspecialcode"/>&nbsp;</span></span>
				
			</td>
		</tr>
        <tr>
          <td colspan="2">本期投注额：<span class="red" id="ssqdrawSaleCount"><s:property value="rtnMap.betTotalMoney"/>&nbsp;</span> 元</td>
          </tr>
		<tr>
          <td colspan="2">奖池基金：<span class="red" id="ssqdrawPrizePoolCount"><s:property value="rtnMap.progressive"/>&nbsp;</span> 元</td>
          </tr>
		<tr>
          	 <td>一等奖：<span id="count0" class="red"><s:property value="info.winnumber1"/>&nbsp;</span> 注</td>
          	<td> 奖金：<span id="bonus0" class="red"><s:property value="info.winmoney1"/>&nbsp;</span> 元</td>
          </tr>
		 <tr>
          <td >二等奖：<span id="count1" class="red"><s:property value="info.winnumber2"/>&nbsp;</span>注</td> 
			<td>奖金：<span id="bonus1" class="red"><s:property value="info.winmoney2"/>&nbsp;</span> 元</td>
         </tr>
		<tr class="gonggaoinfo1">
	          <td colspan="2"><a href="/include/kaijianggonggao.html?key=28&lotno=F47104" target="_blank">更多 &gt;&gt;</a></td>
	     </tr>
  </table>
</s:if>

<!-- ===============================3D================================== --> 
<s:if test='id.lotno=="F47103"'>
<table border="0" cellpadding="0" cellspacing="1">
      <tr>
         <td>期号：<span class="blue" id="tremDate"><s:property value="id.batchcode"/>&nbsp; </span></td>
		 <td>开奖日期：<span class="blue" id="openDate"><s:property value="opentime.substring(0,10)"/>&nbsp;</span></td>
	  </tr>
	<tr>
      <td colspan="2">
      	开奖号码：<span class="gonggaonum1">
	      	<span id="code1">&nbsp;
	      		<s:property value="winbasecode.substring(1,2)"/>
	      		<s:property value="winbasecode.substring(3,4)"/>
	      		<s:property value="winbasecode.substring(5,6)"/>
	      	</span>
      	</span>
      	</td>
    </tr>
	 <tr>
       <td colspan="2">本期投注额：<span class="red" id="threeddrawSaleCount"><s:property value="rtnMap.betTotalMoney"/>&nbsp; </span>元</td>
     </tr>	
      <s:iterator value="rtnMap.prizeInfo" id="prizeInfo">
	    <tr>
	      <td><s:property value="jianji"/>：<span id="count0" class="red"><s:property value="zhushu"/></span> </td>
	      <td>单注奖金：<span id="bonus0" class="red"><s:property value="money"/></span></td>
	    </tr>
	 </s:iterator>
	 <tr class="gonggaoinfo1">
          <td colspan="2"><a href="/include/kaijianggonggao.html?key=28&lotno=F47103" target="_blank">更多 &gt;&gt;</a></td>
     </tr>
</table>
</s:if>
<!-- ===============================七乐彩================================== --> 
<s:if test='id.lotno=="F47102"'>
<table border="0" cellpadding="0" cellspacing="1">
      <tr>
         <td>期号：<span class="blue" id="tremDate"><s:property value="id.batchcode"/>&nbsp;</span> </td>
		 <td>开奖日期：<span class="blue" id="openDate"><s:property value="opentime.substring(0,10)"/>&nbsp;</span></td>
	</tr>
	<tr>
      <td colspan="2">开奖号码：
      	<span class="gonggaonum1">
      		<span id="code1">
      			<s:property value="winbasecode.substring(0,2)"/>&nbsp;
				<s:property value="winbasecode.substring(2,4)"/>&nbsp;
				<s:property value="winbasecode.substring(4,6)"/>&nbsp;
				<s:property value="winbasecode.substring(6,8)"/>&nbsp;
				<s:property value="winbasecode.substring(8,10)"/>&nbsp;
				<s:property value="winbasecode.substring(10,12)"/>&nbsp;
				<s:property value="winbasecode.substring(12,14)"/>&nbsp;
      		</span>
      	</span><span class="fengexian">|</span>
      	<span class="gonggaonum2"><span id="blue"><s:property value="winspecialcode"/>&nbsp;</span></span>
      	</td>
    </tr>
     <tr>
       <td colspan="2">本期投注额：<span class="red" id="threeddrawSaleCount"> <s:property value="rtnMap.betTotalMoney"/>&nbsp;  </span> 元</td>
     </tr>
     <tr>
	   <td colspan="2">奖池：<span class="red" id="ssqdrawPrizePoolCount"><s:property value="rtnMap.progressive"/>&nbsp;</span> 元</td>
	 </tr>
	 <tr>
       	<td>一等奖：<span id="count0" class="red"><s:property value="info.winnumber1"/></span>注</td> 
       	<td> 奖金：<span id="bonus0" class="red"><s:property value="info.winmoney1"/></span> 元</td>
	 </tr>
	 <tr>
	 	<td >二等奖：<span id="count1" class="red"><s:property value="info.winnumber2"/></span>注</td> 
		<td>奖金：<span id="bonus1" class="red"><s:property value="info.winmoney2"/></span> 元</td>
	 </tr>
	<tr class="gonggaoinfo1">
            <td colspan="2"><a href="/include/kaijianggonggao.html?key=28&lotno=F47102" target="_blank">更多 &gt;&gt;</a></td>
    </tr>
	
</table>
</s:if>

<!-- ===============================排列三================================== --> 
<s:if test='id.lotno=="T01002"'>
<table border="0" cellpadding="0" cellspacing="1">
     <tr>
         <td>期号：<span class="blue" id="tremDate"><s:property value="id.batchcode"/></span></td>
		 <td>开奖日期：<span class="blue" id="openDate"><s:property value="opentime.substring(0,10)"/></span></td>
	</tr>
	<tr>
      <td colspan="2">开奖号码：
      	<span class="gonggaonum1">
      		<span id="code1">
      			<s:property value="winbasecode.substring(0,1)"/>&nbsp;
      			<s:property value="winbasecode.substring(1,2)"/>&nbsp;
      			<s:property value="winbasecode.substring(2,3)"/>
      		</span>
      	</span>
      </td>
    </tr>
	<tr>
       <td colspan="2">本期投注额：<span class="red" id="threeddrawSaleCount"><s:property value="rtnMap.betTotalMoney"/></span>元</td>
     </tr>
     <s:iterator value="rtnMap.prizeInfo" id="prizeInfo">
	     <tr>
	       <td><s:property value="jianji"/>：<span id="count0" class="red"><s:property value="zhushu.split('注')[0]"/></span>注 </td>
	       <td>单注奖金：<span id="bonus0" class="red"><s:property value="money.split('元')[0]"/></span>元</td>
	    </tr>
    </s:iterator>
	<tr class="gonggaoinfo1">
        <td colspan="2"><a href="/include/kaijianggonggao.html?key=28&lotno=T01002" target="_blank">更多 &gt;&gt;</a></td>
    </tr>
 </table>
</s:if>

<!-- ===============================大乐透================================== --> 
<s:if test='id.lotno=="T01001"'>
<table border="0" cellpadding="0" cellspacing="1">
     <tr>
         <td>期号：<span class="blue" id="tremDate"><s:property value="id.batchcode"/></span></td>
		 <td>开奖日期：<span class="blue" id="openDate"><s:property value="opentime.substring(0,10)"/></span></td>
	</tr>
	<tr>
      <td colspan="2">开奖号码：
      	<span class="gonggaonum1"><span id="code1">
			<s:property value="winbasecode.substring(0,2)"/>&nbsp;
			<s:property value="winbasecode.substring(2,4)"/>&nbsp;
			<s:property value="winbasecode.substring(4,6)"/>&nbsp;
			<s:property value="winbasecode.substring(6,8)"/>&nbsp;
			<s:property value="winbasecode.substring(8,10)"/>&nbsp;
		</span>
		</span><span class="fengexian">|</span>
		<span class="gonggaonum2"><span id="blue">
		<s:property value="winbasecode.substring(11,13)"/>&nbsp;
		<s:property value="winbasecode.substring(13,15)"/>&nbsp;</span>
		</span>
      </td>
    </tr>
	<tr>
	 <td colspan="2">本期投注额：<span class="red" id="threeddrawSaleCount"><s:property value="rtnMap.betTotalMoney.split('；')[0]"/></span> 元</td>
    </tr>
     <tr>
        <td colspan="2">奖池基金：<span class="red" id="qlcdrawPrizePoolCount"><s:property value="rtnMap.progressive"/></span>元</td>
     </tr>
     <s:iterator value="rtnMap.prizeInfo" id="prizeInfo" status="status" begin="0" end="1">  
	     <tr>
		<td><s:property value="jianji"/>
		 <s:if test="status.index==0">&nbsp;</s:if><s:else><s:property value="zhuijia.substring(0,2)"/></s:else>：
		<span id="count0" class="red"><s:property value="zhushu.split('注')[0]"/></span>注</td> 
	     <td>奖金：<span id="bonus0" class="red"><s:property value="money.split('元')[0]"/></span>元</td>
		</tr>
	</s:iterator>
	<tr class="gonggaoinfo1">
       <td colspan="2"><a href="/include/kaijianggonggao.html?key=28&lotno=T01001" target="_blank">更多 &gt;&gt;</a></td>
    </tr>
 </table>
</s:if>
    
 <!-- ===============================排列五================================== --> 
<s:if test='id.lotno=="T01011"'>
<table border="0" cellpadding="0" cellspacing="1">
     <tr>
         <td>期号：<span class="blue" id="tremDate"><s:property value="id.batchcode"/></span></td>
		 <td>开奖日期：<span class="blue" id="openDate"><s:property value="opentime.substring(0,10)"/></span></td>
	</tr>
	<tr>
      <td colspan="2">开奖号码：
      	<span class="gonggaonum1">
      		<span id="code1">
      			<s:property value="winbasecode.substring(0,1)"/>&nbsp;
      			<s:property value="winbasecode.substring(1,2)"/>&nbsp;
      			<s:property value="winbasecode.substring(2,3)"/>&nbsp;
      			<s:property value="winbasecode.substring(3,4)"/>&nbsp;
      			<s:property value="winbasecode.substring(4,5)"/>
      		</span>
      	</span>
      </td>
    </tr>
	<tr>
       <td colspan="2">本期销量：<span class="red" id="threeddrawSaleCount"><s:property value="rtnMap.betTotalMoney"/></span>元</td>
     </tr>
     <!--  <tr>
       <td colspan="2">本期投注额：<span class="red" id="threeddrawSaleCount">暂无</span>元</td>
     </tr>-->
     <s:iterator value="rtnMap.prizeInfo" id="prizeInfo">
     	 <tr>
	       <td><s:property value="jianji"/>：<span id="count0" class="red"><s:property value="zhushu.split('注')[0]"/></span> 注 </td>
	       <td>单注奖金：<span id="bonus0" class="red"><s:property value="money.split('元')[0]"/></span>元</td>
	    </tr>
    </s:iterator>
	<tr class="gonggaoinfo1">
        <td colspan="2"><a href="/include/kaijianggonggao.html?key=28&lotno=T01011" target="_blank">更多 &gt;&gt;</a></td>
    </tr>
 </table>
</s:if> 

 <!-- ===============================七星彩================================== --> 
<s:if test='id.lotno=="T01009"'>
	<table border="0" cellpadding="0" cellspacing="1">
		<tr>
            <td>期号：<span class="blue" id="tremDate"><s:property value="id.batchcode"/></span> </td>
			<td>开奖日期：<span class="blue" id="openDate"><s:property value="opentime.substring(0,10)"/></span></td>
		</tr>
		<tr>
			<td colspan="2">开奖号码：
            <span class="gonggaonum1">
            	<span id="red1">
            		<s:property value="winbasecode.substring(0,1)"/>&nbsp;
	      			<s:property value="winbasecode.substring(1,2)"/>&nbsp;
	      			<s:property value="winbasecode.substring(2,3)"/>&nbsp;
	      			<s:property value="winbasecode.substring(3,4)"/>&nbsp;
	      			<s:property value="winbasecode.substring(4,5)"/>&nbsp;
	      			<s:property value="winbasecode.substring(5,6)"/>&nbsp;
	      			<s:property value="winbasecode.substring(6,7)"/>
            	</span>
            </span>
			</td>
		</tr>
        <tr>
          <td colspan="2">本期投注额：<span class="red" id="ssqdrawSaleCount"><s:property value="rtnMap.betTotalMoney"/></span> 元</td>
          </tr>
		<tr>
          <td colspan="2">奖池基金：<span class="red" id="ssqdrawPrizePoolCount"><s:property value="rtnMap.progressive"/></span> 元</td>
          </tr>
          <s:iterator value="rtnMap.prizeInfo" id="prizeInfo" status="status" begin="0" end="1">
		  <tr>
          	 <td><s:property value="jianji"/>：<span id="count0" class="red"><s:property value="zhushu.split('注')[0]"/></span>注</td>
          	<td> 奖金：<span id="bonus0" class="red"><s:property value="money.split('元')[0]"/></span>元</td>
          </tr>
          </s:iterator>
		 
		<tr class="gonggaoinfo1">
	          <td colspan="2"><a href="/include/kaijianggonggao.html?key=28&lotno=T01009" target="_blank">更多 &gt;&gt;</a></td>
	     </tr>
  </table>
</s:if>
<s:if test='id.lotno=="T01007"'>
<table border="0" cellpadding="0" cellspacing="1">
		<tbody><tr>
		<script>compare();</script>
            <td>期号：<span class="blue" id="tremDate">
            <input id="date" value='<s:property value="id.batchcode"/>' type="hidden"/>
            <s:property value="id.batchcode"/>
            </span> </td>
		</tr>
		<tr>
			<td>开奖日期：<span class="blue" id="openDate"><s:property value="opentime"/></span></td>
		</tr>
		<tr>
			<td>开奖号码：
            <span class="gonggaonum1">
            	<span id="lotteryCode"> 
            	    <s:property value="winbasecode.substring(0,1)"/>&nbsp;
	      			<s:property value="winbasecode.substring(1,2)"/>&nbsp;
	      			<s:property value="winbasecode.substring(2,3)"/>&nbsp;
	      			<s:property value="winbasecode.substring(3,4)"/>&nbsp;
	      			<s:property value="winbasecode.substring(4,5)"/>
            	</span>
            </span>
			</td>
		</tr>
  </tbody></table>
</s:if>
</s:iterator>

