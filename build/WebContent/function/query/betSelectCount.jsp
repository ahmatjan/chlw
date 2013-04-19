<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
		<div class="home_head">
			<div class="home_zi">近期投注记录</div>
		</div>
		<div class="home_content">
			<table width="480" height="113" border="0" cellpadding="0" cellspacing="0">
			  <tr>
			    <td class="near_biao">投注时间</td>
			    <td class="near_biao">彩种</td>
			    <td class="near_biao">方案状态</td>
			    <td class="near_biao">投注金额(元)</td>
			    <td class="near_biao">详细</td>
			  </tr>
			    <s:iterator  value="#request.list">	
			    <s:if test="#request.list.length>0">
				  <tr>
				    <td class="near_biao1"><s:property value="sell_datetime"/></td>
				    <td class="near_biao1">
				    	<s:if test='play_name=="F47104"||play_name=="B001"' >双色球</s:if>
						<s:if test='play_name=="F47103"||play_name=="D3"'>福彩3D</s:if>
						<s:if test='play_name=="F47102"||play_name=="QL730"' >七乐彩</s:if>
						<s:if test='play_name=="T01002"||play_name=="PL3_33"' >排列三</s:if>
						<s:if test='play_name=="T01001"||play_name=="DLT_23529"' >超级大乐透</s:if>
					</td>
				    <td class="near_biao1">
					    <s:if test="state=='0'">失败</s:if> 
					    <s:if test="state=='1'">成功</s:if>
					    <s:if test="state=='2'">处理中</s:if>
				    </td>
				    <td class="near_biao1"><s:property value="amt/100"/></td>
				    <td class="near_biao1"><a href="javascript:$('#details').toggle();">查看</a>
				       <!-- 详细弹出层 -->	
						<div class="details" id="details">
							<div class="details_issue">期号：<span><s:property value="batchcode"/></span>期</div>
							<div class="details_record">
								<div class="details_record_head">注码：</div>
								<div class="details_record_con">
									<ul>
										<li>1，2，3，4，5，6，7</li>
										<li>1，2，3，4，5，6，7</li>
										<li>1，2，3，4，5，6，7</li>
									</ul>
								</div>
							</div>
						</div>
				    </td>
				  </tr>
				  </s:if><s:else>
				  <tr>
				    <td class="near_biao1" colspan="5">"无查询记录"</td>
				  </tr>
				  </s:else>
				</s:iterator>
			</table>
		</div>