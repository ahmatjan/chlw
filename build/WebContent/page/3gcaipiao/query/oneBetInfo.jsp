<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<div id="main">
<div class="tzhxq_head">
<s:if test='#request.jsRen.lotno=="F47104"||#request.jsRen.lotno=="B001"'>双色球</s:if>
<s:if test='#request.jsRen.lotno=="F47103"||#request.jsRen.lotno=="D3"'>福彩3D</s:if>
<s:if test='#request.jsRen.lotno=="F47102"||#request.jsRen.lotno=="QL730"'>七乐彩</s:if>
<s:if test='#request.jsRen.lotno=="T01002"||#request.jsRen.lotno=="PL3_33"'>排列三</s:if>
<s:if test='#request.jsRen.lotno=="T01001"||#request.jsRen.lotno=="DLT_23529"'>大乐透</s:if>
<s:if test='#request.jsRen.lotno=="T01011"||#request.jsRen.lotno=="PLW_35"'>排列五</s:if>
<s:if test='#request.jsRen.lotno=="T01009"||#request.jsRen.lotno=="QXC_10022"'>七星彩</s:if>
<s:if test='#request.jsRen.lotno=="T01007"||#request.jsRen.lotno=="SSC_10401"'>时时彩</s:if>
	第<s:property value="#request.jsRen.batchcode" />期 
	<s:if test='#request.jsRen.lotno=="F47104"||#request.jsRen.lotno=="B001"'>
		<s:if test="#request.jsRen.zhuma.wanfa=='00' || #request.jsRen.zhuma.wanfa=='10' || #request.jsRen.zhuma.wanfa=='20' || #request.jsRen.zhuma.wanfa=='30'">复式</s:if>
		<s:if test="#request.jsRen.zhuma.wanfa=='40' || #request.jsRen.zhuma.wanfa=='50'">胆拖</s:if>
	</s:if>
	<s:elseif test='#request.jsRen.lotno=="F47103"||#request.jsRen.lotno=="D3"'>
		<s:if test="#request.jsRen.zhuma.wanfa=='00' || #request.jsRen.zhuma.wanfa=='20'">直选复式</s:if>
		<s:elseif test="#request.jsRen.zhuma.wanfa=='10'">直选和值</s:elseif>
		<s:elseif test="#request.jsRen.zhuma.wanfa=='11'">组三和值</s:elseif>
		<s:elseif test="#request.jsRen.zhuma.wanfa=='12'">组六和值</s:elseif>
		<s:elseif test="#request.jsRen.zhuma.wanfa=='01' || #request.jsRen.zhuma.wanfa=='31'">组三复式</s:elseif>
		<s:elseif test="#request.jsRen.zhuma.wanfa=='02' || #request.jsRen.zhuma.wanfa=='32'">组六复式</s:elseif>
		<s:elseif test="#request.jsRen.zhuma.wanfa=='54'">胆拖复式</s:elseif>
		<s:elseif test="#request.jsRen.zhuma.wanfa=='34'">直选包号</s:elseif>
	</s:elseif>
	<s:elseif test='#request.jsRen.lotno=="F47102"||#request.jsRen.lotno=="QL730"'>
		<s:if test="#request.jsRen.zhuma.wanfa=='00' || #request.jsRen.zhuma.wanfa=='10'">复式</s:if>
		<s:elseif test="#request.jsRen.zhuma.wanfa=='20'">胆拖</s:elseif>
	</s:elseif>
	<s:elseif test='#request.jsRen.lotno=="T01002"||#request.jsRen.lotno=="PL3_33"'>
		<s:if test="#request.jsRen.zhuma.wanfa==1">直选复式 </s:if>
		<s:if test="#request.jsRen.zhuma.wanfa==6">组选复式</s:if>
		<s:if test="#request.jsRen.zhuma.wanfa=='S1'">直选和值</s:if>
		<s:if test="#request.jsRen.zhuma.wanfa=='S3'">组三和值</s:if>
		<s:if test="#request.jsRen.zhuma.wanfa=='S6'">组六和值</s:if>
		<s:if test="#request.jsRen.zhuma.wanfa=='F3'">组三包号</s:if>
		<s:if test="#request.jsRen.zhuma.wanfa=='F6'">组六包号</s:if>
	</s:elseif>
	<s:elseif test='#request.jsRen.lotno=="T01001"||#request.jsRen.lotno=="DLT_23529"'>
		<s:if test="#request.jsRen.zhuma.wanfa==0 || #request.jsRen.zhuma.wanfa==1">复式 </s:if>
		<s:if test="#request.jsRen.zhuma.wanfa==2">胆拖</s:if>
		<s:if test="#request.jsRen.zhuma.wanfa==3">生肖乐</s:if>
	</s:elseif>
	<s:elseif test='#request.jsRen.lotno=="T01011"||#request.jsRen.lotno=="PLW_35"'>直选复式</s:elseif>
	<s:elseif test='#request.jsRen.lotno=="T01009"||#request.jsRen.lotno=="QXC_10022"'>直选复式</s:elseif>
	<s:elseif test='#request.jsRen.lotno=="T01007"||#request.jsRen.lotno=="SSC_10401"'>
		<s:if test="#request.jsRen.zhuma.wanfa=='5D'">五星 </s:if>
		<s:if test="#request.jsRen.zhuma.wanfa=='3D'">三星</s:if>
		<s:if test="#request.jsRen.zhuma.wanfa=='2D'">二星</s:if>
		<s:if test="#request.jsRen.zhuma.wanfa=='1D'">一星</s:if>
		<s:if test="#request.jsRen.zhuma.wanfa=='5T'">五星通选</s:if>
		<s:if test="#request.jsRen.zhuma.wanfa=='H2'">二星和值包号</s:if>
		<s:if test="#request.jsRen.zhuma.wanfa=='S2'">二星组选和值包号</s:if>
		<s:if test="#request.jsRen.zhuma.wanfa=='DD'">大小单双</s:if>
		<s:if test="#request.jsRen.zhuma.wanfa=='Z2'">二星组选</s:if>
		<s:if test="#request.jsRen.zhuma.wanfa=='F2'">二星组选复式</s:if>
	</s:elseif>
方案
</div>
<div class="tzhxq_time">
	此方案发起时间：<s:property value="#request.jsRen.ordertime" /> 
	发起截止时间：<s:if test='#request.prize.end_time!=null'><s:property value="#request.prize.end_time"/></s:if>
				<s:else><s:property value="#request.jsRen.end_time"/></s:else>
方案编号：<s:property value="#request.jsRen.flowno" />
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
				
				<s:if test="#request.jsRen.oneMoney==3">
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
				<s:if test="#request.jsRen.oneMoney==3">
					<li class="tzhxq_list6"><s:property value="#request.jsRen.zhushu" />注</li>
				  	<li class="tzhxq_list7">追加投注</li>
				</s:if><s:else>
					<li class="tzhxq_list1"><s:property value="#request.jsRen.zhushu" />注</li>
				</s:else>
				<li class="tzhxq_list2"><s:property value="#request.jsRen.zhuma.multiple" />倍</li>
				<li class="tzhxq_list3"><span>￥<s:property value="#request.jsRen.amt/100" /></span>元</li>
				<li class="tzhxq_list4">
					<s:if test='#request.jsRen.state=="1"'>已出票</s:if>
					<s:elseif test='#request.jsRen.state=="2"'>暂未出票</s:elseif>
					<s:else>&nbsp;</s:else>
				</li>
				<li class="tzhxq_list5"><s:property value="#request.jsRen.ordertime"/>&nbsp;</li>
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
				<s:if test='#request.jsRen.lotno=="F47104"||#request.jsRen.lotno=="B001"'>
					    <s:if test="#request.jsRen.zhuma.wanfa=='00'">
						   <s:property value="#request.jsRen.zhuma.betcode" escape="false"/>
						</s:if>
						<s:if test="#request.jsRen.zhuma.wanfa=='10' || #request.jsRen.zhuma.wanfa=='20' || #request.jsRen.zhuma.wanfa=='30'">
							<s:property value="#request.jsRen.zhuma.betcode"/> 
						</s:if>
						<s:if test="#request.jsRen.zhuma.wanfa=='40' || #request.jsRen.zhuma.wanfa=='50'">
							红球胆码：<s:property value="#request.jsRen.zhuma.redDanma"/><br/>
							红球拖码：<s:property value="#request.jsRen.zhuma.redTuoma"/><br/>
							蓝球：<s:property value="#request.jsRen.zhuma.blueBall"/>  
						</s:if>
				</s:if>
				<!-- 福彩3D注码解析显示 -->
				<s:elseif test='#request.jsRen.lotno=="F47103"||#request.jsRen.lotno=="D3"'>
					<s:property value="#request.jsRen.zhuma.betcode"/>
				</s:elseif>
				<!-- 七乐彩注码解析显示 -->
					<s:elseif test='#request.jsRen.lotno=="F47102"||#request.jsRen.lotno=="QL730"'>
						<s:if test="#request.jsRen.zhuma.wanfa=='00'">
						   <s:property value="#request.jsRen.zhuma.betcode" escape="false"/>
						</s:if>
						<s:elseif test="#request.jsRen.zhuma.wanfa=='10'"><s:property value="#request.jsRen.zhuma.betcode"/></s:elseif>
						<s:elseif test="#request.jsRen.zhuma.wanfa=='20'">
						    胆码：<s:property value="#request.jsRen.zhuma.danma"/><br/>
						    拖码：<s:property value="#request.jsRen.zhuma.tuoma"/>
						</s:elseif>
					</s:elseif>
				<!-- 排列三注码解析显示 -->
				<s:elseif test='#request.jsRen.lotno=="T01002"||#request.jsRen.lotno=="PL3_33"'>
					<s:property value="#request.jsRen.zhuma.betcode" escape="false"/>
				</s:elseif>
				<s:elseif test='#request.jsRen.lotno=="T01011"||#request.jsRen.lotno=="PLW_35"'>
					<s:property value="(#request.jsRen.zhuma.betcode).replaceAll(';','<br/>')" escape="false"/>
				</s:elseif>
				<s:elseif test='#request.jsRen.lotno=="T01009"||#request.jsRen.lotno=="QXC_10022"'>
					<s:property value="(#request.jsRen.zhuma.betcode).replaceAll(';','<br/>')" escape="false"/>
				</s:elseif>
				<!-- 大乐透注码解析显示 -->
				<s:elseif test='#request.jsRen.lotno=="T01001"||#request.jsRen.lotno=="DLT_23529"'>
					<s:if test="#request.jsRen.zhuma.wanfa==0"><s:property value="(#request.jsRen.zhuma.betcode).replaceAll(';','<br/>')" escape="false" default="" /></s:if>
					<s:if test="#request.jsRen.zhuma.wanfa==1"><s:property value="#request.jsRen.zhuma.betcode"/></s:if>
					<s:if test="#request.jsRen.zhuma.wanfa==2">
						前区胆码：<s:property value="#request.jsRen.zhuma.qianDanma"/><br/>
						前区拖码：<s:property value="#request.jsRen.zhuma.qianTuoma"/><br/>
						后区胆码：<s:property value="#request.jsRen.zhuma.houDanma"/><br/>
						后区拖码：<s:property value="#request.jsRen.zhuma.houTuoma"/>
					</s:if>
					<s:if test="#request.jsRen.zhuma.wanfa==3"><s:property value="#request.jsRen.zhuma.betcode"/></s:if>
				</s:elseif>
				<!-- 时时彩 -->
				<s:elseif test='#request.jsRen.lotno=="T01007"||#request.jsRen.lotno=="SSC_10401"'>
					<s:if test="#request.jsRen.zhuma.wanfa=='DD'">
						<s:if test="#request.jsRen.betcode.split('|')[4]==1">小</s:if>
						<s:if test="#request.jsRen.betcode.split('|')[4]==2">大</s:if>
						<s:if test="#request.jsRen.betcode.split('|')[4]==4">双</s:if>
						<s:if test="#request.jsRen.betcode.split('|')[4]==5">单</s:if>
						<s:if test="#request.jsRen.betcode.split('|')[5]==1">小</s:if>
						<s:if test="#request.jsRen.betcode.split('|')[5]==2">大</s:if>
						<s:if test="#request.jsRen.betcode.split('|')[5]==4">双</s:if>
						<s:if test="#request.jsRen.betcode.split('|')[5]==5">单</s:if>
					</s:if><s:else>
						<s:property value="#request.jsRen.zhuma.betcode" escape="false" default=""/>
					</s:else>
				</s:elseif>
				<s:else><s:property value="#request.jsRen.zhuma.betcode" escape="false"/></s:else>
				</div>
			 </div>	
		  </li>
		</ul>
	</div>
	<s:if test='#request.prize.state=="has"'>
		<s:if test='#request.jsRen.lotno=="F47104"||#request.jsRen.lotno=="B001"'>
		<div class="tzhxq_hang4">
				<ul><li class="tzhxq_left4">开奖号码</li>
					<li class="tzhxq_right4"><span class="red"><s:property value="#request.prize.win_base_code"/></span>&nbsp;
					|&nbsp;<span class="blue"><s:property value="#request.prize.win_special_code"/></span></li>
				</ul>
		</div>
		</s:if>
		
		<s:if test='#request.jsRen.lotno=="F47103"||#request.jsRen.lotno=="D3"'>
		<div class="tzhxq_hang4">
				<ul><li class="tzhxq_left4">开奖号码</li>
					<li class="tzhxq_right4">
						<span class="red">
							<s:property value="#request.prize.win_base_code"/>
						</span>
					</li>
				</ul>
		</div>
		</s:if>
		
		<s:if test='#request.jsRen.lotno=="F47102"||#request.jsRen.lotno=="QL730"'>
		<div class="tzhxq_hang4">
				<ul><li class="tzhxq_left4">开奖号码</li>
					<li class="tzhxq_right4"><span class="red"><s:property value="#request.prize.win_base_code"/></span>&nbsp;
						|&nbsp;<span class="blue"><s:property value="#request.prize.win_special_code"/></span>
					</li>
				</ul>
		</div>
		</s:if>
		
		<s:if test='#request.jsRen.lotno=="T01002"||#request.jsRen.lotno=="PL3_33"'>
		<div class="tzhxq_hang4">
				<ul><li class="tzhxq_left4">开奖号码</li>
					<li class="tzhxq_right4"><span class="red"><s:property value="#request.prize.win_base_code"/></span></li>
				</ul>
		</div>
		</s:if>
		
		<s:if test='#request.jsRen.lotno=="T01001"||#request.jsRen.lotno=="DLT_23529"'>
		<div class="tzhxq_hang4">
				<ul><li class="tzhxq_left4">开奖号码</li>
					<li class="tzhxq_right4"><span class="red"><s:property value="#request.prize.win_base_code"/></span>&nbsp;
						|&nbsp;<span class="blue"><s:property value="#request.prize.win_special_code"/></span>
					</li>
				</ul>
		</div>
		</s:if>
		
		<s:if test='#request.jsRen.lotno=="T01011"||#request.jsRen.lotno=="PLW_35"'>
		<div class="tzhxq_hang4">
				<ul><li class="tzhxq_left4">开奖号码</li>
					<li class="tzhxq_right4">
						<span class="red">
							<s:property value="#request.prize.win_base_code"/>
						</span>
					</li>
				</ul>
		</div>
		</s:if>
		
		<s:if test='#request.jsRen.lotno=="T01009"||#request.jsRen.lotno=="QXC_10022"'>
		<div class="tzhxq_hang4">
				<ul><li class="tzhxq_left4">开奖号码</li>
					<li class="tzhxq_right4">
						<span class="red">
							<s:property value="#request.prize.win_base_code"/>
						</span>
					</li>
				</ul>
		</div>
		</s:if>
		
		<s:if test='#request.jsRen.lotno=="T01007"||#request.jsRen.lotno=="SSC_10401"'>
		<div class="tzhxq_hang4">
				<ul><li class="tzhxq_left4">开奖号码</li>
					<li class="tzhxq_right4">
						<span class="red">
							<s:property value="#request.prize.win_base_code"/>
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
					<s:if test='#request.jsRen.prizeinfo!=null'>
						特等奖<s:property value="#request.jsRen.prizeinfo.prizeinfo0"/>注，
						一等奖<s:property value="#request.jsRen.prizeinfo.prizeinfo1"/>注，
						二等奖<s:property value="#request.jsRen.prizeinfo.prizeinfo2"/>注，
						三等奖<s:property value="#request.jsRen.prizeinfo.prizeinfo3"/>注，
						四等奖<s:property value="#request.jsRen.prizeinfo.prizeinfo4"/>注，
						五等奖<s:property value="#request.jsRen.prizeinfo.prizeinfo5"/>注，
						六等奖<s:property value="#request.jsRen.prizeinfo.prizeinfo6"/>注，
						共计<s:property value="#request.jsRen.prizeamt/100"/>元。
					</s:if>
					<s:else>未中奖</s:else>
				</li>
			</ul>
		</div>*/%>
		
	</s:if>
	
	</div>
	
</div>
	