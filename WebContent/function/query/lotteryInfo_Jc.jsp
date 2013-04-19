<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@taglib prefix="s" uri="/struts-tags" %>
<!--开奖中心右边-->	
	<div class="lotteryAnnouncement">
	<input type="hidden" id="lotno" value="F47103"/>
		<div class="announcement_border">
			<h2>竞彩足球开奖信息</h2>
			<form action="#" id="querydrawInfo"  method="post"
			 onsubmit='return TZSelectreHtmlInParameters("J00001", this.beginTime.value ,"","date="++"&type=1" , "");'>
			<div class="Saishi-chaxun">查询赛果：
			<input id ="beginTime" name="beginTime" type="text" 
			class="Wdate" value="" onfocus="WdatePicker({alwaysUseStartDate:true})" />
			<input type="submit" value="查询" class="Saishi-chaxunBtn">
			</div>
            </form>
           <div class="new-pro-table">
           		<table width="100%" cellspacing="0" cellpadding="0">
                          <tr height="24" bgcolor="#EBF3FE" style="line-height:24px; height:24px">
                            <td>场次</td>
                            <td width="120">比赛时间</td>
                            <td>赛事</td>
                            <td class="bas-pep">主队</td>
                            <td>让球</td>
                            <td class="bas-pep">客队</td>
                            <td>数据</td>
                            <td>半场</td>
                            <td>全场</td>
                            <td>赛果</td>
                            <td>进球数</td>
                          </tr>
                  <s:iterator value="#request.jcdrawlist"  var="jclist" status="s">
<%--                   <s:if test="${s%2==0}"> <tr></s:if><s:else> <tr class="pro-gray-tr"></s:else> --%>
                         <tr class="pro-gray-tr">
                            <td><s:property value="#jclist.matches.weekid"/><s:property value="#jclist.matches.teamid"/></td>
                            <td><s:property value="#jclist.matches.time"/></td>
                            <td><s:property value="#jclist.matches.league"/></td>
                            <td><s:property value="#jclist.matches.zteam"/></td>
                            <td>[<s:property value="#jclist.result.letpoint"/>]</td>
                            <td><s:property value="#jclist.matches.kteam"/></td>
                            <td class="shuju"><a href="#">析</a></td>
                            <td class="new-red-one"><s:property value="#jclist.result.firsthalfresult"/></td>
                            <td class="new-red-one"><s:property value="#jclist.result.result"/></td>
                            <td class="new-red-two"><s:property value="#jclist.result.saiguo"/></td>
                            <td class="new-red-three"><s:property value="#jclist.result.zongjinqiu"/></td>
                          </tr>
                         </s:iterator>
                  </table>
           </div>
		</div>
		<script>
			$(function(){
				$(".a_fucai3D").addClass("selected");
			});
		</script>
	</div>
</div>