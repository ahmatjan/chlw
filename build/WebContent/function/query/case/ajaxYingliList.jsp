<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@taglib prefix="s" uri="/struts-tags"%>
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="ChangeTable">
		<thead><tr>
			<td>序号</td>
			<th>期号</th>
			<th>方案类型</th>
			<th>方案金额</th>
			<th>税前奖金</th>
			<th>方案状态</th>
		</tr></thead>
		<tbody>
	<s:iterator id="list"  value="#request.yingliZhanJiList.list" status="i" >
		<tr <s:if test='#i.index%2==0' >class="TrbgGrey"</s:if>>
			<td>${i.index+1}</td>
			<td>${list.caseLot.batchcode}</td>
			<td id="y_${i.index}">
			<s:if test='!(#request.torder.memo.equals("null"))'>
			${list.torder.memo}
			</s:if>
			<s:else>-</s:else>
			</td>
			<td>${list.caseLot.totalAmt/100}</td>
			<s:if test='#list.caseLot.winBigAmt==null||#list.caseLot.winBigAmt.equals("null")'>
			<td>-</td>
			</s:if><s:else>
			<td>${list.caseLot.winBigAmt/100}</td>
			</s:else>
			<td><s:if test="#list.caseLot.state==3 || #list.caseLot.state==5">成功</s:if><s:else>失败</s:else></td>
		</tr>
	</s:iterator>
	</tbody>
		<script>
		$(function(){
				for ( var i = 0; i < 10; i++) {
                    if($("#y_"+i).text().trim() == "null"){
                    	$("#y_"+i).html($("#Yingli_lotno_cn_df").val()+"复式");
                        }
				}
			});
			
			</script>
</table>
<div class="gainlotteryshow" id="Yingli_lotno_cn">
				<input id="BtnYl" type="button" <s:if test="#selected_Yingli_state == 5">class="BaseBtn BtnDown"</s:if><s:else>class="BaseBtn"</s:else> onclick='if($("#Yingli_state").val()==-1){$("#Yingli_state").val("5");}else{$("#Yingli_state").val("-1");}$("#CaseYingliSelectForm").submit();' value="仅显示成功方案" />
</div>
<p><s:set  name="pageCount"  value="%{#parameters.pageCount[0]}"/>${pageHtml}</p>
<!--表格结束-->
