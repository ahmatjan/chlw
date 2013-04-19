<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

 <%@taglib prefix="s" uri="/struts-tags"%>
 					<div class="tabcon1">
						<div class="tabq">一等奖奖池<br />899089866元</div>
						<div class="tabs">单式停售时间：12-14 10:30<br />复式停售时间：12-14 19:40<br />每周二、四、日晚21点35分开奖</div>
					</div>
			<div class="tabcon2">
					<div class="tabcon2_head"><s:if test='#request.info.play_name=="F47104"||#request.info.play_name=="B001"' >双色球</s:if>
							<s:if test='#request.info.play_name=="F47103"||#request.info.play_name=="D3"'>福彩3D</s:if>
							<s:if test='#request.info.play_name=="F47102"||#request.info.play_name=="QL730"' >七乐彩</s:if>
							<s:if test='#request.info.play_name=="F47101"||#request.info.play_name=="DT5"' >时时彩</s:if>
							<s:if test='#request.info.play_name=="T01002"||#request.info.play_name=="PL3_33"' >排列三</s:if>
							<s:if test='#request.info.play_name=="T01001"||#request.info.play_name=="DLT_23529"' >大乐透</s:if>第<s:property value="#request.info.term_code"/>期开奖结果</div>
						<div class="tabcon2_con">
							<ul>						
										<!-- 红球处理  --> 
							 <s:if test='#request.info.play_name=="T01001"||#request.info.play_name=="DLT_23529"'>
								<s:iterator value="#request.dlt">
									<li class="hongqiu"><s:property value="fjs"/></li>
								</s:iterator>
							</s:if>
							<s:if test='#request.info.play_name=="F47104"'>
								<s:iterator value="#request.list">
									<li class="hongqiu"><s:property value="fjs"/></li>
								</s:iterator>
							</s:if>
																					
								<!--  黄球处理-->
							<s:else>
								<s:iterator value="#request.list">
									<li class="huangqiu"><s:property value="fjs"/></li>
								</s:iterator>

							</s:else>	
							
									<!-- 蓝球处理  -->				
							<s:if test='#request.info.play_name=="T01001"||#request.info.play_name=="DLT_23529"'>
								<s:iterator  id="drq" value="#request.qjdlt">
									<li class="lanqiu"><s:property value="#drq.fjs"/></li>
								</s:iterator>
			           		</s:if>

			           		<s:if test='#request.info.play_name=="F47104"||#request.info.play_name=="F47102"'>
								<li class="lanqiu"><s:property value="#request.win_special_code"/></li>
							</s:if>
						</ul>
						</div>
			 </div>
			<div class="tabcon3"><table width="238"border="0"cellspacing="0" cellpadding="0">
				  <tr>
					<td class="tabt" colspan="2">奖项</td>
					<td class="tabt">注数（注）</td>
					<td class="tabt">奖金（元）</td>
				  </tr>
				  <tr >
					<td class="tabt1">一等奖</td>
					<td class="tabt1">6+1</td>
					<td class="tabt1"><s:property value="#request.info.win_num1"/></td>
					<td class="tabt1"><s:property value="#request.info.win_money1/100"/></td>
				  </tr>
				  <tr>
					<td class="tabt1">二等奖</td>
					<td class="tabt1">6+0</td>
					<td class="tabt1"><s:property value="#request.info.win_num2"/></td>
					<td class="tabt1"><s:property value="#request.info.win_money2/100"/></td>
				  </tr>
				  <tr>
					<td class="tabt1">三等奖</td>
					<td class="tabt1">5+1</td>
					<td class="tabt1"><s:property value="#request.info.win_num3"/></td>
					<td class="tabt1"><s:property value="#request.info.win_money3/100"/></td>
				  </tr>
				  <tr>
					<td class="tabt1">四等奖</td>
					<td class="tabt1">5+0/4+1</td>
					<td class="tabt1"><s:property value="#request.info.win_num4"/></td>
					<td class="tabt1"><s:property value="#request.info.win_money4/100"/></td>
				  </tr>
				  <tr>
					<td class="tabt1">五等奖</td>
					<td class="tabt1">4+0/3+1</td>
					<td class="tabt1"><s:property value="#request.info.win_num5"/></td>
					<td class="tabt1"><s:property value="#request.info.win_money5/100"/></td>
				  </tr>
				  <tr>
					<td class="tabt1">六等奖</td>
					<td class="tabt1">2+1/1+1/0+1</td>
					<td class="tabt1"><s:property value="#request.info.win_num6"/></td>
					<td class="tabt1"><s:property value="#request.info.win_money6/100"/></td>
				  </tr>
				</table>
		</div>
