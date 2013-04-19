<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
		<div class="user_head">
			<div class="user_zi">我的中奖记录</div>
		</div>
	<div class="user_content">
			<div class="record_title">
				<div class="record_title_zi">中奖记录</div>
			</div>
		<form action="/chlw/user/selectAll!winSelect" method="post">
		  <div class="record_zh">
				<div class="record_zhh">
				<span>彩种:<select  name="lotNo">
							  <option value="" selected="selected">请选择彩种</option>
							  <option value="F47104"  <s:if test='#request.lotNo=="F47104"'>selected="selected"</s:if>>双色球</option>
							  <option value="F47103" <s:if test='#request.lotNo=="F47103"'>selected="selected"</s:if>>福彩3D</option>
							  <option value="F47102" <s:if test='#request.lotNo=="F47102"'>selected="selected"</s:if>>七乐彩</option>
							  <option value="T01001" <s:if test='#request.lotNo=="T01001"'>selected="selected"</s:if>>大乐透</option>
							  <option value="T01002" <s:if test='#request.lotNo=="T01002"'>selected="selected"</s:if>>排列三</option>		
						</select></span>
				  <span>开始时间:<input type="text" id="startDate" name="startDate" onFocus="WdatePicker({startDate:'1980-05-01',alwaysUseStartDate:true})" value="${startDate}"/></span> <span> 结束时间:<input type="text" id="stopDate" name="stopDate" onFocus="WdatePicker()" value="${stopDate}"/></span></div>
				<div><input class="chx_btn" type="submit" value=""/></div>
		  </div>
		 </form>
		 <div class="record_content">
			 <table width="800" height="78" border="0" cellpadding="0" cellspacing="0">
			   <tr>
			      <td width="109" class="record_biao1">彩种</td>
			      <td width="145" class="record_biao1">期号</td>
			      <td width="180" class="record_biao1">投注时间</td>
			      <td width="140" class="record_biao1">中奖号码</td>
			      <td width="109" class="record_biao1">中奖金额（元）</td>
			      <td width="109" class="record_biao1">中奖标志</td>
			      <td width="117" class="record_biao1">弃奖日期</td>
		        </tr>
		       <tr><td><s:property value="#request.message"/></td></tr>
	 		   <s:iterator value="#request.list" status="stat" id="stat">

			    <tr>
			    <s:if test='#stat.isEven()'>	
				    <td class="record_biao3">
					    <s:if test='play_name=="F47104"||play_name=="B001"' >双色球</s:if>
						<s:if test='play_name=="F47103"||play_name=="D3"'>福彩3D</s:if>
						<s:if test='play_name=="F47102"||play_name=="QL730"' >七乐彩</s:if>
						<s:if test='play_name=="T01002"||play_name=="PL3_33"' >排列三</s:if>
						<s:if test='play_name=="T01001"||play_name=="DLT_23529"' >大乐透</s:if>
					</td>
				    <td class="record_biao3"><s:property value="#stat.batchcode"/></td>
					<td class="record_biao3"><s:property value="#stat.sell_datetime"/></td> 
					<td class="record_biao3"><s:property value="#stat.betcode"/></td> 
				    <td class="record_biao3"><s:property value="#stat.prizeamt/100"/></td>
					<td class="record_biao3"><s:property value="#stat.encash_flag"/></td>
					<td class="record_biao3"><s:property value="#stat.abandon_date_time"/></td>
				</s:if>
				<s:else>
					<td class="record_biao2">
					    <s:if test='play_name=="F47104"||play_name=="B001"' >双色球</s:if>
						<s:if test='play_name=="F47103"||play_name=="D3"'>福彩3D</s:if>
						<s:if test='play_name=="F47102"||play_name=="QL730"' >七乐彩</s:if>
						<s:if test='play_name=="T01002"||play_name=="PL3_33"' >排列三</s:if>
						<s:if test='play_name=="T01001"||play_name=="DLT_23529"' >大乐透</s:if>
					</td>
				    <td class="record_biao2"><s:property value="#stat.batchcode"/></td>
					<td class="record_biao2"><s:property value="#stat.sell_datetime"/></td> 
					<td class="record_biao2"><s:property value="#stat.betcode"/></td> 
				    <td class="record_biao2"><s:property value="#stat.prizeamt/100"/></td>
					<td class="record_biao2"><s:property value="#stat.encash_flag"/></td>
					<td class="record_biao2"><s:property value="#stat.abandon_date_time"/></td>		
				</s:else>	
		        </tr>
		      </s:iterator>
		      </table>
		</div>
	<div class="account_page">
	  	${pageHtml}
    </div>
</div>

