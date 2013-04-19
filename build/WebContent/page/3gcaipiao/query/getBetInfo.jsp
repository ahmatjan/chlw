<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<div id="main">
<div class="tzhxq_head">
<s:if test='#request.lot.lotno=="F47104"||#request.lot.lotno=="B001"'>双色球</s:if>
<s:if test='#request.lot.lotno=="F47103"||#request.lot.lotno=="D3"'>福彩3D</s:if>
<s:if test='#request.lot.lotno=="F47102"||#request.lot.lotno=="QL730"'>七乐彩</s:if>
<s:if test='#request.lot.lotno=="T01002"||#request.lot.lotno=="PL3_33"'>排列三</s:if>
<s:if test='#request.lot.lotno=="T01001"||#request.lot.lotno=="DLT_23529"'>大乐透</s:if>
<s:if test='#request.lot.lotno=="T01011"||#request.lot.lotno=="PLW_35"'>排列五</s:if>
<s:if test='#request.lot.lotno=="T01009"||#request.lot.lotno=="QXC_10022"'>七星彩</s:if>
<s:if test='#request.lot.lotno=="T01007"||#request.lot.lotno=="SSC_10401"'>时时彩</s:if>
	第<s:property value="#request.lot.batchcode" />期 
	<s:if test='#request.lot.lotno=="F47104"||#request.lot.lotno=="B001"'>
		<s:if test="#request.lot.zhuma.wanfa=='00' || #request.lot.zhuma.wanfa=='10' || #request.lot.zhuma.wanfa=='20' || #request.lot.zhuma.wanfa=='30'">复式</s:if>
		<s:if test="#request.lot.zhuma.wanfa=='40' || #request.lot.zhuma.wanfa=='50'">胆拖</s:if>
	</s:if>
	<s:elseif test='#request.lot.lotno=="F47103"||#request.lot.lotno=="D3"'>
		<s:if test="#request.lot.zhuma.wanfa=='00' || #request.lot.zhuma.wanfa=='20'">直选复式</s:if>
		<s:elseif test="#request.lot.zhuma.wanfa=='10'">直选和值</s:elseif>
		<s:elseif test="#request.lot.zhuma.wanfa=='11'">组三和值</s:elseif>
		<s:elseif test="#request.lot.zhuma.wanfa=='12'">组六和值</s:elseif>
		<s:elseif test="#request.lot.zhuma.wanfa=='01' || #request.lot.zhuma.wanfa=='31'">组三复式</s:elseif>
		<s:elseif test="#request.lot.zhuma.wanfa=='02' || #request.lot.zhuma.wanfa=='32'">组六复式</s:elseif>
		<s:elseif test="#request.lot.zhuma.wanfa=='54'">胆拖复式</s:elseif>
		<s:elseif test="#request.lot.zhuma.wanfa=='34'">直选包号</s:elseif>
	</s:elseif>
	<s:elseif test='#request.lot.lotno=="F47102"||#request.lot.lotno=="QL730"'>
		<s:if test="#request.lot.zhuma.wanfa=='00' || #request.lot.zhuma.wanfa=='10'">复式</s:if>
		<s:elseif test="#request.lot.zhuma.wanfa=='20'">胆拖</s:elseif>
	</s:elseif>
	<s:elseif test='#request.lot.lotno=="T01002"||#request.lot.lotno=="PL3_33"'>
		<s:if test="#request.lot.zhuma.wanfa==1">直选复式 </s:if>
		<s:if test="#request.lot.zhuma.wanfa==6">组选复式</s:if>
		<s:if test="#request.lot.zhuma.wanfa=='S1'">直选和值</s:if>
		<s:if test="#request.lot.zhuma.wanfa=='S3'">组三和值</s:if>
		<s:if test="#request.lot.zhuma.wanfa=='S6'">组六和值</s:if>
		<s:if test="#request.lot.zhuma.wanfa=='F3'">组三包号</s:if>
		<s:if test="#request.lot.zhuma.wanfa=='F6'">组六包号</s:if>
	</s:elseif>
	<s:elseif test='#request.lot.lotno=="T01001"||#request.lot.lotno=="DLT_23529"'>
		<s:if test="#request.lot.zhuma.wanfa==0 || #request.lot.zhuma.wanfa==1">复式 </s:if>
		<s:if test="#request.lot.zhuma.wanfa==2">胆拖</s:if>
		<s:if test="#request.lot.zhuma.wanfa==3">生肖乐</s:if>
	</s:elseif>
	<s:elseif test='#request.lot.lotno=="T01011"||#request.lot.lotno=="PLW_35"'>直选复式</s:elseif>
	<s:elseif test='#request.lot.lotno=="T01009"||#request.lot.lotno=="QXC_10022"'>直选复式</s:elseif>
	<s:elseif test='#request.lot.lotno=="T01007"||#request.lot.lotno=="SSC_10401"'>
		<s:if test="#request.lot.zhuma.wanfa=='5D'">五星 </s:if>
		<s:if test="#request.lot.zhuma.wanfa=='3D'">三星</s:if>
		<s:if test="#request.lot.zhuma.wanfa=='2D'">二星</s:if>
		<s:if test="#request.lot.zhuma.wanfa=='1D'">一星</s:if>
		<s:if test="#request.lot.zhuma.wanfa=='5T'">五星通选</s:if>
		<s:if test="#request.lot.zhuma.wanfa=='H2'">二星和值包号</s:if>
		<s:if test="#request.lot.zhuma.wanfa=='S2'">二星组选和值包号</s:if>
		<s:if test="#request.lot.zhuma.wanfa=='DD'">大小单双</s:if>
		<s:if test="#request.lot.zhuma.wanfa=='Z2'">二星组选</s:if>
		<s:if test="#request.lot.zhuma.wanfa=='F2'">二星组选复式</s:if>
	</s:elseif>
方案
</div>
<div class="tzhxq_time">
	此方案发起时间：<s:property value="#request.lot.ordertime" /> 
	发起截止时间：<s:if test='#request.winInfo.end_time!=null'><s:property value="#request.winInfo.end_time"/></s:if>
				<s:else><s:property value="#request.lotctrl.endtime"/></s:else>
方案编号：<s:property value="#request.lot.flowno" />
</div>

<div class="tzhxq_content">
	<div class="tzhxq_hang1">
		<ul>
			<li class="tzhxq_left1">方案发起人</li>
			<li class="tzhxq_right1"><s:property value="#session.user.NICKNAME" /></li>
		</ul>
	</div>
	<div class="tzhxq_hang2">
		<ul>
			<li class="tzhxq_left2">方案信息</li>
			<li class="tzhxq_right2">
			<div class="tzhxq_fangan">
			<div class="tzhxq_fn1">
			<ul>
				
				<s:if test="#request.lot.oneMoney==3">
				  <li class="tzhxq_list6">方案注数</li>
				  <li class="tzhxq_list7">投注方式</li>
				</s:if><s:else>
				 <li class="tzhxq_list1">方案注数</li>
				</s:else>
				<li class="tzhxq_list2">倍数</li>
				<li class="tzhxq_list3">总金额</li>
				<li class="tzhxq_list4">出票状态</li>
				<li class="tzhxq_list5">购买时间</li>
			</ul>
			</div>
			<div class="tzhxq_fn2">
			<ul>
				<s:if test="#request.lot.oneMoney==3">
					<li class="tzhxq_list6"><s:property value="#request.lot.betnum" />注</li>
				  	<li class="tzhxq_list7">追加投注</li>
				</s:if><s:else>
					<li class="tzhxq_list1"><s:property value="#request.lot.betnum" />注</li>
				</s:else>
				<li class="tzhxq_list2"><s:property value="#request.lot.zhuma.multiple" />倍</li>
				<li class="tzhxq_list3"><span>￥<s:property value="#request.lot.amt/100" /></span>元</li>
				<li class="tzhxq_list4">
					<s:if test='#request.lot.state=="1"'>已出票</s:if>
					<s:elseif test='#request.lot.state=="2"'>暂未出票</s:elseif>
					<s:else>&nbsp;</s:else>
				</li>
				<li class="tzhxq_list5"><s:property value="#request.lot.ordertime"/>&nbsp;</li>
			</ul>
			</div>
			</div>
			</li>
		</ul>
	</div>
	<div class="tzhxq_hang3">
		<ul>
			<li class="tzhxq_left3">方案内容</li>
			<li class="tzhxq_right3">
			  <div class="tzhxq_danshi">
			    <div class="tzhxq_dshc">
				<!-- 双色球注码解析显示 -->
				<s:if test='#request.lot.lotno=="F47104"||#request.lot.lotno=="B001"'>
					    <s:if test="#request.lot.zhuma.wanfa=='00'">
						   <s:property value="#request.lot.zhuma.betcode" escape="false"/>
						</s:if>
						<s:if test="#request.lot.zhuma.wanfa=='10' || #request.lot.zhuma.wanfa=='20' || #request.lot.zhuma.wanfa=='30'">
							<s:property value="#request.lot.zhuma.betcode"/> 
						</s:if>
						<s:if test="#request.lot.zhuma.wanfa=='40' || #request.lot.zhuma.wanfa=='50'">
							红球胆码：<s:property value="#request.lot.zhuma.redDanma"/><br/>
							红球拖码：<s:property value="#request.lot.zhuma.redTuoma"/><br/>
							蓝球：<s:property value="#request.lot.zhuma.blueBall"/>  
						</s:if>
				</s:if>
				<!-- 福彩3D注码解析显示 -->
				<s:elseif test='#request.lot.lotno=="F47103"||#request.lot.lotno=="D3"'>
					<s:property value="#request.lot.zhuma.betcode"/>
				</s:elseif>
				<!-- 七乐彩注码解析显示 -->
					<s:elseif test='#request.lot.lotno=="F47102"||#request.lot.lotno=="QL730"'>
						<s:if test="#request.lot.zhuma.wanfa=='00'">
						   <s:property value="#request.lot.zhuma.betcode" escape="false"/>
						</s:if>
						<s:elseif test="#request.lot.zhuma.wanfa=='10'"><s:property value="#request.lot.zhuma.betcode"/></s:elseif>
						<s:elseif test="#request.lot.zhuma.wanfa=='20'">
						    胆码：<s:property value="#request.lot.zhuma.danma"/><br/>
						    拖码：<s:property value="#request.lot.zhuma.tuoma"/>
						</s:elseif>
					</s:elseif>
				<!-- 排列三注码解析显示 -->
				<s:elseif test='#request.lot.lotno=="T01002"||#request.lot.lotno=="PL3_33"'>
					<s:property value="#request.lot.zhuma.betcode" escape="false"/>
				</s:elseif>
				<s:elseif test='#request.lot.lotno=="T01011"||#request.lot.lotno=="PLW_35"'>
					<s:property value="(#request.lot.zhuma.betcode).replaceAll(';','<br/>')" escape="false"/>
				</s:elseif>
				<s:elseif test='#request.lot.lotno=="T01009"||#request.lot.lotno=="QXC_10022"'>
					<s:property value="(#request.lot.zhuma.betcode).replaceAll(';','<br/>')" escape="false"/>
				</s:elseif>
				<!-- 大乐透注码解析显示 -->
				<s:elseif test='#request.lot.lotno=="T01001"||#request.lot.lotno=="DLT_23529"'>
					<s:if test="#request.lot.zhuma.wanfa==0"><s:property value="(#request.lot.zhuma.betcode).replaceAll(';','<br/>')" escape="false" default="" /></s:if>
					<s:if test="#request.lot.zhuma.wanfa==1"><s:property value="#request.lot.zhuma.betcode"/></s:if>
					<s:if test="#request.lot.zhuma.wanfa==2">
						前区胆码：<s:property value="#request.lot.zhuma.qianDanma"/><br/>
						前区拖码：<s:property value="#request.lot.zhuma.qianTuoma"/><br/>
						后区胆码：<s:property value="#request.lot.zhuma.houDanma"/><br/>
						后区拖码：<s:property value="#request.lot.zhuma.houTuoma"/>
					</s:if>
					<s:if test="#request.lot.zhuma.wanfa==3"><s:property value="#request.lot.zhuma.betcode"/></s:if>
				</s:elseif>
				<!-- 时时彩 -->
				<s:elseif test='#request.lot.lotno=="T01007"||#request.lot.lotno=="SSC_10401"'>
					<s:if test="#request.lot.zhuma.wanfa=='DD'">
						<s:if test="#request.lot.betcode.split('|')[4]==1">小</s:if>
						<s:if test="#request.lot.betcode.split('|')[4]==2">大</s:if>
						<s:if test="#request.lot.betcode.split('|')[4]==4">双</s:if>
						<s:if test="#request.lot.betcode.split('|')[4]==5">单</s:if>
						<s:if test="#request.lot.betcode.split('|')[5]==1">小</s:if>
						<s:if test="#request.lot.betcode.split('|')[5]==2">大</s:if>
						<s:if test="#request.lot.betcode.split('|')[5]==4">双</s:if>
						<s:if test="#request.lot.betcode.split('|')[5]==5">单</s:if>
					</s:if><s:else>
						<s:property value="#request.lot.zhuma.betcode" escape="false" default=""/>
					</s:else>
				</s:elseif>
				<s:else><s:property value="#request.lot.zhuma.betcode" escape="false"/></s:else>
				</div>
			 </div>	
		  </li>
		</ul>
	</div>
	<s:if test='#request.lot.settleflag!=2&&#request.winInfo!=null'>
		<s:if test='#request.lot.lotno=="F47104"||#request.lot.lotno=="B001"'>
		<div class="tzhxq_hang4">
				<ul><li class="tzhxq_left4">开奖号码</li>
					<li class="tzhxq_right4"><span class="red"><s:property value="#request.winInfo.winbasecode"/></span>&nbsp;
					|&nbsp;<span class="blue"><s:property value="#request.winInfo.winspecialcode"/></span></li>
				</ul>
		</div>
		</s:if>
		
		<s:if test='#request.lot.lotno=="F47103"||#request.lot.lotno=="D3"'>
		<div class="tzhxq_hang4">
				<ul><li class="tzhxq_left4">开奖号码</li>
					<li class="tzhxq_right4">
						<span class="red">
							<s:property value="#request.winInfo.winbasecode.substring(1,2)"/>
							<s:property value="#request.winInfo.winbasecode.substring(3,4)"/>
							<s:property value="#request.winInfo.winbasecode.substring(5,6)"/>
						</span>
					</li>
				</ul>
		</div>
		</s:if>
		
		<s:if test='#request.lot.lotno=="F47102"||#request.lot.lotno=="QL730"'>
		<div class="tzhxq_hang4">
				<ul><li class="tzhxq_left4">开奖号码</li>
					<li class="tzhxq_right4"><span class="red"><s:property value="#request.winInfo.winbasecode"/></span>&nbsp;
						|&nbsp;<span class="blue"><s:property value="#request.winInfo.winspecialcode"/></span>
					</li>
				</ul>
		</div>
		</s:if>
		
		<s:if test='#request.lot.lotno=="T01002"||#request.lot.lotno=="PL3_33"'>
		<div class="tzhxq_hang4">
				<ul><li class="tzhxq_left4">开奖号码</li>
					<li class="tzhxq_right4"><span class="red"><s:property value="#request.winInfo.winbasecode"/></span></li>
				</ul>
		</div>
		</s:if>
		
		<s:if test='#request.lot.lotno=="T01001"||#request.lot.lotno=="DLT_23529"'>
		<div class="tzhxq_hang4">
				<ul><li class="tzhxq_left4">开奖号码</li>
					<li class="tzhxq_right4"><span class="red"><s:property value="#request.winInfo.winbasecode"/></span>&nbsp;
						|&nbsp;<span class="blue"><s:property value="#request.winInfo.winspecialcode"/></span>
					</li>
				</ul>
		</div>
		</s:if>
		
		<s:if test='#request.lot.lotno=="T01011"||#request.lot.lotno=="PLW_35"'>
		<div class="tzhxq_hang4">
				<ul><li class="tzhxq_left4">开奖号码</li>
					<li class="tzhxq_right4">
						<span class="red">
							<s:property value="#request.winInfo.winbasecode"/>
						</span>
					</li>
				</ul>
		</div>
		</s:if>
		
		<s:if test='#request.lot.lotno=="T01009"||#request.lot.lotno=="QXC_10022"'>
		<div class="tzhxq_hang4">
				<ul><li class="tzhxq_left4">开奖号码</li>
					<li class="tzhxq_right4">
						<span class="red">
							<s:property value="#request.winInfo.winbasecode"/>
						</span>
					</li>
				</ul>
		</div>
		</s:if>
		
		<s:if test='#request.lot.lotno=="T01007"||#request.lot.lotno=="SSC_10401"'>
		<div class="tzhxq_hang4">
				<ul><li class="tzhxq_left4">开奖号码</li>
					<li class="tzhxq_right4">
						<span class="red">
							<s:property value="#request.winInfo.winbasecode"/>
						</span>
					</li>
				</ul>
		</div>
		</s:if>
		<%/*
		<div class="tzhxq_hang5">
			<ul>
				<li class="tzhxq_left5">中奖情况</li>
				<li class="tzhxq_right5">
					<s:if test='#request.winInfo.prizeinfo!=null'>
						特等奖<s:property value="#request.winInfo.prizeinfo.prizeinfo0"/>注，
						一等奖<s:property value="#request.winInfo.prizeinfo.prizeinfo1"/>注，
						二等奖<s:property value="#request.winInfo.prizeinfo.prizeinfo2"/>注，
						三等奖<s:property value="#request.winInfo.prizeinfo.prizeinfo3"/>注，
						四等奖<s:property value="#request.winInfo.prizeinfo.prizeinfo4"/>注，
						五等奖<s:property value="#request.winInfo.prizeinfo.prizeinfo5"/>注，
						六等奖<s:property value="#request.winInfo.prizeinfo.prizeinfo6"/>注，
						共计<s:property value="#request.winInfo.prizeamt/100"/>元。
					</s:if>
					<s:else>未中奖</s:else>
				</li>
			</ul>
		</div>*/%>
		
	</s:if>
	
	</div>
	
</div>
	