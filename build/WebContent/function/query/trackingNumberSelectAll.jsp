<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
		<div class="user_head">
			<div class="user_zi">我的追号记录</div>
		</div>
		<div class="user_content">
			<div class="record_title">
				<div class="record_title_zi">追号记录</div>
		    </div>
		<form action="/chlw/user/selectAll!trackingNumberSelectAll" method="post" onsubmit="return reHtmlInParameters(this.lotNo.value,this.startDate.value,this.stopDate.value)">
		  <div class="record_zh">
				<div class="record_zhh">
				<span>彩种:<select  name="lotNo" onchange="toLotNo(this)">
							  <option value="" selected="selected">请选择彩种</option>
							  <option value="F47104"  <s:if test='#request.lotNo=="F47104"'>selected="selected"</s:if>>双色球</option>
							  <option value="F47103" <s:if test='#request.lotNo=="F47103"'>selected="selected"</s:if>>福彩3D</option>
							  <option value="F47102" <s:if test='#request.lotNo=="F47102"'>selected="selected"</s:if>>七乐彩</option>
							  <option value="T01001" <s:if test='#request.lotNo=="T01001"'>selected="selected"</s:if>>大乐透</option>
							  <option value="T01002" <s:if test='#request.lotNo=="T01002"'>selected="selected"</s:if>>排列三</option>		
						</select></span><span>开始时间:<input type="text" id="startDate" name="startDate" onFocus="WdatePicker({startDate:'1980-05-01',alwaysUseStartDate:true})" value="${startDate}"/></span><span> 结束时间:<input type="text" id="stopDate" name="stopDate" onFocus="WdatePicker()" value="${stopDate}"/></span>
				 </div>
				<div><input class="chx_btn" type="submit" value=""/></div>
		  </div>
		 </form>
			<div class="record_content">
				<table width="800" height="78" border="0" cellpadding="0" cellspacing="0">
				  	 <tr>
				  	 
					  	 <td width="88" class="record_biao1">彩种</td>
						<td width="154" class="record_biao1">发起时间</td>
						<td width="102" class="record_biao1">注数</td>
						<td width="112" class="record_biao1">总金额（元）</td>
						<td width="96" class="record_biao1">已追期数</td>
						<td width="96" class="record_biao1">剩余期数</td>
						<td width="152" class="record_biao1">操作</td>
					  </tr>
				 <s:iterator  value="#request.list" status ="stat">
					  <tr>
					  	<s:if test='#stat.isEven()'>	
						<td class="record_biao3">
					  		<s:if test='lotNo=="F47104"||lotNo=="B001"' >双色球</s:if>
							<s:if test='lotNo=="F47103"||lotNo=="D3"'>福彩3D</s:if>
							<s:if test='lotNo=="F47102"||lotNo=="QL730"' >七乐彩</s:if>
							<s:if test='lotNo=="T01002"||lotNo=="PL3_33"' >排列三</s:if>
							<s:if test='lotNo=="T01001"||lotNo=="DLT_23529"' >大乐透</s:if></td>
							<td class="record_biao3"><s:property value="orderTime"/></td>
							<td class="record_biao3"><s:property value="betNum"/></td>
							<td class="record_biao3"><s:property value="amount/100"/></td>
							<td class="record_biao3"><s:property value="batchNum"/></td>
							<td class="record_biao3"><s:property value="lastNum"/></td>
							<td class="record_biao3"><s:property value="flowNo"/></td>
						</s:if>
							
						<s:else>
							<td class="record_biao2">
					  		<s:if test='lotNo=="F47104"||lotNo=="B001"' >双色球</s:if>
							<s:if test='lotNo=="F47103"||lotNo=="D3"'>福彩3D</s:if>
							<s:if test='lotNo=="F47102"||lotNo=="QL730"' >七乐彩</s:if>
							<s:if test='lotNo=="T01002"||lotNo=="PL3_33"' >排列三</s:if>
							<s:if test='lotNo=="T01001"||lotNo=="DLT_23529"' >大乐透</s:if></td>
							<td class="record_biao2"><s:property value="orderTime"/></td>
							<td class="record_biao2"><s:property value="betNum"/></td>
							<td class="record_biao2"><s:property value="amount/100"/></td>
							<td class="record_biao2"><s:property value="batchNum"/></td>
							<td class="record_biao2"><s:property value="lastNum"/></td>
							<td class="record_biao2"><s:property value="flowNo"/></td>
							</s:else>
					  </tr>
				</s:iterator>
					<tr><td><s:property value="#request.message"/></td></tr>
			</table>
	</div>
	<div class="account_page">
	  ${pageHtml}
	</div>
</div>




