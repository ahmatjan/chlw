<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>   

<div class="user_head">
	<div class="user_zi">我的投注--投注记录</div>
</div>

<div class="user_content">
<form action="#" method="post" onsubmit='return TZSelectreHtmlInParameters(this.lotno.value,this.beginTime.value,this.endTime.value,"settleFlag="+this.settleFlag.value)' class="tzjl_form">
      <div class="zijin_nav2"><span>彩种：<select  name="lotno">
      	  <option value="" selected="selected">全部彩种</option>	
			  <option value="F47104" <s:if test='request.getParameter("lotno")=="F47104"'>selected="selected"</s:if>>双色球</option>
			  <option value="F47103" <s:if test='request.getParameter("lotno")=="F47103"'>selected="selected"</s:if>>福彩3D</option>
			  <option value="F47102" <s:if test='request.getParameter("lotno")=="F47102"'>selected="selected"</s:if>>七乐彩</option>
			  <option value="T01001" <s:if test='request.getParameter("lotno")=="T01001"'>selected="selected"</s:if>>超级大乐透</option>
			  <option value="T01002" <s:if test='request.getParameter("lotno")=="T01002"'>selected="selected"</s:if>>排列三</option>	
			  <option value="T01011" <s:if test='request.getParameter("lotno")=="T01011"'>selected="selected"</s:if>>排列五</option>
			  <option value="T01009" <s:if test='request.getParameter("lotno")=="T01009"'>selected="selected"</s:if>>七星彩</option>	
			  <option value="T01007" <s:if test='request.getParameter("lotno")=="T01007"'>selected="selected"</s:if>>时时彩</option>	
		</select>
		</span>
		<span>类型：<select  name="settleFlag" >
           <option value="-1" selected="selected">全部投注</option>
			  <option value="2" <s:if test='request.getParameter("settleFlag")=="2"'>selected</s:if>>未开奖</option>
			  <option value="0" <s:elseif test='request.getParameter("settleFlag")=="0"'>selected</s:elseif>>已开奖</option>
			  <option value="1" <s:elseif test='request.getParameter("settleFlag")=="1"'>selected</s:elseif>>已派奖</option>
	   </select></span>
    </div> 
           
           <div class="cz_cxxz">
              <div class="record_zhh2">
                <span class="record_zhh1">起始日期：<input type="text" id="beginTime" size="10" name="beginTime"  onFocus="WdatePicker({alwaysUseStartDate:true})" value="${beginTime}" /></span> 
                <span class="record_zhh1">终止日期：<input type="text" id="endTime" size="10" name="endTime" onFocus="WdatePicker({alwaysUseStartDate:true})" value="${endTime}" /></span>
                <input class="cz_cxbtn" name="button" type="submit" id="button" value=""/>
              </div>
               <div class="tiaoshu">
               	<%/*
                <input id="radio1" name="dx" type="radio" value="10" checked="checked" />10条
                <input id="radio2" name="dx" type="radio" value="20" />20条
                <input id="radio3" name="dx" type="radio" value="30" />30条
                */%>
              </div>
            </div>
            <div class="tzjl_tzr">以下是<s:property value="#session.user.NICKNAME"/>的历史投注记录
            </div>
			
            <div class="account_content">
              <table width="794"  border="0" cellpadding="0" cellspacing="0" class="zhzx_tab">
                <tr>
                  <td class="record_biao1">彩种</td>
                  <td class="record_biao1">玩法</td>
                  <td class="record_biao1">期号</td>
                  <td class="record_biao1">投注内容</td>
                  <td class="record_biao1">认购金额</td>
                  <td class="record_biao1">结算状态</td>
                  <td class="record_biao1">您的奖金</td>
                  <td class="record_biao1">认购时间</td>
                  <td class="record_biao1">方案编号</td>
                </tr>
                 <s:if test="#request.jaToPage.size()>0">
                  
                <s:iterator  value="#request.jaToPage" status ="stat" >			
					<tr>
						<td class="record_biao3">
							<s:if test='lotno=="F47104"||lotno=="B001"' >双色球</s:if>
							<s:elseif test='lotno=="F47103"||lotno=="D3"'>福彩3D</s:elseif>
							<s:elseif test='lotno=="F47102"||lotno=="QL730"' >七乐彩</s:elseif>
							<s:elseif test='lotno=="T01002"||lotno=="PL3_33"' >排列三</s:elseif>
							<s:elseif test='lotno=="T01001"||lotno=="DLT_23529"' >大乐透</s:elseif>
							<s:elseif test='lotno=="T01011"||lotno=="PLW_35"'>排列五</s:elseif>
							<s:elseif test='lotno=="T01009"||lotno=="QXC_10022"'>七星彩</s:elseif>
							<s:elseif test='lotno=="T01007"||lotno=="SSC_10401"'>时时彩</s:elseif>
							<s:else>&nbsp;</s:else>
						</td>
						<td class="record_biao3">
							<s:if test='lotno=="F47104"||lotno=="B001"'>
								<s:if test="zCode.wanfa=='00' || zCode.wanfa=='10' || zCode.wanfa=='20' || zCode.wanfa=='30'">复式</s:if>
								<s:if test="zCode.wanfa=='40' || zCode.wanfa=='50'">胆拖</s:if>
							</s:if>
							<s:elseif test='lotno=="F47103"||lotno=="D3"'>
								<s:if test="zCode.wanfa=='00' || zCode.wanfa=='20'">直选复式</s:if>
								<s:elseif test="zCode.wanfa=='10'">直选和值</s:elseif>
								<s:elseif test="zCode.wanfa=='11'">组三和值</s:elseif>
								<s:elseif test="zCode.wanfa=='12'">组六和值</s:elseif>
								<s:elseif test="zCode.wanfa=='01' || zCode.wanfa=='31'">组三复式</s:elseif>
								<s:elseif test="zCode.wanfa=='02' || zCode.wanfa=='32'">组六复式</s:elseif>
								<s:elseif test="zCode.wanfa=='54'">胆拖复式</s:elseif>
								<s:elseif test="zCode.wanfa=='34'">直选包号</s:elseif>
							</s:elseif>
							<s:elseif test='lotno=="F47102"||lotno=="QL730"'>
								<s:if test="zCode.wanfa=='00' || zCode.wanfa=='10'">复式</s:if>
								<s:elseif test="zCode.wanfa=='20'">胆拖</s:elseif>
							</s:elseif>
							<s:elseif test='lotno=="T01002"||lotno=="PL3_33"'>
								<s:if test="zCode.wanfa==1">直选复式 </s:if>
								<s:if test="zCode.wanfa==6">组选复式</s:if>
								<s:if test="zCode.wanfa=='S1'">直选和值</s:if>
								<s:if test="zCode.wanfa=='S3'">组三和值</s:if>
								<s:if test="zCode.wanfa=='S6'">组六和值</s:if>
								<s:if test="zCode.wanfa=='F3'">组三包号</s:if>
								<s:if test="zCode.wanfa=='F6'">组六包号</s:if>
							</s:elseif>
							<s:elseif test='lotno=="T01001"||lotno=="DLT_23529"'>
								<s:if test="zCode.wanfa==0 || zCode.wanfa==1">复式 </s:if>
								<s:if test="zCode.wanfa==2">胆拖</s:if>
								<s:if test="zCode.wanfa==3">生肖乐</s:if>
							</s:elseif>
							<s:elseif test='lotno=="T01011"||lotno=="PLW_35"'>直选复式</s:elseif>
							<s:elseif test='lotno=="T01009"||lotno=="QXC_10022"'>直选复式</s:elseif>
							<s:elseif test='lotno=="T01007"||lotno=="SSC_10401"'>
								<s:if test="zCode.wanfa=='5D'">五星 </s:if>
								<s:if test="zCode.wanfa=='3D'">三星</s:if>
								<s:if test="zCode.wanfa=='2D'">二星</s:if>
								<s:if test="zCode.wanfa=='1D'">一星</s:if>
								<s:if test="zCode.wanfa=='5T'">五星通选</s:if>
								<s:if test="zCode.wanfa=='H2'">二星和值包号</s:if>
								<s:if test="zCode.wanfa=='S2'">二星组选和值包号</s:if>
								<s:if test="zCode.wanfa=='DD'">大小单双</s:if>
								<s:if test="zCode.wanfa=='Z2'">二星组选</s:if>
								<s:if test="zCode.wanfa=='F2'">二星组选复式</s:if>
							</s:elseif>
							<s:else>&nbsp;</s:else>
						</td>
						<td class="record_biao3">&nbsp;<s:property value="batchcode"/></td>
						<td class="record_biao3"><a href="/rules/oneBetInfo.html?flowno=<s:property value="flowno"/>&play_name=<s:property value="lotno"/>&batchcode=<s:property value="batchcode"/>"  target="_blank">查看</a></td>
						<td class="record_biao3">¥<s:property value="amt/100"/></td>
						<td class="record_biao3">
							<s:if test='settleflag==2'>未开奖</s:if>
							<s:elseif test='settleflag==0'>已开奖</s:elseif>
							<s:elseif test='settleflag==1 || settleflag==9 || settleflag==3'>已派奖</s:elseif>
							<s:else>&nbsp;</s:else>
						</td>
						<td class="record_biao3">
							<s:if test='settleflag==1 ||settleflag==0'>¥<s:property value="prizeamt/100"/></s:if>							
							<s:elseif test='settleflag==9'>已中大奖</s:elseif>
							<s:elseif test='settleflag==3'>¥0</s:elseif>
							<s:else>-</s:else>
						</td>
						<td class="record_biao3">&nbsp;<s:property value="ordertime.substring(0,10)"/></td>
						<td class="record_biao3">&nbsp;<s:property value="flowno"/></td>
	               	</tr>
               	</s:iterator>
                 </s:if>
                   <s:else>
                   <tr><td colspan="9" align="center">"无查询记录"</td></tr>
               	</s:else>
               </table>
            </div>
          
        <div class="page">
        	${pageHtml}
        </div>
        <% /* 
        <div class="cz_srjy" style="margin-top:10px;">投注次数：<s:property value="#request.jaToPage[0].maxLine"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                总计：认购金额<span class="redfont"><s:property value="#session.countMoney"/></span>元
        </div>*/ %>
    </form>
</div>