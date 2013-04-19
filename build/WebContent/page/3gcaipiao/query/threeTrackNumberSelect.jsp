<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<link href="/css/user.css" rel="stylesheet" type="text/css">
 <script type="text/javascript" src="/js/jqueryJS/jquery-1.5.min.js"></script>
 <script type="text/javascript" src="/js/My97DatePicker"></script>
 
		<div class="user_head">
			<div class="user_zi">我的投注--追号记录</div>
		</div>
		<div class="user_content">
		<form action="#" method="post" onsubmit="return reHtmlInParameters(this.lotNo.value,this.startDate.value,this.stopDate.value)" class="tzjl_form">
           <div class="zijin_nav1"><span>彩种：<select  name="lotNo">
				  <option value="" selected="selected">全部彩种</option>
				  <option value="F47104" <s:if test='request.getParameter("lotNo")=="F47104"'>selected="selected"</s:if>>双色球</option>
				  <option value="F47103" <s:if test='request.getParameter("lotNo")=="F47103"'>selected="selected"</s:if>>福彩3D</option>
				  <option value="F47102" <s:if test='request.getParameter("lotNo")=="F47102"'>selected="selected"</s:if>>七乐彩</option>
				  <option value="T01001" <s:if test='request.getParameter("lotNo")=="T01001"'>selected="selected"</s:if>>超级大乐透</option>
				  <option value="T01002" <s:if test='request.getParameter("lotNo")=="T01002"'>selected="selected"</s:if>>排列三</option>	
				  <option value="T01011" <s:if test='request.getParameter("lotNo")=="T01011"'>selected="selected"</s:if>>排列五</option>
			      <option value="T01009" <s:if test='request.getParameter("lotNo")=="T01009"'>selected="selected"</s:if>>七星彩</option>	
			      <option value="T01007" <s:if test='request.getParameter("lotNo")=="T01007"'>selected="selected"</s:if>>时时彩</option>		
		  </select></span>
         <% /* 类型：<select  name="state">
			  <option value="" selected="selected">全部投注</option>
			  <option value="1" <s:if test='request.getParameter("state")=="1"'>selected="selected"</s:if>>已完成</option>
			  <option value="2" <s:if test='request.getParameter("state")=="2"'>selected="selected"</s:if>>进行中</option>
		  </select>*/%> 
           </div>
           <div class="cz_cxxz">
              <div class="record_zhh">
                <span class="record_zhh1">起始日期：<input type="text" id="startDate" size="10" name="startDate"  onFocus="WdatePicker({alwaysUseStartDate:true})" value="${startDate}"/></span> 
                <span class="record_zhh1">终止日期：<input type="text" id="stopDate" size="10" name="stopDate" onFocus="WdatePicker({alwaysUseStartDate:true})" value="${stopDate}" /></span>
                <input class="cz_cxbtn" name="button"  type="submit" id="button" value="" />
              </div>
               <div class="tiaoshu">
               <%/*    
                <input name="dx" type="radio" id="radio1" value="10" checked="checked" />10条
                <input id="radio2" name="dx" type="radio" value="20" />20条
                <input id="radio3" name="dx" type="radio" value="30" />30条
                */%>
              </div>
            </div>
            <div class="tzjl_tzr">
              &nbsp;&nbsp;&nbsp;&nbsp;以下是 <s:property value="#session.user.NICKNAME"/>的历史追号记录
            </div>
			
            <div class="account_content">
              <table width="794"  border="0" cellpadding="0" cellspacing="0" class="zhzx_tab">
                <tr>
                  <td width="60" class="record_biao1">序号</td>
                  <td width="148" class="record_biao1">彩种</td>
                  <td width="154" class="record_biao1">玩法</td>
                  <td width="126" class="record_biao1">总金额</td>
                  <td width="127" class="record_biao1">总期数</td>
                  <td width="135" class="record_biao1">完成期数</td>
                  <td width="155" class="record_biao1">状态</td>
                  <td width="185" class="record_biao1">发起时间</td>
                  <%/*<td width="155" class="record_biao1">追号详情</td>*/ %>
                </tr>
                 <s:if test="#request.jaToPage==null">
                  <tr><td colspan="9" align="center"><s:property value="#request.message"/></td></tr>
                 </s:if>
                 <s:else>
                 	<s:iterator  value="#request.list" status ="stat">
					  <tr>
					  	<td class="record_biao3"><s:property value="#stat.index+1"/></td>
						<td class="record_biao3">
					  		<s:if test='lotNo=="F47104"||lotNo=="B001"' >双色球</s:if>
							<s:elseif test='lotNo=="F47103"||lotNo=="D3"'>福彩3D</s:elseif>
							<s:elseif test='lotNo=="F47102"||lotNo=="QL730"' >七乐彩</s:elseif>
							<s:elseif test='lotNo=="T01002"||lotNo=="PL3_33"' >排列三</s:elseif>
							<s:elseif test='lotNo=="T01001"||lotNo=="DLT_23529"' >大乐透</s:elseif>
							<s:elseif test='lotNo=="T01011"||lotNo=="PLW_35"'>排列五</s:elseif>
							<s:elseif test='lotNo=="T01009"||lotNo=="QXC_10022"'>七星彩</s:elseif>
							<s:elseif test='lotNo=="T01007"||lotNo=="SSC_10401"'>时时彩</s:elseif>
							<s:else>&nbsp;</s:else>
						</td>
						<td class="record_biao3">
							<s:if test='lotNo=="F47104"||lotNo=="B001"'>
								<s:if test="zCode.wanfa=='00' || zCode.wanfa=='10' || zCode.wanfa=='20' || zCode.wanfa=='30'">复式</s:if>
								<s:if test="zCode.wanfa=='40' || zCode.wanfa=='50'">胆拖</s:if>
							</s:if><s:elseif test='lotNo=="F47103"||lotNo=="D3"'>
								<s:if test="zCode.wanfa=='00' || zCode.wanfa=='20'">直选复式</s:if>
								<s:elseif test="zCode.wanfa=='10'">直选和值</s:elseif>
								<s:elseif test="zCode.wanfa=='11'">组三和值</s:elseif>
								<s:elseif test="zCode.wanfa=='12'">组六和值</s:elseif>
								<s:elseif test="zCode.wanfa=='01' || zCode.wanfa=='31'">组三复式</s:elseif>
								<s:elseif test="zCode.wanfa=='02' || zCode.wanfa=='32'">组六复式</s:elseif>
								<s:elseif test="zCode.wanfa=='54'">胆拖复式</s:elseif>
								<s:elseif test="zCode.wanfa=='34'">直选包号</s:elseif>
							</s:elseif><s:elseif test='lotNo=="F47102"||lotNo=="QL730"'>
								<s:if test="zCode.wanfa=='00' || zCode.wanfa=='10'">复式</s:if>
								<s:elseif test="zCode.wanfa=='20'">胆拖</s:elseif>
							</s:elseif><s:elseif test='lotNo=="T01002"||lotNo=="PL3_33"'>
								<s:if test="zCode.wanfa==1">直选复式 </s:if>
								<s:if test="zCode.wanfa==6">组选复式</s:if>
								<s:if test="zCode.wanfa=='S1'">直选和值</s:if>
								<s:if test="zCode.wanfa=='S3'">组三和值</s:if>
								<s:if test="zCode.wanfa=='S6'">组六和值</s:if>
								<s:if test="zCode.wanfa=='F3'">组三包号</s:if>
								<s:if test="zCode.wanfa=='F6'">组六包号</s:if>
							</s:elseif><s:elseif test='lotNo=="T01001"||lotNo=="DLT_23529"'>
								<s:if test="zCode.wanfa==0 || zCode.wanfa==1">复式 </s:if>
								<s:if test="zCode.wanfa==2">胆拖</s:if>
								<s:if test="zCode.wanfa==3">生肖乐</s:if>
							</s:elseif>
							<s:elseif test='lotNo=="T01011"||lotNo=="PLW_35"'>直选复式</s:elseif>
							<s:elseif test='lotNo=="T01009"||lotNo=="QXC_10022"'>直选复式</s:elseif>
							<s:elseif test='lotNo=="T01007"||lotNo=="SSC_10401"'>
								<s:if test="zCode.betcode.split('|')[1]+zCode.betcode.split('|')[2]=='5D'">五星 </s:if>
								<s:if test="zCode.betcode.split('|')[1]+zCode.betcode.split('|')[2]=='3D'">三星</s:if>
								<s:if test="zCode.betcode.split('|')[1]+zCode.betcode.split('|')[2]=='2D'">二星</s:if>
								<s:if test="zCode.betcode.split('|')[1]+zCode.betcode.split('|')[2]=='1D'">一星</s:if>
								<s:if test="zCode.betcode.split('|')[1]+zCode.betcode.split('|')[2]=='5T'">五星通选</s:if>
								<s:if test="zCode.betcode.split('|')[1]+zCode.betcode.split('|')[2]=='H2'">二星和值包号</s:if>
								<s:if test="zCode.betcode.split('|')[1]+zCode.betcode.split('|')[2]=='S2'">二星组选和值包号</s:if>
								<s:if test="zCode.betcode.split('|')[1]+zCode.betcode.split('|')[2]=='DD'">大小单双</s:if>
								<s:if test="zCode.betcode.split('|')[1]+zCode.betcode.split('|')[2]=='Z2'">二星组选</s:if>
								<s:if test="zCode.betcode.split('|')[1]+zCode.betcode.split('|')[2]=='F2'">二星组选复式</s:if>
							</s:elseif>
							<s:else>&nbsp;</s:else>
						</td>
						<td class="record_biao3">&nbsp;<s:property value="%{amount/100*batchNum}"/></td>
						<td class="record_biao3">&nbsp;<s:property value="batchNum"/></td>
						<td class="record_biao3">&nbsp;<s:property value="%{batchNum-lastNum}"/></td>
						<td class="record_biao3">
							<s:if test='state==0'>追号进行中</s:if>
							<s:elseif test='state==3'>已完成追号</s:elseif>
							<s:elseif test='state==1'>暂停追号</s:elseif>
							<s:elseif test='state==2'>注销追号</s:elseif>
							<s:else>&nbsp;</s:else>
						</td>
						<td class="record_biao3"><s:property value="orderTime"/></td>
						<% /*<td class="record_biao3"><a href="#">查看</a></td>	*/%>
					  </tr>
					</s:iterator>
				</s:else>
              </table>
           </div>
	
        <div class="page">
        	${pageHtml}
        </div>
        <% /* <font class="tzjl_byzj">本页总计<s:property value="#request.list.size"/></font>
        <div class="cz_srjy" style="margin-top:10px;">投注次数：<s:property value="#session.countLine"/><!--<s:property value="#request.jaToPage[0].maxLine"/>-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        总计：认购金额<span class="redfont"><s:property value="#session.countMoney"/></span>元
</div> */ %>
          
       </form>  
   </div>