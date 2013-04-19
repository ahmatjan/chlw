<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<table border="0" cellpadding="0" cellspacing="0" width="298">
  <tbody><tr class="yellowtr">
              <td>投注时间</td>
              <td>期号</td>
              <td>订单号</td>
              <td>方案状态</td>
            </tr>
            <s:if test='#request.list.size()>0'>
             <s:iterator id="list"  value="#request.list">	
			    
				  <tr>
				    <td class="near_biao1"><s:property value="ordertime.substring(0,10)"/></td>
				    <td class="near_biao1"><s:property value="batchcode"/></td>
				    <td class="near_biao1">
					    <a title="点击查看投注详情" href="/rules/oneBetInfo.html?flowno=<s:property value="flowno"/>&play_name=<s:property value="lotno"/>&batchcode=<s:property value="batchcode"/>" target="_blank" >
					    <s:property value="flowno"/></a></td>
				    <td class="near_biao1">
			    		<s:if test='settleflag==2'>未开奖</s:if>
						<s:elseif test='settleflag==0'>已开奖</s:elseif>
						<s:elseif test='settleflag==1 || settleflag==9 || settleflag==3'>已派奖</s:elseif>
						<s:else>&nbsp;</s:else>
				    </td>
				  </tr>
		</s:iterator>
		</s:if><s:else>
		  <tr>
		    <td class="near_biao1" colspan="5">"无查询记录"</td>
		  </tr>
		</s:else>
   </tbody>
</table>