<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

 <%@taglib prefix="s" uri="/struts-tags"%>
 <input type="hidden" value="middle" name="hidden" id="hidden"/>
 

	    <div class="kjgg_title">
				<div class="kjgg_head"><s:if test='#request.info.play_name=="F47104"||#request.info.play_name=="B001"' >双色球</s:if>
							<s:if test='#request.info.play_name=="F47103"||#request.info.play_name=="D3"'>福彩3D</s:if>
							<s:if test='#request.info.play_name=="F47102"||#request.info.play_name=="QL730"' >七乐彩</s:if>
							<s:if test='#request.info.play_name=="F47101"||#request.info.play_name=="DT5"' >时时彩</s:if>
							<s:if test='#request.info.play_name=="T01002"||#request.info.play_name=="PL3_33"' >排列三</s:if>
							<s:if test='#request.info.play_name=="T01001"||#request.info.play_name=="DLT_23529"' >大乐透</s:if>
							开奖公告</div>
				<div class="kjsj">每周二、四、日晚21时35分开奖</div>
		</div>
		<div class="kjjg">
			<div class="kjjg1">
			  <div class="kjs">第<s:property value="#request.info.term_code"/>期开奖结果   开奖时间：后台无</div>
			  <div class="kjq">
					<ul>							
									<!-- 红球处理  --> 
						 <s:if test='#request.info.play_name=="T01001"||#request.info.play_name=="DLT_23529"'>
							<s:iterator value="#request.dlt">
								<li class="kjq_con_r"><s:property value="fjs"/></li>
							</s:iterator>
						</s:if>
						<s:if test='#request.info.play_name=="F47104"'>
							<s:iterator value="#request.list">
								<li class="kjq_con_r"><s:property value="fjs"/></li>
							</s:iterator>
						</s:if>
																				
									<!--  黄球处理-->
						<s:else>
							<s:iterator value="#request.list">
								<li class="kjq_con_h"><s:property value="fjs"/></li>
							</s:iterator>
						</s:else>

						
								<!-- 蓝球处理  -->				
						<s:if test='#request.info.play_name=="T01001"||#request.info.play_name=="DLT_23529"'>
							<s:iterator  id="drq" value="#request.qjdlt">
								<li class="kjq_con_b"><s:property value="#drq.fjs"/></li>
							</s:iterator>
		           		</s:if>

		           		<s:if test='#request.info.play_name=="F47104"||#request.info.play_name=="F47102"'>
							<li class="kjq_con_b"><s:property value="#request.win_special_code"/></li>
						</s:if>
				</ul>
			  </div>
			  <div class="kj_money">本期实际销售额<s:property value="#request.info.act_sell_amount/100"/>元<br />奖池积累：后台无返回数据</div>
			</div>
			<div class="kjjg2">
			  <table width="272" height="193" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FF00FF">
                <tr class="kjb">
                  <td width="79" height="35">奖励</td>
                  <td width="91">中奖注数</td>
                  <td width="102">每注奖金</td>
                </tr>
                <tr>
                  <td class="kjb1">一等奖</td>
                  <td class="kjb1"><s:property value="#request.info.win_num1"/></td>
                  <td class="kjb1"><s:property value="#request.info.win_money1/100"/>元</td>
                </tr>
                <tr>
                  <td class="kjb1">二等奖</td>
                  <td class="kjb1"><s:property value="#request.info.win_num2"/></td>
                  <td class="kjb1"><s:property value="#request.info.win_money2/100"/>元</td>
                </tr>
                <tr>
                  <td class="kjb1">三等奖</td>
                  <td class="kjb1"><s:property value="#request.info.win_num3"/></td>
                  <td class="kjb1"><s:property value="#request.info.win_money3/100"/>元</td>
                </tr>
                <tr>
                  <td class="kjb1">四等奖</td>
                  <td class="kjb1"><s:property value="#request.info.win_num4"/></td>
                  <td class="kjb1"><s:property value="#request.info.win_money4/100"/>元</td>
                </tr>
                <tr>
                  <td class="kjb1">五等奖</td>
                  <td class="kjb1"><s:property value="#request.info.win_num5"/></td>
                  <td class="kjb1"><s:property value="#request.info.win_money5/100"/>元</td>
                </tr>
                <tr>
                  <td class="kjb1">六等奖</td>
                  <td class="kjb1"><s:property value="#request.info.win_num6"/></td>
                  <td class="kjb1"><s:property value="#request.info.win_money6/100"/>元</td>
                </tr>
              </table>
			</div>
			</div>


