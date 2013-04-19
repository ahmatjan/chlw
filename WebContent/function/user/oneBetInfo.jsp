<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<s:if test="#request.checkNo=='1'||#request.checkNo==1">
<script type="text/javascript">
	var xy=0;
</script>
<div id="main">
<!--头部橘黄色部分-->
	<div class="togetherPlan_topCenter">
		<div class="togetherPlan_topLeft"></div>
			<div class="zengCai_logo">
			<s:if test='#request.torder.lotno=="F47104"||#request.torder.lotno=="B001"'><img src="/images/logo_ssq_b.gif" width="54" height="54" /></s:if>
			<s:if test='#request.torder.lotno=="T01001"||#request.torder.lotno=="DLT_23529"'><img src="/images/logo_dlt_b.gif" width="54" height="54" /></s:if>
			<s:if test='#request.torder.lotno=="F47103"||#request.torder.lotno=="D3"'><img src="/images/logo_fcsd_b.gif" width="54" height="54" /></s:if>
			<s:if test='#request.torder.lotno=="F47102"||#request.torder.lotno=="QL730"'><img src="/images/logo_qlc_b.gif" width="54" height="54" /></s:if>
			<s:if test='#request.torder.lotno=="T01002"||#request.torder.lotno=="PL3_33"'><img src="/images/logo_pls_d.gif" width="54" height="54" /></s:if>
			<s:if test='#request.torder.lotno=="T01011"||#request.torder.lotno=="PLW_35"'><img src="/images/logo_plw_d.gif" width="54" height="54" /></s:if>
			<s:if test='#request.torder.lotno=="T01009"||#request.torder.lotno=="QXC_10022"'><img src="/images/logo_qxc_d.gif" width="54" height="54" /></s:if>
			<s:if test='#request.torder.lotno=="T01007"||#request.torder.lotno=="SSC_10401"'><img src="/images/logo_ssc_b.gif" width="54" height="54" /></s:if>
			<s:if test='#request.torder.lotno=="T01010"||#request.torder.lotno=="XYXW_23009"'><img src="/images/logo_syxw_b.gif" width="54" height="54" /></s:if>
			<s:if test='#request.torder.lotno=="T01012"'><img src="/images/logo_syydj_b.gif" width="54" height="54" /></s:if>
			<s:if test='#request.torder.lotno=="T01013"'><img src="/images/logo_eexw_b.gif" width="54" height="54" /></s:if>
			<s:if test='#request.torder.lotno=="J00001"||#request.torder.lotno=="J00002"||#request.torder.lotno=="J00003"||#request.torder.lotno=="J00004"'><img src="/images/logo_jczq_b.gif" width="54" height="54" /></s:if>
			<s:if test='#request.torder.lotno=="T01003"||#request.torder.lotno=="ZC_11"'><img src="/images/logo_zc_b.gif" width="54" height="54" /></s:if>
			<s:if test='#request.torder.lotno=="T01004"||#request.torder.lotno=="ZC_19"'><img src="/images/logo_zc_b.gif" width="54" height="54" /></s:if>
			<s:if test='#request.torder.lotno=="T01006"||#request.torder.lotno=="ZC_16"'><img src="/images/logo_zc_b.gif" width="54" height="54" /></s:if>
			<s:if test='#request.torder.lotno=="T01005"||#request.torder.lotno=="ZC_18"'><img src="/images/logo_zc_b.gif" width="54" height="54" /></s:if>
			<s:if test='#request.torder.lotno=="J00005"||#request.torder.lotno=="J00006"||#request.torder.lotno=="J00007"||#request.torder.lotno=="J00008"'><img src="/images/logo_jczq_b.gif" width="54" height="54" /></s:if>
			</div>
			<div class="togetherPlan_topText">
			<dl>
				<s:if test='!(#request.torder.lotno.equals("J00001")||#request.torder.lotno=="J00002"||#request.torder.lotno=="J00003"||#request.torder.lotno=="J00004"||#request.torder.lotno=="J00005"||#request.torder.lotno=="J00006"||#request.torder.lotno=="J00007"||#request.torder.lotno=="J00008")'>
				<dt>第
				<s:if test="!(#request.torder.batchcode.equals('null'))">
					<s:property value="#request.torder.batchcode"/>
				</s:if>
				期</dt></s:if>
				<dt>
				<s:if test="!(#request.torder.memo.equals('null'))">
					<s:property value="#request.torder.memo"/>
				</s:if>
				</dt>
			</dl>
			<dl>
				<dd>方案编号：<s:property value="#request.torder.id" /></dd>
				<dd>
				<s:if test='#request.torder.lotno=="F47104"' ><a href="/shuangseqiu.html" title="返回购买双色球">返回购买双色球</a></s:if>
				<s:elseif test='#request.torder.lotno=="F47103"'><a href="/fucai3D.html" title="返回购买福彩3D">返回购买福彩3D</a></s:elseif>
				<s:elseif test='#request.torder.lotno=="F47102"' ><a href="/qilecai.html" title="返回购买七乐彩">返回购买七乐彩</a></s:elseif>
				<s:elseif test='#request.torder.lotno=="T01002"' ><a href="/pailie3.html" title="返回购买排列三">返回购买排列三</a></s:elseif>
				<s:elseif test='#request.torder.lotno=="T01001"' ><a href="/daletou.html" title="返回购买大乐透">返回购买大乐透</a></s:elseif>
				<s:elseif test='#request.torder.lotno=="T01011"'><a href="/pailie5.html" title="返回购买排列五">返回购买排列五</a></s:elseif>
				<s:elseif test='#request.torder.lotno=="T01009"'><a href="/qixingcai.html" title="返回购买七星彩">返回购买七星彩</a></s:elseif>
				<s:elseif test='#request.torder.lotno=="T01010"'><a href="/11xuan5.html" title="返回购买江西11选5">返回购买江西11选5</a></s:elseif>
				<s:elseif test='#request.torder.lotno=="T01007"'><a href="/shishicai.html" title="返回购买时时彩">返回购买时时彩</a></s:elseif>
				<s:elseif test='#request.torder.lotno=="T01012"'><a href="/shiyiyunduojin.html" title="返回购买十一运夺金">返回购买十一运夺金</a></s:elseif>
				<s:if test='#request.torder.lotno=="J00001"'><a href="/jingcaizuqiu.html" title="竞彩足球胜平负">返回购买竞彩足球胜平负</a></s:if>
				<s:if test='#request.torder.lotno=="T01003"'><a href="/zucaishengfu.html" title="返回购买胜负彩14场">返回购买胜负彩14场</a></s:if>
				<s:if test='#request.torder.lotno=="T01004"'><a href="/renxuan9chang.html" title="返回购买胜负彩任9场">返回购买胜负彩任9场</a></s:if>
				<s:if test='#request.torder.lotno=="T01006"'><a href="/6changbanquan.html" title="返回购买6场半全场">返回购买6场半全场</a></s:if>
				<s:if test='#request.torder.lotno=="T01005"'><a href="/4changjinqiu.html" title="返回购买四场进球彩">返回购买四场进球彩</a></s:if>
				<%-- <s:if test='#request.torder.lotno=="J00005"'><a href="http://jclq.ruyicai.com/jclq/touzhu/shengfu.jsp" title="返回购买竞彩篮球胜负">返回购买竞彩篮球胜负</a></s:if> 
				<s:if test='#request.torder.lotno=="J00008"'><a href="http://jclq.ruyicai.com/jclq/touzhu/daxiaofen.jsp" title="返回购买竞彩篮球大小分">返回购买竞彩篮球大小分</a></s:if>
				<s:if test='#request.torder.lotno=="J00007"'><a href="http://jclq.ruyicai.com/jclq/touzhu/shengfencha.jsp" title="返回购买竞彩篮球胜分差">返回购买竞彩篮球胜分差</a></s:if> 
				<s:if test='#request.torder.lotno=="J00006"'><a href="http://jclq.ruyicai.com/jclq/touzhu/rfshengfu.jsp" title="返回购买竞彩篮球让分胜负">返回购买竞彩篮球让分胜负</a></s:if> --%>
				</dd>
			</dl>
		</div>
		<div class="togetherPlan_topRight"></div>
	</div>
<!--头部橘黄色部分end-->
<!--详情内容部分-->
	<table class="xiangQing_BigTable">
	<tr>
		<th>发起人信息</th>
		<td class="xiangQing_name"><s:property value="#request.username" /></td>
	</tr>
	<tr>
		<th>方案详情</th>
		<td>
			<table class="xiangQing_smallTable">
				<thead>
					<tr>
						<th>方案注数</th>
						<th>倍　数</th>
						<th>总金额</th>
						<th>出票状态</th>
						<th>购买时间</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><s:property value="#request.torder.betnum" /></td>
						<td><s:property value="#request.torder.lotmulti" />倍</td>
						<td><font>¥<s:property value="#request.torder.amt/100" /></font>元</td>
						<td><s:property value="#request.torder.orderstate"/></td>
						<td><s:property value="#request.torder.createtime"/></td>
					</tr>
				</tbody>
			</table>
		</td>
	</tr>
		<s:if test='#request.torder.lotno=="T01003"||#request.torder.lotno=="ZC_11"||#request.torder.lotno=="T01004"||#request.torder.lotno=="ZC_19"||#request.torder.lotno=="T01005"||#request.torder.lotno=="ZC_18"||#request.torder.lotno=="T01006"||#request.torder.lotno=="ZC_16"'>
		  <tr class="PlanContent_Football ZuCai_outsideSpace">
			<th>方案内容</th>
				<td>
			<s:if test='#request.torder.lotno=="T01003"||#request.torder.lotno=="ZC_11"'>
				<s:if test='#request.torder.memo=="单式上传"'>
					<th>
					<s:iterator value="#request.lot">
						<s:property value="betcode.replaceAll('<br/>','')"/><br/>
					</s:iterator>
					</th>
					<th><a href="/rules/moreBetInfo.html?orderid=${torder.id}&a=1" target="_blank" onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))">显示全部内容</a></th>
				</s:if>
				<s:else>
				<dl><dt>投注选号：<font class="red"><s:property value="#request.selectNum.radio"/></font>个单选、<font class="red"><s:property value="#request.selectNum.twoselect"/></font>个双选、<font class="red"><s:property value="#request.selectNum.threeselect"/></font>个三选</dt></dl>
				<div class="space10">&#160;</div>
				<table class="PlanContent_FootballShengFu ZuCaiShengFu ">
				  <tbody>
				  <tr>
					<th>场次</th>
					<s:if test='#request.againstValue==null'>
				    	<th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>
				    	<th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>
				    	<th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>
				    	<th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>
				    	<th>&nbsp;</th><th>&nbsp;</th>
				    </s:if><s:else>
				    <s:iterator value="#request.againstValue">
				    	<th><s:property value="tempId"/></th>
				    </s:iterator>
				   </s:else>
					<th>倍数</th>
					<th>金额</th>
				  </tr>
				  <tr class="FootballShengFuTableSwitch">
					<td>对阵</td>
					<s:if test='#request.againstValue==null'>
				    	<td><em>&nbsp;</em></td><td><em>&nbsp;</em></td><td><em>&nbsp;</em></td>
				    	<td><em>&nbsp;</em></td><td><em>&nbsp;</em></td><td><em>&nbsp;</em></td>
				    	<td><em>&nbsp;</em></td><td><em>&nbsp;</em></td><td><em>&nbsp;</em></td>
				    	<td><em>&nbsp;</em></td><td><em>&nbsp;</em></td><td><em>&nbsp;</em></td>
				    	<td><em>&nbsp;</em></td><td><em>&nbsp;</em></td> 
				    </s:if><s:else>
				    	<s:iterator value="#request.againstValue">
				    		<td width="12"><em><s:property value="HTeam"/>VS<s:property value="VTeam"/></em></td>
				    	</s:iterator>
				    </s:else>
					<td class="noborder_bottom">&nbsp;</td>
					<td class="noborder_bottom">单位（元）</td>
				  </tr>
				  <s:iterator id="lot_zc" value="#request.lot">
							<tr>
								<td>选号</td>
								<td><s:property value="#lot_zc.betcode.split(',')[0]"/></td>
							    <td><s:property value="#lot_zc.betcode.split(',')[1]"/></td>
							    <td><s:property value="#lot_zc.betcode.split(',')[2]"/></td>
							    <td><s:property value="#lot_zc.betcode.split(',')[3]"/></td>
							    <td><s:property value="#lot_zc.betcode.split(',')[4]"/></td>
							    <td><s:property value="#lot_zc.betcode.split(',')[5]"/></td>
							    <td><s:property value="#lot_zc.betcode.split(',')[6]"/></td>
							    <td><s:property value="#lot_zc.betcode.split(',')[7]"/></td>
							    <td><s:property value="#lot_zc.betcode.split(',')[8]"/></td>
							    <td><s:property value="#lot_zc.betcode.split(',')[9]"/></td>
							    <td><s:property value="#lot_zc.betcode.split(',')[10]"/></td>
							    <td><s:property value="#lot_zc.betcode.split(',')[11]"/></td>
							    <td><s:property value="#lot_zc.betcode.split(',')[12]"/></td>
							    <td><s:property value="#lot_zc.betcode.split(',')[13]"/></td>
							    <td class="noborder_top"><s:property value="#lot_zc.multiple" /></td>
								<td class="noborder_top"><font>¥<s:property value="#lot_zc.amt"/></font></td>
							</tr>
					</s:iterator>
				  </tbody>
				</table>
				</s:else>
			</s:if>	
			
			<s:elseif test='#request.torder.lotno=="T01004"||#request.torder.lotno=="ZC_19"'>
				<s:if test='#request.torder.memo=="单式上传"'>
					<th>
					<s:iterator value="#request.lot">
						<s:property value="betcode.replaceAll('<br/>','')"/><br/>
					</s:iterator>
					</th>
					<th><a href="/rules/moreBetInfo.html?orderid=${torder.id}&a=1" target="_blank" onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))">显示全部内容</a></th>
				</s:if>
				<s:else>
				<dl><dt>投注选号：<font class="red"><s:property value="#request.selectNum.radio"/></font>个单选、<font class="red"><s:property value="#request.selectNum.twoselect"/></font>个双选、<font class="red"><s:property value="#request.selectNum.threeselect"/></font>个三选</dt></dl>
				<div class="space10">&#160;</div>
				<table class="PlanContent_FootballShengFu ZuCaiShengFu ">
			    <tbody>
				  <tr>
					<th>场次</th>
					<s:if test='#request.againstValue==null'>
				    	<th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>
				    	<th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>
				    	<th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>
				    	<th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>
				    	<th>&nbsp;</th><th>&nbsp;</th>
				    </s:if><s:else>
				    <s:iterator value="#request.againstValue">
				    	<th><s:property value="tempId"/></th>
				    </s:iterator>
				   </s:else>
					<th>倍数</th>
					<th>金额</th>
				  </tr>
				  <tr class="FootballShengFuTableSwitch">
					<td height="121">对阵</td>
					<s:if test='#request.againstValue==null'>
				    	<td><em>&nbsp;</em></td><td><em>&nbsp;</em></td><td><em>&nbsp;</em></td>
				    	<td><em>&nbsp;</em></td><td><em>&nbsp;</em></td><td><em>&nbsp;</em></td>
				    	<td><em>&nbsp;</em></td><td><em>&nbsp;</em></td><td><em>&nbsp;</em></td>
				    	<td><em>&nbsp;</em></td><td><em>&nbsp;</em></td><td><em>&nbsp;</em></td>
				    	<td><em>&nbsp;</em></td><td><em>&nbsp;</em></td>     
				    </s:if><s:else>
				    	<s:iterator value="#request.againstValue">
				    		<td><em><s:property value="HTeam"/>VS<s:property value="VTeam"/></em></td>
				    	</s:iterator>
				    	</s:else>
					<td class="noborder_bottom">&nbsp;</td>
					<td class="noborder_bottom">单位（元）</td>
				  </tr>	
				  <s:if test='#request.lot[0].betcode.indexOf("$")>-1'>
				  <s:iterator id="lot_zc" value="#request.lot">
				  <tr>
				    <td>选号</td>
				    <td><s:property value="#request.betcodeCopy.split(',')[0]"/></td>
				    <td><s:property value="#request.betcodeCopy.split(',')[1]"/></td>
				    <td><s:property value="#request.betcodeCopy.split(',')[2]"/></td>
				    <td><s:property value="#request.betcodeCopy.split(',')[3]"/></td>
				    <td><s:property value="#request.betcodeCopy.split(',')[4]"/></td>
				    <td><s:property value="#request.betcodeCopy.split(',')[5]"/></td>
				    <td><s:property value="#request.betcodeCopy.split(',')[6]"/></td>
				    <td><s:property value="#request.betcodeCopy.split(',')[7]"/></td>
				    <td><s:property value="#request.betcodeCopy.split(',')[8]"/></td>
				    <td><s:property value="#request.betcodeCopy.split(',')[9]"/></td>
				    <td><s:property value="#request.betcodeCopy.split(',')[10]"/></td>
				    <td><s:property value="#request.betcodeCopy.split(',')[11]"/></td>
				    <td><s:property value="#request.betcodeCopy.split(',')[12]"/></td>
				    <td><s:property value="#request.betcodeCopy.split(',')[13]"/></td>
				    <td class="noborder_top"><s:property value="#lot_zc.multiple" /></td>
					<td class="noborder_top"><font>¥<s:property value="#lot_zc.amt"/></font></td>
				  </tr>
				   <tr>
				    <td>设胆</td>
			    	<td class="red1">&#160;<s:if test='#lot_zc.betcode.replace("$",";").split(";")[1].split(",")[0]!="#"||#request.betcodeCopy.split(",")[0].equals("#")'><font class="red1">&#160;</font></s:if><s:else>&radic;</s:else></td>
			    	<td class="red1">&#160;<s:if test='#lot_zc.betcode.replace("$",";").split(";")[1].split(",")[1]!="#"||#request.betcodeCopy.split(",")[1].equals("#")'><font class="red1">&#160;</font></s:if><s:else>&radic;</s:else></td>
			    	<td class="red1">&#160;<s:if test='#lot_zc.betcode.replace("$",";").split(";")[1].split(",")[2]!="#"||#request.betcodeCopy.split(",")[2].equals("#")'><font class="red1">&#160;</font></s:if><s:else>&radic;</s:else></td>
			    	<td class="red1">&#160;<s:if test='#lot_zc.betcode.replace("$",";").split(";")[1].split(",")[3]!="#"||#request.betcodeCopy.split(",")[3].equals("#")'><font class="red1">&#160;</font></s:if><s:else>&radic;</s:else></td>
			    	<td class="red1">&#160;<s:if test='#lot_zc.betcode.replace("$",";").split(";")[1].split(",")[4]!="#"||#request.betcodeCopy.split(",")[4].equals("#")'><font class="red1">&#160;</font></s:if><s:else>&radic;</s:else></td>
			    	<td class="red1">&#160;<s:if test='#lot_zc.betcode.replace("$",";").split(";")[1].split(",")[5]!="#"||#request.betcodeCopy.split(",")[5].equals("#")'><font class="red1">&#160;</font></s:if><s:else>&radic;</s:else></td>
			    	<td class="red1">&#160;<s:if test='#lot_zc.betcode.replace("$",";").split(";")[1].split(",")[6]!="#"||#request.betcodeCopy.split(",")[6].equals("#")'><font class="red1">&#160;</font></s:if><s:else>&radic;</s:else></td>
			    	<td class="red1">&#160;<s:if test='#lot_zc.betcode.replace("$",";").split(";")[1].split(",")[7]!="#"||#request.betcodeCopy.split(",")[7].equals("#")'><font class="red1">&#160;</font></s:if><s:else>&radic;</s:else></td>
			    	<td class="red1">&#160;<s:if test='#lot_zc.betcode.replace("$",";").split(";")[1].split(",")[8]!="#"||#request.betcodeCopy.split(",")[8].equals("#")'><font class="red1">&#160;</font></s:if><s:else>&radic;</s:else></td>
			    	<td class="red1">&#160;<s:if test='#lot_zc.betcode.replace("$",";").split(";")[1].split(",")[9]!="#"||#request.betcodeCopy.split(",")[9].equals("#")'><font class="red1">&#160;</font></s:if><s:else>&radic;</s:else></td>
			    	<td class="red1">&#160;<s:if test='#lot_zc.betcode.replace("$",";").split(";")[1].split(",")[10]!="#"||#request.betcodeCopy.split(",")[10].equals("#")'><font class="red1">&#160;</font></s:if><s:else>&radic;</s:else></td>
			    	<td class="red1">&#160;<s:if test='#lot_zc.betcode.replace("$",";").split(";")[1].split(",")[11]!="#"||#request.betcodeCopy.split(",")[11].equals("#")'><font class="red1">&#160;</font></s:if><s:else>&radic;</s:else></td>
			    	<td class="red1">&#160;<s:if test='#lot_zc.betcode.replace("$",";").split(";")[1].split(",")[12]!="#"||#request.betcodeCopy.split(",")[12].equals("#")'><font class="red1">&#160;</font></s:if><s:else>&radic;</s:else></td>
			    	<td class="red1">&#160;<s:if test='#lot_zc.betcode.replace("$",";").split(";")[1].split(",")[13]!="#"||#request.betcodeCopy.split(",")[13].equals("#")'><font class="red1">&#160;</font></s:if><s:else>&radic;</s:else></td>
				 	<td class="red1">&nbsp;</td>
				 	<td class="red1">&nbsp;</td>
				  </tr>
				  </s:iterator>
				  </s:if>
				  <s:else>
				  <s:iterator id="lot_zc" value="#request.lot">
				  	<tr>
				    <td>选号</td>
				    <td><s:property value="#lot_zc.betcode.split(',')[0]"/></td>
				    <td><s:property value="#lot_zc.betcode.split(',')[1]"/></td>
				    <td><s:property value="#lot_zc.betcode.split(',')[2]"/></td>
				    <td><s:property value="#lot_zc.betcode.split(',')[3]"/></td>
				    <td><s:property value="#lot_zc.betcode.split(',')[4]"/></td>
				    <td><s:property value="#lot_zc.betcode.split(',')[5]"/></td>
				    <td><s:property value="#lot_zc.betcode.split(',')[6]"/></td>
				    <td><s:property value="#lot_zc.betcode.split(',')[7]"/></td>
				    <td><s:property value="#lot_zc.betcode.split(',')[8]"/></td>
				    <td><s:property value="#lot_zc.betcode.split(',')[9]"/></td>
				    <td><s:property value="#lot_zc.betcode.split(',')[10]"/></td>
				    <td><s:property value="#lot_zc.betcode.split(',')[11]"/></td>
				    <td><s:property value="#lot_zc.betcode.split(',')[12]"/></td>
				    <td><s:property value="#lot_zc.betcode.split(',')[13]"/></td>
			     	<td class="noborder_top"><s:property value="#lot_zc.multiple" /></td>
					<td class="noborder_top"><font>¥<s:property value="#lot_zc.amt"/></font></td>
				  </tr>
				 </s:iterator>
				   <tr>
				    <td>设胆</td>
				    	<td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
				    	<td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
					    <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
					    <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
					</tr>
				  </s:else>
				 </tbody>
				</table>
				</s:else>
			</s:elseif>
			<s:elseif test='#request.torder.lotno=="T01005"||#request.torder.lotno=="ZC_18"'>
				<s:if test='#request.torder.memo=="单式上传"'>
					<th><s:iterator value="#request.lot">
							<s:property value="betcode.replaceAll('<br/>','')"/><br/>
						</s:iterator>
						<th><a href="/rules/moreBetInfo.html?orderid=${torder.id}&a=1" target="_blank" onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))">显示全部内容</a></th>
					</th>
				</s:if>
				<s:else>
				<dl><dt>投注选号：<font class="red"><s:property value="#request.selectNum.radio"/></font>个单选、<font class="red"><s:property value="#request.selectNum.twoselect"/></font>个双选、<font class="red"><s:property value="#request.selectNum.threeselect"/></font>个三选</dt></dl>
				<div class="space10">&#160;</div>
				<table class="PlanContent_FootballShengFu ZuCaiShengFu ">
			    <tbody>
				  <tr>
					<th>场次</th>
					<s:if test='#request.againstValue==null'>
				    	<th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>
				    	<th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>
				    	<th>&nbsp;</th><th>&nbsp;</th>
				    </s:if><s:else>
				    <s:iterator value="#request.againstValue">
				    	<th colspan="2"><s:property value="tempId"/></th>
				    </s:iterator>
				   </s:else>
					<th>倍数</th>
					<th>金额</th>
				  </tr>
				  <tr class="FootballShengFuTableSwitch">
					<td>对阵</td>
					<s:if test='#request.againstValue==null'>
				    	<td><em>&nbsp;</em></td><td><em>&nbsp;</em></td>
				    	<td><em>&nbsp;</em></td><td><em>&nbsp;</em></td>
				    </s:if><s:else>
				    <s:iterator value="#request.againstValue">
				    	<td><em><s:property value="HTeam"/></em></td>
				    	<td><em><s:property value="VTeam"/></em></td>
				    </s:iterator></s:else>
					<td class="noborder_bottom">&nbsp;</td>
					<td class="noborder_bottom">单位（元）</td>
				  </tr>
				  <s:iterator id="lot_zc" value="#request.lot">
				  <tr>
					<td>选号</td>
					<td><s:property value="#lot_zc.betcode.split(',')[0]"/></td>
				    <td><s:property value="#lot_zc.betcode.split(',')[1]"/></td>
				    <td><s:property value="#lot_zc.betcode.split(',')[2]"/></td>
				    <td><s:property value="#lot_zc.betcode.split(',')[3]"/></td>
				    <td><s:property value="#lot_zc.betcode.split(',')[4]"/></td>
				    <td><s:property value="#lot_zc.betcode.split(',')[5]"/></td>
				    <td><s:property value="#lot_zc.betcode.split(',')[6]"/></td>
				    <td><s:property value="#lot_zc.betcode.split(',')[7]"/></td>
				    <td class="noborder_top"><s:property value="#lot_zc.multiple" /></td>
				    <td class="noborder_top"><font>¥<s:property value="#lot_zc.amt"/></font></td>
				  </tr>
				  </s:iterator>
				  </tfoot>
				</table>
				</s:else>
			</s:elseif>	
		
			<s:elseif test='#request.torder.lotno=="T01006"||#request.torder.lotno=="ZC_16"'>
			<s:if test='#request.torder.memo=="单式上传"'>
					<th>
					<s:iterator value="#request.lot">
						<s:property value="betcode.replaceAll('<br/>','')"/><br/>
					</s:iterator>
					</th>
					<th><a href="/rules/moreBetInfo.html?orderid=${torder.id}&a=1" target="_blank" onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))">显示全部内容</a></th>
				</s:if>
				<s:else>
				<dl><dt>投注选号：<font class="red"><s:property value="#request.selectNum.radio"/></font>个单选、<font class="red"><s:property value="#request.selectNum.twoselect"/></font>个双选、<font class="red"><s:property value="#request.selectNum.threeselect"/></font>个三选</dt></dl>
                  <div class="space10">&#160;</div>
				<table class="PlanContent_FootballShengFu ZuCaiShengFu ">
                    <tbody>
                      <tr>
					<th>场次</th>
					<s:if test='#request.againstValue==null'>
				    	<th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>
				    	<th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>
				    	<th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>
				    	<th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>
				    </s:if><s:else>
				    <s:iterator value="#request.againstValue">
				    	<th colspan="2"><s:property value="tempId"/></th>
				    </s:iterator>
				   </s:else>
					<th>倍数</th>
					<th>金额</th>
				  </tr>
                   <tr>
                     <td >对阵</td>
                     <s:if test='#request.againstValue==null'>
				    	<td><em>&nbsp;</em></td><td><em>&nbsp;</em></td><td><em>&nbsp;</em></td>
				    	<td><em>&nbsp;</em></td><td><em>&nbsp;</em></td><td><em>&nbsp;</em></td>
				    	<td><em>&nbsp;</em></td><td><em>&nbsp;</em></td><td><em>&nbsp;</em></td>
				    	<td><em>&nbsp;</em></td><td><em>&nbsp;</em></td><td><em>&nbsp;</em></td>
				    </s:if><s:else>
				    <s:iterator value="#request.againstValue">
				    	<td><em><s:property value="HTeam"/>VS<s:property value="VTeam"/></em><span class="red1">半</span></td>
				    	<td><em><s:property value="HTeam"/>VS<s:property value="VTeam"/></em><span class="red1">全</span></td>
				    </s:iterator></s:else>
                    <td class="noborder_bottom">&nbsp;</td>
					<td class="noborder_bottom">单位（元）</td>
                   </tr>
                     <s:iterator id="lot_zc" value="#request.lot">
                      <tr>
                        <td>选号</td>
                       <td><s:property value="#lot_zc.betcode.split(',')[0]"/></td>
					    <td><s:property value="#lot_zc.betcode.split(',')[1]"/></td>
					    <td><s:property value="#lot_zc.betcode.split(',')[2]"/></td>
					    <td><s:property value="#lot_zc.betcode.split(',')[3]"/></td>
					    <td><s:property value="#lot_zc.betcode.split(',')[4]"/></td>
					    <td><s:property value="#lot_zc.betcode.split(',')[5]"/></td>
					    <td><s:property value="#lot_zc.betcode.split(',')[6]"/></td>
					    <td><s:property value="#lot_zc.betcode.split(',')[7]"/></td>
					    <td><s:property value="#lot_zc.betcode.split(',')[8]"/></td>
					    <td><s:property value="#lot_zc.betcode.split(',')[9]"/></td>
					    <td><s:property value="#lot_zc.betcode.split(',')[10]"/></td>
					    <td><s:property value="#lot_zc.betcode.split(',')[11]"/></td>
					    <td class="noborder_top"><s:property value="#lot_zc.multiple" /></td>
					    <td class="noborder_top"><font>¥<s:property value="#lot_zc.amt"/></font></td>
                      </tr>
                     </s:iterator>
                   </tfoot>
                </table>
                <div class="blue">${requestScope.moreMessage}</div>
				</s:else>
			</s:elseif>	
			
			</s:if>				
			<s:elseif  test='#request.torder.lotno=="J00001"||#request.torder.lotno=="J00002"||#request.torder.lotno=="J00003"||#request.torder.lotno=="J00004"'>
			
			  <!-- 竞彩部分begin -->
			<tr class="PlanContent_Football ZuCai_outsideSpace ">
			<th>方案内容</th>
				<td>
				<input type="hidden" id="lotno" value="<s:property value='#request.torder.lotno'/>"/>
					<dl>
						<dt>过关方式：<em><s:property value="#request.pastMethod.pastMethod"/></em>
						</dt>
					</dl>
					
					<div class="space10"></div>
					
					<table class="PlanContent_FootballShengFu ZuCaiShengFu ">
						<thead>
							<tr>
								<th>赛事编号</th><th>对阵</th><th>比分</th><th>您的选择</th>
							</tr>
						</thead>
						<tbody>
							<s:iterator value="#request.lastArray">
							<tr>
								<td>周<s:if test='matches.weekid=="1"'>一</s:if>
									<s:if test='matches.weekid=="2"'>二</s:if>
									<s:if test='matches.weekid=="3"'>三</s:if>
									<s:if test='matches.weekid=="4"'>四</s:if>
									<s:if test='matches.weekid=="5"'>五</s:if>
									<s:if test='matches.weekid=="6"'>六</s:if>
									<s:if test='matches.weekid=="7"'>日</s:if>
									<s:property value="matches.teamid"/></td>
								<td><em><s:property value="matches.team.split(':')[0]"/></em>　<em><s:if test='matches.letpoint!=null ||matches.letpoint==""'><s:property value="matches.letpoint"/></s:if><s:else>VS</s:else></em>　<em><s:property value="matches.team.split(':')[1]"/></em></td>
								<td><s:if test='result.result!=null && result.result!="null" && result.result!=""'><s:property value="result.result"/></s:if><s:else>-</s:else>
								<s:if test='#request.torder.lotno=="J00002&&result.result!=null && result.result!="null" && result.result!=""'>(<s:property value="result.firsthalfresult"/>)</s:if>
								</td>
								<td><s:property value="selectInfo"/><s:if test='pv!=null&&pv!="null"'>(sp<s:property value="pv"/>)</s:if></td>
								
							</tr>
							</s:iterator>
						</tbody>
					</table>
					
					<div class="space10"></div>
				
					<dl>
						<dt>总金额：¥<i><s:property value="#request.torder.amt/100"/></i>元</dt>
					</dl>
					
			</s:elseif><!-- 竞彩部分end -->
			 <!-- 竞彩部分begin -->
			<s:elseif test='#request.torder.lotno=="J00005"||#request.torder.lotno=="J00006"||#request.torder.lotno=="J00007"||#request.torder.lotno=="J00008"'>
			<tr class="PlanContent_Football ZuCai_outsideSpace ">
			<th>方案内容</th>
				<td>
				<input type="hidden" id="lotno" value="<s:property value='#request.torder.lotno'/>"/>
					<dl>
						<dt>过关方式：<em><s:property value="#request.pastMethod.pastMethod"/></em>
						</dt>
					</dl>
					
					<div class="space10"></div>
					
					<table class="PlanContent_FootballShengFu ZuCaiShengFu ">
						<thead>
							<tr>
								<th>赛事编号</th><th>客队 VS 主队</th><th>全场比分</th><th>赛果</th><th>您的选择</th>
							</tr>
						</thead>
						<tbody>
							<s:iterator value="#request.lastArray">
							<tr>
								<td>周<s:if test='matches.weekid=="1"'>一</s:if>
									<s:if test='matches.weekid=="2"'>二</s:if>
									<s:if test='matches.weekid=="3"'>三</s:if>
									<s:if test='matches.weekid=="4"'>四</s:if>
									<s:if test='matches.weekid=="5"'>五</s:if>
									<s:if test='matches.weekid=="6"'>六</s:if>
									<s:if test='matches.weekid=="7"'>日</s:if>
									<s:property value="matches.teamid"/></td>
								<td><em><s:property value="matches.team.split(':')[1]"/></em>　<em><s:if test='matches.letpoint!=null ||matches.letpoint==""'><s:property value="matches.letpoint"/></s:if><s:else>VS</s:else></em>　<em><s:property value="matches.team.split(':')[2]"/></em></td>
								<td><s:if test='result.basepoint!=null && result.basepoint!="null" && result.basepoint!=""'><s:property value="result.basepoint"/></s:if><s:else>-</s:else></td>
								<td><s:if test='result.newResult!=null && result.newResult!="null" && result.newResult!=""'><s:property value="result.newResult"/></s:if><s:else>-</s:else></td>
								<td><s:property value="selectInfo"/><s:if test='pv!=null&&pv!="null"'>(sp<s:property value="pv"/>)</s:if></td>
							</tr>
							</s:iterator>
						</tbody>
					</table>
					
					<div class="space10"></div>
				
					<dl>
						<dt>总金额：¥<i><s:property value="#request.torder.amt/100"/></i>元</dt>
					</dl>
					
			</s:elseif><!-- 竞彩部分end -->
			<s:else>
			<tr>
			<th>方案内容</th>
				<td>
			<s:if test="#request.lotSize>0">
				 <table class="xiangQing_neiRong">
			 	<thead>
			 	<s:iterator  value="#request.lot" status="sta">
			 	<s:if test="#sta.index<5">
			 	<tr>
					<s:property value="zhuma.value" escape="false"/> 
				</tr>
				</s:if>
				</s:iterator>
				</thead>
				<s:if test="#request.lotSize>5">
					<tbody id="moreValue" style="display:none"> 
						<s:iterator id="lot" value="#request.lot" begin="5" >
							<tr>
								<s:property value="#lot.zhuma.value" escape="false" />
							</tr>
						</s:iterator>
					</tbody>
					<tfoot>
						<tr id="allIterm">
							<th colspan="4"><a
								href='javaScript:;' onclick='$("#moreValue").toggle();$("#partiterm").toggle();$("#allIterm").toggle()'
								onmouseover="HoverOver($(this))"
								onmouseout="HoverOut($(this))">显示全部内容</a></th>
						</tr>
						<tr id="partiterm" style="display:none">
							<th colspan="4"><a
								href='javaScript:;' onclick='$("#moreValue").toggle();$("#allIterm").toggle();$("#partiterm").toggle()'
								onmouseover="HoverOver($(this))"
								onmouseout="HoverOut($(this))">隐藏部分</a></th>
						</tr>
					</tfoot>
	   			 </s:if>
				</table>
		    </s:if>
             <s:else>
             "订单无投注记录"
         	</s:else>
			<span class="blue1">${requestScope.moreMessage}</span>
		</s:else>
		</td>
	</tr>
	 <s:if test='#request.torder.settleflag!=2&&#request.winInfo!=null'>	
	<tr class="xiangQing_Noborder">
		<th>开奖号码</th>
		<s:if test="#request.winInfo.winbasecode.length()>0">
		<td>
			<s:if test='#request.torder.lotno=="F47104"||#request.torder.lotno=="B001"'>
				<i>
					<s:property value="#request.winInfo.winbasecode.substring(0,2)
					"/>,<s:property value="#request.winInfo.winbasecode.substring(2,4)
					"/>,<s:property value="#request.winInfo.winbasecode.substring(4,6)
					"/>,<s:property value="#request.winInfo.winbasecode.substring(6,8)
					"/>,<s:property value="#request.winInfo.winbasecode.substring(8,10)
					"/>,<s:property value="#request.winInfo.winbasecode.substring(10,12)
					"/></i>
				|
				<b><s:property value="#request.winInfo.winspecialcode"/></b>
			</s:if>
	
			<s:if test='#request.torder.lotno=="F47103"||#request.torder.lotno=="D3"'>
				<i>
					<s:property value="#request.winInfo.winbasecode.substring(1,2).trim()
					"/>|<s:property value="#request.winInfo.winbasecode.substring(3,4).trim()
					"/>|<s:property value="#request.winInfo.winbasecode.substring(5,6).trim()"/>
				</i>
			</s:if>
	
			<s:if test='#request.torder.lotno=="F47102"||#request.torder.lotno=="QL730"'>
				<i>
					<s:property value="#request.winInfo.winbasecode.substring(0,2)
					"/>,<s:property value="#request.winInfo.winbasecode.substring(2,4)
					"/>,<s:property value="#request.winInfo.winbasecode.substring(4,6)
					"/>,<s:property value="#request.winInfo.winbasecode.substring(6,8),
					"/>,<s:property value="#request.winInfo.winbasecode.substring(8,10)
					"/>,<s:property value="#request.winInfo.winbasecode.substring(10,12)
					"/>,<s:property value="#request.winInfo.winbasecode.substring(12,14)
				 	"/></i>|<b>&nbsp;<s:property value="#request.winInfo.winspecialcode"/></b>
			</s:if>
			
			<s:if test='#request.torder.lotno=="T01002"||#request.torder.lotno=="PL3_33"'>
				<i>
					<s:property value="#request.winInfo.winbasecode.substring(0,1)
					"/>|<s:property value="#request.winInfo.winbasecode.substring(1,2)
					"/>|<s:property value="#request.winInfo.winbasecode.substring(2,3)"/>
				</i>
			</s:if>
			
			<s:if test='#request.torder.lotno=="T01001"||#request.torder.lotno=="DLT_23529"'>
				<i>
					<s:property value="#request.winInfo.winbasecode.substring(0,2)
					"/>,<s:property value="#request.winInfo.winbasecode.substring(2,4)
					"/>,<s:property value="#request.winInfo.winbasecode.substring(4,6)
					"/>,<s:property value="#request.winInfo.winbasecode.substring(6,8)
					"/>,<s:property value="#request.winInfo.winbasecode.substring(8,10)
				"/></i>|<b><s:property value="#request.winInfo.winbasecode.substring(10,12)
					"/>,<s:property value="#request.winInfo.winbasecode.substring(12,14)"/></b>
			</s:if>
			
			<s:if test='#request.torder.lotno=="T01011"||#request.torder.lotno=="PLW_35"'>
				<i>
					<s:property value="#request.winInfo.winbasecode.substring(0,1)
					"/>|<s:property value="#request.winInfo.winbasecode.substring(1,2)
					"/>|<s:property value="#request.winInfo.winbasecode.substring(2,3)
					"/>|<s:property value="#request.winInfo.winbasecode.substring(3,4)
					"/>|<s:property value="#request.winInfo.winbasecode.substring(4,5)"/>
				</i>
			</s:if>
			<s:if test='#request.torder.lotno=="T01009"||#request.torder.lotno=="QXC_10022"'>
				<i>
					<s:property value="#request.winInfo.winbasecode.substring(0,1)
					"/>|<s:property value="#request.winInfo.winbasecode.substring(1,2)
					"/>|<s:property value="#request.winInfo.winbasecode.substring(2,3)
					"/>|<s:property value="#request.winInfo.winbasecode.substring(3,4)
					"/>|<s:property value="#request.winInfo.winbasecode.substring(4,5)
					"/>|<s:property value="#request.winInfo.winbasecode.substring(5,6)
					"/>|<s:property value="#request.winInfo.winbasecode.substring(6,7)"/>
				</i>
			</s:if>
			<s:if test='#request.torder.lotno=="T01013"'>
				<i>
					<s:property value="#request.winInfo.winbasecode.substring(0,2)
					"/>|<s:property value="#request.winInfo.winbasecode.substring(3,5)
					"/>|<s:property value="#request.winInfo.winbasecode.substring(6,8)
					"/>|<s:property value="#request.winInfo.winbasecode.substring(9,11)
					"/>|<s:property value="#request.winInfo.winbasecode.substring(12,14)
					"/>
				</i>
			</s:if>
			
			<s:if test='#request.torder.lotno=="T01007"||#request.torder.lotno=="SSC_10401"'>
				<i>
					<s:property value="#request.winInfo.winbasecode"/>
				</i>
			</s:if>
			<s:if test='#request.torder.lotno=="T01010"||#request.torder.lotno=="XYXW_23009"||#request.torder.lotno=="T01012"'>
				<i>
					<s:property value="#request.winInfo.winbasecode"/>
				</i>
			</s:if>
			
			<s:if test='#request.torder.lotno=="T01003"||#request.torder.lotno=="ZC_11"||#request.torder.lotno=="T01004"||#request.torder.lotno=="ZC_19"||#request.torder.lotno=="T01005"||#request.torder.lotno=="ZC_18"||#request.torder.lotno=="T01006"||#request.torder.lotno=="ZC_16"'>
				<i>
					<s:property value="#request.winInfo.winbasecode"/>
				</i>
			</s:if>	
			</td>
			</s:if>
		
	</tr>
	</s:if>
</table>
<!--详情内容部分end-->
</div>
</s:if>
<s:if test="#request.checkNo=='0'||#request.checkNo==0">
<script>
$(function(){
	alert("对不起，该方案为代购方案，仅发起人可查看！");
	var a=confirm("您查看的页面正在关闭本窗口，是否关闭本窗口？");
	if(a==true){
	for(b in $.browser)
	if(b=="mozilla"){
		location.href="/rules/noData.html";
		 return;
	}else{
		window.close();
	}
	}else{
		location.href="/rules/noData.html";
		return;
	}
});	
</script>
</s:if>