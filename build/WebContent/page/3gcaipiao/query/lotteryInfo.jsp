<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!-- 3G彩票网开奖详情 -->

<s:iterator value="#request.arrWininfo" id="arrWininfo">
<s:if test='id.lotno=="F47104"'>
	<div class="guizeRTop">
		双色球&nbsp;&nbsp;&nbsp;开奖详情
	</div>
	<div class="kaiJiangContent">
		<div class="kaiJiangBox1">第<span name="ssqtermDate" id="ssqtermDate"><s:property value="id.batchcode"/></span>期
		&nbsp;&nbsp;&nbsp;&nbsp;开奖日期：<span id="ssqdrawOpenDate"><s:property value="opentime.substring(0,10)"/>&nbsp;21:30:00</span></div>
		<div class="kaiJiangBox1">
	          	<div class="redballa"><span  id="ssqcode1"><s:property value="winbasecode.substring(0,2)"/></span></div>
	          	<div class="redballa"><span  id="ssqcode2"><s:property value="winbasecode.substring(2,4)"/></span></div>
	          	<div class="redballa"><span  id="ssqcode3"><s:property value="winbasecode.substring(4,6)"/></span></div>
	          	<div class="redballa"><span  id="ssqcode3"><s:property value="winbasecode.substring(6,8)"/></span></div>
			<div class="redballa"><span  id="ssqcode3"><s:property value="winbasecode.substring(8,10)"/></span></div>
			<div class="redballa"><span  id="ssqcode3"><s:property value="winbasecode.substring(10,12)"/></span></div>
			<div class="blueballa"><span  id="ssqbluecode"><s:property value="winspecialcode"/></span></div>
		 </div>
	<div class="kaiJiangBox1">本期全国销售总额：<span class="redb1" id="ssqdrawSaleCount"><s:property value="rtnMap.betTotalMoney"/></span>元
		&nbsp;&nbsp;奖池累计金额：<span class="redb1" id="ssqdrawPrizePoolCount"><s:property value="rtnMap.progressive"/></span>元
	</div>	
	<div class="zhongJiangDetail">
	  <table width="530" border="0" cellspacing="0" cellpadding="0">
	    <tr height="24">
	      <td bgcolor="#FF4A01"><strong class="newWhite">奖等</strong></td>
	      <td bgcolor="#FF4A01"><strong class="newWhite">全国中奖注数</strong></td>
	      <td bgcolor="#FF4A01"><strong class="newWhite">单注奖金</strong></td>
	    </tr>
	    <tr height="24">
	      <td bgcolor="#FEFBF2"><span id="prizeName0">一等奖</span></td>
	      <td bgcolor="#FEFBF2"><span id="count0"><s:property value="info.winnumber1"/>注</span></td>
	      <td bgcolor="#FEFBF2"><span id="bonus0"><s:property value="info.winmoney1"/>元</span></td>
	    </tr>
		
		<tr height="24">
	      <td bgcolor="#FEFBF2"><span id="prizeName1">二等奖</span></td>
	      <td bgcolor="#FEFBF2"><span id="count1"><s:property value="info.winnumber2"/>注</span></td>
	      <td bgcolor="#FEFBF2"><span id="bonus1"><s:property value="info.winmoney2"/>元</span></td>
	    </tr>
		<tr height="24">
	     <td bgcolor="#FEFBF2"><span id="prizeName2">三等奖</span></td>
	     <td bgcolor="#FEFBF2"><span id="count2"><s:property value="info.winnumber3"/>注</span></td>
	     <td bgcolor="#FEFBF2"><span id="bonus2"><s:property value="info.winmoney3"/>元</span></td>
	   </tr>
	   <tr height="24">
	     <td bgcolor="#FEFBF2"><span id="prizeName3">四等奖</span></td>
	     <td bgcolor="#FEFBF2"><span id="count3"><s:property value="info.winnumber4"/>注</span></td>
	     <td bgcolor="#FEFBF2"><span id="bonus3"><s:property value="info.winmoney4"/>元</span></td>
	   </tr>
	   <tr height="24">
	     <td bgcolor="#FEFBF2"><span id="prizeName4">五等奖</span></td>
	     <td bgcolor="#FEFBF2"><span id="count4"><s:property value="info.winnumber5"/>注</span></td>
	     <td bgcolor="#FEFBF2"><span id="bonus4"><s:property value="info.winmoney5"/>元</span></td>
	   </tr>
	   <tr height="24">
	     <td bgcolor="#FEFBF2"><span id="prizeName5">六等奖</span></td>
	     <td bgcolor="#FEFBF2"><span id="count5"><s:property value="info.winnumber6"/>注</span></td>
	     <td bgcolor="#FEFBF2"><span id="bonus5"><s:property value="info.winmoney6"/>元</span></td>
	   </tr>
	 </table>
	</div>
	</div>					
	<div class="zhongJiangBuy"><a href="/shuangseqiu.html" target="_blank"><img src="/images/button16.gif" border="0" /></a></div>
	<div class="wangQiHaoMa">
		<a href="javascript:" class="wangQiHaoMaBotton" onClick="submitPrizeInfo('F47104')">往期开奖号码</a>
	</div>
</s:if>
<!-- 3D -->
<s:if test='id.lotno=="F47103"'>
	<div class="guizeRTop">
		福彩3D&nbsp;&nbsp;&nbsp;开奖详情
	</div>
	<div class="kaiJiangContent3d">	
		<div class="kaiJiangBox1">第<span name="3dtermDate" id="3dtermDate"><s:property value="id.batchcode"/></span>期
			&nbsp;&nbsp;&nbsp;&nbsp;开奖日期：<span id="3ddrawOpenDate"><s:property value="opentime.substring(0,10)"/>&nbsp;20:30:00</span>
		</div>
		<div class="kaiJiangBox1">
		 	<div class="redballa"><span id="3dcode1"><s:property value="winbasecode.substring(1,2)"/></span></div>
            <div class="redballa"><span id="3dcode2"><s:property value="winbasecode.substring(3,4)"/></span></div>
            <div class="redballa"><span id="3dcode3"><s:property value="winbasecode.substring(5,6)"/></span></div>
		</div>
		<div class="kaiJiangBox1">本期全国销售总额：<span class="redb1" id="3ddrawSaleCount"><s:property value="rtnMap.betTotalMoney"/></span>元&nbsp;&nbsp;</div>
		<div class="zhongJiangDetail">
		  <table width="530" border="0" cellspacing="0" cellpadding="0">
		    <tr height="24">
			  <td bgcolor="#FF4A01"><strong class="newWhite">奖等</strong></td>
		      <td bgcolor="#FF4A01"><strong class="newWhite">全国中奖注数</strong></td>
		      <td bgcolor="#FF4A01"><strong class="newWhite">单注奖金</strong></td>
		    </tr>
		    <s:iterator value="rtnMap.prizeInfo" id="prizeInfo">
		      <tr height="24">
		     	<td  bgcolor="#FEFBF2"><span id="3dprizeName0"><s:property value="jianji"/></span></td>
		        <td  bgcolor="#FEFBF2"><span id="3dcount0"><s:property value="zhushu"/></span></td>
		        <td  bgcolor="#FEFBF2"><span id="3dbonus0"><s:property value="money"/></span></td>
		      </tr>
		    </s:iterator>
		  </table>
		</div>
	</div>
	<div class="zhongJiangBuy"><a href="/fucai3D.html" target="_blank"><img src="/images/button16.gif" border="0" /></a></div>
	<div class="wangQiHaoMa">
		<a href="javascript:" class="wangQiHaoMaBotton" onClick="submitPrizeInfo('F47103')">往期开奖号码</a>
	</div>
</s:if>

<s:if test='id.lotno=="F47102"'>
<div class="guizeRTop">
	七乐彩&nbsp;&nbsp;&nbsp;开奖详情
</div>
<div class="kaiJiangContentqlc">
	<div class="kaiJiangBox1">第<span name="qlctermDate" id="qlctermDate"><s:property value="id.batchcode"/></span>期
		&nbsp;&nbsp;&nbsp;&nbsp;开奖日期：<span id="qlcdrawOpenDate"><s:property value="opentime.substring(0,10)"/>&nbsp;21:30:00</span>
	</div>
	<div class="kaiJiangBox1">
		<div class="redballa"><span id="qlccode0"><s:property value="winbasecode.substring(0,2)"/></span></div>
		<div class="redballa"><span id="qlccode1"><s:property value="winbasecode.substring(2,4)"/></span></div>
		<div class="redballa"><span id="qlccode2"><s:property value="winbasecode.substring(4,6)"/></span></div>
		<div class="redballa"><span id="qlccode3"><s:property value="winbasecode.substring(6,8)"/></span></div>
		<div class="redballa"><span id="qlccode4"><s:property value="winbasecode.substring(8,10)"/></span></div>
		<div class="redballa"><span id="qlccode5"><s:property value="winbasecode.substring(10,12)"/></span></div>
		<div class="redballa"><span id="qlccode6"><s:property value="winbasecode.substring(12,14)"/></span></div>
		<div class="blueballa"><span id="qlcbluecode"><s:property value="winspecialcode"/></span></div>
	</div>
	<div class="kaiJiangBox1">本期全国销售总额：<span class="redb1" id="qlcdrawSaleCount"><s:property value="rtnMap.betTotalMoney"/></span>元&nbsp;&nbsp;
		奖池累计金额：<span class="redb1" id="qlcdrawPrizePoolCount"><s:property value="rtnMap.progressive"/></span>元
	</div>
	
	<div class="zhongJiangDetail">
	  <table width="530" border="0" cellspacing="0" cellpadding="0">
	    <tr height="24">
	      <td bgcolor="#FF4A01"><strong class="newWhite">奖等</strong></td>
	      <td bgcolor="#FF4A01"><strong class="newWhite">全国中奖注数</strong></td>
	      <td bgcolor="#FF4A01"><strong class="newWhite">单注奖金（元）</strong></td>
	    </tr>
		
		<s:iterator value="rtnMap.prizeInfo" id="prizeInfo">
	      <tr height="24">
	     	<td  bgcolor="#FEFBF2"><span id="qlcprizeName0"><s:property value="jianji"/></span></td>
	        <td  bgcolor="#FEFBF2"><span id="qlccount0"><s:property value="zhushu"/></span></td>
	        <td  bgcolor="#FEFBF2"><span id="qlcbonus0"><s:property value="money"/></span></td>
	      </tr>
		</s:iterator>
	 </table>
   </div>
</div>
	<div class="zhongJiangBuy"><a href="/qilecai.html" target="_blank"><img src="/images/button16.gif" border="0" /></a></div>
	<div class="wangQiHaoMa">
		<a href="javascript:" class="wangQiHaoMaBotton" onClick="submitPrizeInfo('F47102')">往期开奖号码</a>
	</div>
	
</s:if>

<s:if test='id.lotno=="T01002"'>
	<div class="guizeRTop">
		排列三&nbsp;&nbsp;&nbsp;开奖详情
	</div>
	<div class="kaiJiangContentpls">
		<div class="kaiJiangBox1">第<span name="3dtermDate" id="3dtermDate"><s:property value="id.batchcode"/></span>期&nbsp;&nbsp;&nbsp;&nbsp;
			开奖日期：<span id="3ddrawOpenDate"><s:property value="opentime.substring(0,10)"/>&nbsp;20:30:00</span>
		</div>
		<div class="kaiJiangBox1">
	 	   <div class="redballa"> <span id="3dcode1"><s:property value="winbasecode.substring(0,1)"/></span></div>
	       <div class="redballa"><span id="3dcode2"><s:property value="winbasecode.substring(1,2)"/></span></div>
	       <div class="redballa"><span id="3dcode3"><s:property value="winbasecode.substring(2,3)"/></span></div>
		</div>
		<div class="kaiJiangBox1">本期全国销售总额：<span class="redb1" id="3ddrawSaleCount"><s:property value="rtnMap.betTotalMoney"/></span>元&nbsp;&nbsp;</div>
		<div class="zhongJiangDetail">
	  		<table width="530" border="0" cellspacing="0" cellpadding="0">
			    <tr height="24">
			      <td bgcolor="#FF4A01"><strong class="newWhite">奖等</strong></td>
			      <td bgcolor="#FF4A01"><strong class="newWhite">全国中奖注数</strong></td>
			      <td bgcolor="#FF4A01"><strong class="newWhite">单注奖金</strong></td>
			    </tr>
				 <s:iterator value="rtnMap.prizeInfo" id="prizeInfo">
			      <tr height="24">
			     	<td  bgcolor="#FEFBF2"><span id="3dprizeName0"><s:property value="jianji"/></span></td>
			        <td  bgcolor="#FEFBF2"><span id="3dcount0"><s:property value="zhushu"/></span></td>
			        <td  bgcolor="#FEFBF2"><span id="3dbonus0"><s:property value="money"/></span></td>
			      </tr>
			    </s:iterator>
			</table>
		</div>
	</div>
		<div class="zhongJiangBuy"><a href="/pailie3.html" target="_blank"><img src="/images/button16.gif" border="0" /></a></div>
		<div class="wangQiHaoMa">
			<a href="javascript:" class="wangQiHaoMaBotton" onClick="submitPrizeInfo('T01002')">往期开奖号码</a>
		</div>
</s:if>

<s:if test='id.lotno=="T01001"'>
	<div class="guizeRTop">
		大乐透&nbsp;&nbsp;&nbsp;开奖详情
	</div>
	<div class="kaiJiangContentdlt">	
		<div class="kaiJiangBox1">第<span name="dlttermDate" id="dlttermDate"><s:property value="id.batchcode"/></span>期&nbsp;&nbsp;&nbsp;&nbsp;
			开奖日期：<span id="dltdrawOpenDate"><s:property value="opentime.substring(0,10)"/>&nbsp;20:30:00</span>
		</div>
		<div class="kaiJiangBox1">
	          <div class="redballa"><span id="dltcode0"><s:property value="winbasecode.substring(0,2)"/></span></div>
              <div class="redballa"><span id="dltcode1"><s:property value="winbasecode.substring(2,4)"/></span></div>
              <div class="redballa"><span id="dltcode2"><s:property value="winbasecode.substring(4,6)"/></span></div>
              <div class="redballa"><span id="dltcode3"><s:property value="winbasecode.substring(6,8)"/></span></div>
              <div class="redballa"><span id="dltcode4"><s:property value="winbasecode.substring(8,10)"/></span></div>
              <div class="blueballa"><span  id="dltbluecode1"><s:property value="winbasecode.substring(11,13)"/></span></div>
              <div class="blueballa"><span  id="dltbluecode2"><s:property value="winbasecode.substring(13,15)"/></span></div>
		</div>
		
	<div class="kaiJiangBox1">本期全国销售总额：<span class="redb1" id="dltdrawSaleCount"><s:property value="rtnMap.betTotalMoney"/></span>元&nbsp;&nbsp;
		奖池累计金额：<span class="redb1" id="dltdrawPrizePoolCount"><s:property value="rtnMap.progressive"/> </span>元
	</div>		

	<div class="zhongJiangDetail">
	  <table width="530" border="0" cellspacing="0" cellpadding="0">
	    <tr height="24">
	      <td colspan="2" bgcolor="#FF4A01"><strong class="newWhite">奖等</strong></td>
	      <td width="170" bgcolor="#FF4A01"><strong class="newWhite">全国中奖注数</strong></td>
	      <td width="179" bgcolor="#FF4A01"><strong class="newWhite">单注奖金</strong></td>
	    </tr>
	   <s:iterator value="rtnMap.prizeInfo" id="prizeInfo" status="status">  
	    <s:if test="#status.odd">
	    	<s:if test="#status.index==14">
	        	<tr height="24">
			      <td colspan="2" bgcolor="#FEFBF2"><span id="dltprizeName4"><s:property value="jianji"/></span></td>
			      <td bgcolor="#FEFBF2"><span id="dltcount14"><s:property value="zhushu"/></span></td>
			      <td bgcolor="#FEFBF2"><span id="dltbonus14"><s:property value="money"/></span></td>
			    </tr>
	        </s:if><s:else>
		    <tr height="24">
		       <td width="77" rowspan="2" bgcolor="#FEFBF2"><span id="dltprizeName0"><s:property value="jianji"/></span></td>
		       <td width="103" bgcolor="#FEFBF2"><s:property value="zhuijia"/></td>
		       <td><span id="dltcount0"><s:property value="zhushu"/></span></td>
		      <td bgcolor="#FEFBF2"><span id="dltbonus0"><s:property value="money"/></span></td>
		    </tr>
		    </s:else>
	    </s:if><s:else>
	        <s:if test="#status.last">
	        	<tr height="24">
			      <td colspan="2" rowspan="2" bgcolor="#FEFBF2"><span id="dltprizeName4"><s:property value="jianji"/></span></td>
			      <td bgcolor="#FEFBF2"><span id="dltcount14"><s:property value="zhushu"/></span></td>
			      <td bgcolor="#FEFBF2"><span id="dltbonus14"><s:property value="money"/></span></td>
			    </tr>
	        </s:if><s:else>
		    <tr height="24">
			  <td width="103" bgcolor="#FEFBF2"><s:property value="zhuijia"/></td>
		      <td bgcolor="#FEFBF2"><span id="dltcount1"><s:property value="zhushu"/></span></td>
		      <td bgcolor="#FEFBF2"><span id="dltbonus1"><s:property value="money"/></span></td>
		    </tr>
		    </s:else>
		 </s:else>
	   	</s:iterator>
	   	
	   	
	    
      </table>
    </div>	    
	</div>
		<div class="zhongJiangBuy"><a href="/daletou.html" target="_blank"><img src="/images/button16.gif" border="0" /></a></div>
		<div class="wangQiHaoMa">
			<a href="javascript:" class="wangQiHaoMaBotton" onClick="submitPrizeInfo('T01001')">往期开奖号码</a>
		</div>
</s:if>
<!-- ===================================排列五、七星彩、======================================== -->
<s:if test='id.lotno=="T01011"'>
	<div class="guizeRTop">
		排列五&nbsp;&nbsp;&nbsp;开奖详情
	</div>
	<div class="kaiJiangContentplw">
		<div class="kaiJiangBox1">第<span name="3dtermDate" id="3dtermDate"><s:property value="id.batchcode"/></span>期&nbsp;&nbsp;&nbsp;&nbsp;
			开奖日期：<span id="3ddrawOpenDate"><s:property value="opentime.substring(0,10)"/>&nbsp;20:30:00</span>
		</div>
		<div class="kaiJiangBox1">
		   <div class="redballa"><span id="3dcode1"><s:property value="winbasecode.substring(0,1)"/></span></div>
	 	   <div class="redballa"><span id="3dcode2"><s:property value="winbasecode.substring(1,2)"/></span></div>
	       <div class="redballa"><span id="3dcode3"><s:property value="winbasecode.substring(2,3)"/></span></div>
	       <div class="redballa"><span id="3dcode4"><s:property value="winbasecode.substring(3,4)"/></span></div>
	       <div class="redballa"><span id="3dcode5"><s:property value="winbasecode.substring(4,5)"/></span></div>
		</div>
		<div class="kaiJiangBox1">本期全国销售总额：<span class="redb1" id="3ddrawSaleCount"><s:property value="rtnMap.betTotalMoney"/></span>元&nbsp;&nbsp;</div>
		<div class="zhongJiangDetail">
	  		<table width="530" border="0" cellspacing="0" cellpadding="0">
			    <tr height="24">
			      <td bgcolor="#FF4A01"><strong class="newWhite">奖等</strong></td>
			      <td bgcolor="#FF4A01"><strong class="newWhite">全国中奖注数</strong></td>
			      <td bgcolor="#FF4A01"><strong class="newWhite">单注奖金</strong></td>
			    </tr>
				<s:iterator value="rtnMap.prizeInfo" id="prizeInfo">
			      <tr height="24">
			     	<td  bgcolor="#FEFBF2"><span id="3dprizeName0"><s:property value="jianji"/></span></td>
			        <td  bgcolor="#FEFBF2"><span id="3dcount0"><s:property value="zhushu"/></span></td>
			        <td  bgcolor="#FEFBF2"><span id="3dbonus0"><s:property value="money"/></span></td>
			      </tr>
			    </s:iterator>
			   
			</table>
		</div>
	</div>
		<div class="zhongJiangBuy"><a href="/pailie5.html" target="_blank"><img src="/images/button16.gif" border="0" /></a></div>
		<div class="wangQiHaoMa">
			<a href="javascript:" class="wangQiHaoMaBotton" onClick="submitPrizeInfo('T01011')">往期开奖号码</a>
		</div>
</s:if>


<s:if test='id.lotno=="T01009"'>
	<div class="guizeRTop">
		七星彩&nbsp;&nbsp;&nbsp;开奖详情
	</div>
	<div class="kaiJiangContentqxc">
		<div class="kaiJiangBox1">第<span name="ssqtermDate" id="ssqtermDate"><s:property value="id.batchcode"/></span>期
		&nbsp;&nbsp;&nbsp;&nbsp;开奖日期：<span id="ssqdrawOpenDate"><s:property value="opentime.substring(0,10)"/>&nbsp;20:30:00</span></div>
		<div class="kaiJiangBox1">
	          	<div class="redballa"><span  id="ssqcode1"><s:property value="winbasecode.substring(0,1)"/></span></div>
	          	<div class="redballa"><span  id="ssqcode2"><s:property value="winbasecode.substring(1,2)"/></span></div>
	          	<div class="redballa"><span  id="ssqcode3"><s:property value="winbasecode.substring(2,3)"/></span></div>
	          	<div class="redballa"><span  id="ssqcode4"><s:property value="winbasecode.substring(3,4)"/></span></div>
			<div class="redballa"><span  id="ssqcode5"><s:property value="winbasecode.substring(4,5)"/></span></div>
			<div class="redballa"><span  id="ssqcode6"><s:property value="winbasecode.substring(5,6)"/></span></div>
			<div class="redballa"><span  id="ssqcode7"><s:property value="winbasecode.substring(6,7)"/></span></div>
		 </div>
	<div class="kaiJiangBox1">本期全国销售总额：<span class="redb1" id="ssqdrawSaleCount"><s:property value="rtnMap.betTotalMoney"/></span>元
		&nbsp;&nbsp;奖池累计金额：<span class="redb1" id="ssqdrawPrizePoolCount"><s:property value="rtnMap.progressive"/></span>元
	</div>	
	<div class="zhongJiangDetail">
	  <table width="530" border="0" cellspacing="0" cellpadding="0">
	    <tr height="24">
	      <td bgcolor="#FF4A01"><strong class="newWhite">奖等</strong></td>
	      <td bgcolor="#FF4A01"><strong class="newWhite">全国中奖注数</strong></td>
	      <td bgcolor="#FF4A01"><strong class="newWhite">单注奖金</strong></td>
	    </tr>
	    <s:iterator value="rtnMap.prizeInfo" id="prizeInfo">
	      <tr height="24">
	     	<td  bgcolor="#FEFBF2"><span id="3dprizeName0"><s:property value="jianji"/></span></td>
	        <td  bgcolor="#FEFBF2"><span id="3dcount0"><s:property value="zhushu"/></span></td>
	        <td  bgcolor="#FEFBF2"><span id="3dbonus0"><s:property value="money"/></span></td>
	      </tr>
	    </s:iterator>
	 </table>
	</div>
	</div>					
	<div class="zhongJiangBuy"><a href="/qixingcai.html" target="_blank"><img src="/images/button16.gif" border="0" /></a></div>
	<div class="wangQiHaoMa">
		<a href="javascript:" class="wangQiHaoMaBotton" onClick="submitPrizeInfo('T01009')">往期开奖号码</a>
	</div>
</s:if>


<!-- 时时彩 -->
<s:if test='id.lotno=="T01007"'>
	<div class="guizeRTop">
		时时彩&nbsp;&nbsp;&nbsp;开奖详情
	</div>
	<div class="kaiJiangContentssc">
		<div class="kaiJiangBox1">第<span name="3dtermDate" id="3dtermDate"><s:property value="id.batchcode"/></span>期&nbsp;&nbsp;&nbsp;&nbsp;
			开奖日期：<span id="3ddrawOpenDate"><s:property value="opentime"/>&nbsp;</span>
		</div>
		<div class="kaiJiangBox1">
	 	   <div class="redballa"><span id="3dcode1"><s:property value="winbasecode.substring(0,1)"/></span></div>
	       <div class="redballa"><span id="3dcode2"><s:property value="winbasecode.substring(1,2)"/></span></div>
	       <div class="redballa"><span id="3dcode3"><s:property value="winbasecode.substring(2,3)"/></span></div>
	       <div class="redballa"><span id="3dcode4"><s:property value="winbasecode.substring(3,4)"/></span></div>
	       <div class="redballa"><span id="3dcode5"><s:property value="winbasecode.substring(4,5)"/></span></div>
		</div>
		
	</div>
		<div class="zhongJiangBuy"><a href="/shishicai.html" target="_blank"><img src="/images/button16.gif" border="0" /></a></div>
		<!--<div class="wangQiHaoMa">
			<a href="javascript:" class="wangQiHaoMaBotton" onClick="submitPrizeInfo('T01007')">往期开奖号码</a>
		</div>
--></s:if>
</s:iterator>
