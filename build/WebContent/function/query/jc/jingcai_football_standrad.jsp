<%@ page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<div class="zucaitable" id="zucai_standrad">
	<table style="border-collapse: collapse;" cellpadding="0" cellspacing="0">
		<tr class="zucai_tr">
			<td class="zucai_biao1"  rowspan="2" style=" background:#F8F8F8; border-bottom:1px solid #D5D5D5;">NO</td>
			<td class="zucai_biao1"  rowspan="2" style=" background:#F8F8F8; border-bottom:1px solid #D5D5D5;">赛事类型</td>
			<td class="zucai_biao1"  rowspan="2" style=" background:#F8F8F8; border-bottom:1px solid #D5D5D5;">比赛时间</td>
			<td class="zucai_biao1"  rowspan="2" style=" background:#F8F8F8; border-bottom:1px solid #D5D5D5;">主队</td>
			<td class="zucai_biao1"  rowspan="2" style=" background:#F8F8F8; border-bottom:1px solid #D5D5D5;">让</td>
			<td class="zucai_biao1"  rowspan="2" style=" background:#F8F8F8; border-bottom:1px solid #D5D5D5;">客队</td>
<!--			<td class="zucai_biao1"  rowspan="2">平均赔率</td>-->
			<td class="zucai_biao1"  rowspan="2" style=" background:#F8F8F8; border-bottom:1px solid #D5D5D5;">数据</td>
			<td class="zucai_biao1"  colspan="3" style=" background:#F8F8F8; border-bottom:1px solid #D5D5D5;">投注区</td>
			<td class="zucai_biao1"  rowspan="2" style=" background:#F8F8F8; border-bottom:1px solid #D5D5D5; border-right:none;">包</td>
		</tr>
		<tr class="zucai_tr">
			<td class="zucai_biao2" width="49" style="padding:3px 0px; background:#F8F8F8; border-bottom:1px solid #D5D5D5;">胜
			</td>
			<td class="zucai_biao2" width="49" style="padding:3px 0px; background:#F8F8F8; border-bottom:1px solid #D5D5D5;">平
			</td>
			<td class="zucai_biao2" width="50" style="padding:3px 0px; background:#F8F8F8; border-bottom:1px solid #D5D5D5;">负
			</td>
		</tr>
	</table>
	<s:if test="#request.duizhenInfos!=null">
	<s:iterator value="#request.duizhenInfos" id="duizhen">
       	<table style="border-collapse: collapse;" cellpadding="0" cellspacing="0">
		<s:iterator value="#duizhen" status="stat" id="duizhenChidren">
			<s:if test="peilv.vs.letPoint!=''&&peilv.vs.v3!=''&&peilv.vs.v1!=''&&peilv.vs.v0!=''">
				<s:if test="#stat.last"><input type="hidden" id="count" name="count" value="<s:property value="#stat.count"/>"/></s:if>
				<s:if test="#stat.count == 1">
				<tr>
					<td colspan="16" style="padding:10px 0px; font-weight:bold;"><s:property value="newday"/>  <s:property value="newweek"/>(12:00--次日12:00)</td>
					<input type="hidden" name="day" value="<s:property value="day"/>" />
				</tr>
				</s:if>
				<s:if test="#stat.last">
				<tr id="tr_<s:property value="day"/>_<s:property value="#stat.count"/>" class="<s:if test="#stat.even">zucai_tr1</s:if> zucaitable_borderBottom td" style="background:${o1.odd?#FFFFFF:#F9F9F9 };">
				</s:if>
				<s:else>
				<tr id="tr_<s:property value="day"/>_<s:property value="#stat.count"/>" class="<s:if test="#stat.even">zucai_tr1</s:if>" style="background:${o1.odd?#FFFFFF:#F9F9F9 };">
				</s:else>
					<input type="hidden" id="day_<s:property value="day"/>_<s:property value="#stat.count"/>" value="<s:property value="day"/>" />
					<input type="hidden" id="weekid_<s:property value="day"/>_<s:property value="#stat.count"/>" value="<s:property value="weekid"/>" />
	              <td id="no_<s:property value="day"/>_<s:property value="#stat.count"/>" class="zucai_biao5"><s:property value="teamid"/></td>
	              <td class="zucai_biao9"><s:property value="league"/></td>
	              <td class="zucai_biao9"><s:property value="gameTime"/></td>
	              <td id="hteam_<s:property value="day"/>_<s:property value="#stat.count"/>" class="zucai_biao6" >
						<s:property value="team1"/>
				  </td>
	              <td class="zucai_biao5" style="text-align: center; border-left:1px solid #D5D5D5;">
	                <s:property value="peilv.vs.letPoint"/>
	              </td>
	              <td id="vteam_<s:property value="day"/>_<s:property value="#stat.count"/>" class="zucai_biao5">
	               	<s:property value="team2"/>
	              </td>
	              <td class="zucai_biao5">
	              <font class="blue">
					<a target="_blank"  href="<s:property value="ou"/>">欧</a>
					<a target="_blank"  href="<s:property value="ya"/>">亚</a>
					<a target="_blank"  href="<s:property value="xi"/>">析</a>
	              </font></td>
					<td class="zucai_biao6" style="width: 46px; padding:0 3px;">
						<span id="ball3_<s:property value="day"/>_<s:property value="#stat.count"/>" class="result_3" onclick="checkColorButton($(this),<s:property value="day"/>,3,<s:property value="#stat.count"/>);">
						<s:property value="peilv.vs.v3"/>                                                                                              
						</span>                                                                                                                        
					</td>                                                                                                                              
					<td class="zucai_biao6" style="width: 46px; padding:0 3px;">                                                                                                           
						<span id="ball1_<s:property value="day"/>_<s:property value="#stat.count"/>" class="result_3" onclick="checkColorButton($(this),<s:property value="day"/>,1,<s:property value="#stat.count"/>);">
						<s:property value="peilv.vs.v1"/>                                                                                              
						</span>                                                                                                                        
					</td>                                                                                                                              
					<td class="zucai_biao5" style="width: 46px;padding:0 3px;">                                                                                                           
						<span id="ball0_<s:property value="day"/>_<s:property value="#stat.count"/>" class="result_3" onclick="checkColorButton($(this),<s:property value="day"/>,0,<s:property value="#stat.count"/>);">
						<s:property value="peilv.vs.v0"/> 
						</span>
					</td>
				  <td  class="zucai_biao5" style="border-right:none;"><input id="checkbox_<s:property value="day"/>_<s:property value="#stat.count"/>" type="checkbox" name="checkbox" value="checkbox" onclick="changeColorCheckbox(<s:property value="day"/>,<s:property value="#stat.count"/>);"/></td>
				</tr>
			</s:if>
		</s:iterator>
	</table>
		</s:iterator>
	</s:if>
<script type="text/javascript">cleanReadySPF();</script>
</div>