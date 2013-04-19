<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!-- 开奖详情页面 -->
<div class="main_left" id="main_left">
		<script type="text/javascript">
         $.ajax({
      		'type': 'POST',
      		'url': '/include/jinrikaijiangLeft.html?r='+ Math.round(Math.random()*10000),
      		beforeSend:function(XMLHttpRequest){
     	    	
     	    },
      		'dataType': 'html',
      		'success': function(data){
      			$("#main_left").html($.trim(data));
      		}
      	});
       </script>
</div>
<div class="main_right">
<s:iterator value="#request.arrWininfo" id="arrWininfo">
<s:if test='id.lotno=="F47104"'><input type="hidden" value="F47104" id="ssqlotno"/>
	<div class="zh_rightbg">
		<div class="kj_top"><span class="kjxq">双色球&nbsp;&nbsp;&nbsp;开奖详情</span>
		<span class="kjgn"><a href="http://tbzs.ruyicai.com/cjwssq/index.php" title="双色球图表走势">双色球图表走势</a> | 
		<a href="/fucaituijian/fucaituijian_shuangseqiu_1.html" title="双色球推荐预测">推荐预测</a></span>
	</div>
	<div class="kj_content_ssq">
			<div class="kj_time"><span class="kj_time1">第<span id="ssqbatchcode"><s:property value="id.batchcode"/></span>期
				&nbsp;&nbsp;&nbsp;&nbsp;开奖日期：<span id="ssqtime"><s:property value="opentime.substring(0,10)"/></span>&nbsp;21:30:00</span>
				<span >
					<span><input class="kj_chxbtn" name="" type="button" value="" onclick="getdrawalotteryInfo('ssq')"/>
					</span><span class="kj_time2">
						<select name="" id="ssqselect" >
							<s:iterator value="batchcodeArray" >
								<option value="<s:property value="onebet"/>" <s:if test='id.batchcode==onebet'>selected="selected"</s:if>><s:property value="onebet"/></option>
							</s:iterator>
						</select>
						</span>
				</span>
			</div>
			<div class="kj_list" id="ssqhaoma">
				<ul>
					<li class="kj_hongqiu"><s:property value="winbasecode.substring(0,2)"/></li>
					<li class="kj_hongqiu"><s:property value="winbasecode.substring(2,4)"/></li>
					<li class="kj_hongqiu"><s:property value="winbasecode.substring(4,6)"/></li>
					<li class="kj_hongqiu"><s:property value="winbasecode.substring(6,8)"/></li>
					<li class="kj_hongqiu"><s:property value="winbasecode.substring(8,10)"/></li>
					<li class="kj_hongqiu"><s:property value="winbasecode.substring(10,12)"/></li>
					<li class="kj_lanqiu"><s:property value="winspecialcode"/></li>
				</ul>
			</div>
			</div>
			<div class="kj_jch">
	<div class="kj_list2"><span class="kj_momey">本期全国销售总额：<span id="ssqtotalMoney"><s:property value="rtnMap.betTotalMoney"/></span>元
		&nbsp;&nbsp;奖池累计金额：<span id="ssqprogressive"><s:property value="rtnMap.progressive"/></span>元</span><span class="kj_btn"><a href="/shuangseqiu.html" title="立即购买"><img src="/images/lijigmbtn.gif" /></a></span>
	</div>	
	<div class="kj_prize" id="ssqdj">
		<table width="712" border="0" cellpadding="0" cellspacing="0">
	    <tbody><tr height="35">
	      <td width="237" bgcolor="#e5e5e5"><strong class="newWhite">奖等</strong></td>
	      <td width="237" bgcolor="#e5e5e5"><strong class="newWhite">全国中奖注数</strong></td>
	      <td width="237" bgcolor="#e5e5e5"><strong class="newWhite">单注奖金</strong></td>
	    </tr>
	    <s:iterator value="rtnMap.prizeInfo" id="prizeInfo">
	      <tr height="30">
	        <td><span id="sdprizeName1"><s:property value="jianji"/></span></td>
	        <td><span id="sdcount1"><s:property value="zhushu"/></span></td>
	        <td><span id="sdbonus1"><s:property value="money"/></span></td>
	      </tr>
	    </s:iterator>
	   </tbody>
	 </table>
	</div>
	</div>					
</div>	
</s:if>

<s:if test='id.lotno=="F47103"'><input type="hidden" value="F47103" id="sdlotno"/>
	<div class="zh_rightbg">
		<div class="kj_top"><span class="kjxq">
		福彩3D&nbsp;&nbsp;&nbsp;开奖详情</span><span class="kjgn"><a href="http://tbzs.ruyicai.com/cjw3d/index.php" title="福彩3D图表走势">福彩3D图表走势</a> | <a href="/fucaituijian/fucaituijian_fucai3D_1.html" title="福彩3D推荐预测">推荐预测</a></span>
	</div>
	<div class="kj_content_3d">
			<div class="kj_time"><span class="kj_time1">第<span id="sdbatchcode"><s:property value="id.batchcode"/></span>期
			&nbsp;&nbsp;&nbsp;&nbsp;开奖日期：<span id="sdtime"><s:property value="opentime.substring(0,10)"/></span>&nbsp;20:30:00</span>
			<span >
					<span><input class="kj_chxbtn" name="" type="button" value="" onclick="getdrawalotteryInfo('sd')"/>
					</span><span class="kj_time2">
						<select name="" id="sdselect" >
							<s:iterator value="batchcodeArray" >
								<option value="<s:property value="onebet"/>" <s:if test='id.batchcode==onebet'>selected="selected"</s:if>><s:property value="onebet"/></option>
							</s:iterator>
						</select>
						</span>
				</span>
	</div>
		<div class="kj_list" id="sdhaoma">
			<ul>
		 	<li class="kj_hongqiu"><s:property value="winbasecode.substring(1,2)"/></li>
            <li class="kj_hongqiu"><s:property value="winbasecode.substring(3,4)"/></li>
            <li class="kj_hongqiu"><s:property value="winbasecode.substring(5,6)"/></li>
            </ul>
		</div>
		</div>
	<div class="kj_jch">
	<div class="kj_list2"><span class="kj_momey">本期全国销售总额：<span id="sdtotalMoney"><s:property value="rtnMap.betTotalMoney"/></span>元&nbsp;&nbsp;</span>
			<span class="kj_btn"><a href="/fucai3D.html" title="立即购买"><img src="/images/lijigmbtn.gif" /></a></span>
		</div>
		<div class="kj_prize" id="sddj">
			<table width="712" border="0" cellpadding="0" cellspacing="0">
		    <tbody><tr height="35">
		      <td width="237" bgcolor="#e5e5e5"><strong class="newWhite">奖等</strong></td>
		      <td width="237" bgcolor="#e5e5e5"><strong class="newWhite">全国中奖注数</strong></td>
		      <td width="237" bgcolor="#e5e5e5"><strong class="newWhite">单注奖金</strong></td>
		    </tr>
		    <s:iterator value="rtnMap.prizeInfo" id="prizeInfo">
		      <tr height="30">
		        <td><span id="sdprizeName1"><s:property value="jianji"/></span></td>
		        <td><span id="sdcount1"><s:property value="zhushu"/></span></td>
		        <td><span id="sdbonus1"><s:property value="money"/></span></td>
		      </tr>
		    </s:iterator>
		    </tbody>
		  </table>
		</div>
	</div>
</div>
</s:if>

<s:if test='id.lotno=="F47102"'><input type="hidden" value="F47102" id="qlclotno"/>
<div class="zh_rightbg">
		<div class="kj_top"><span class="kjxq">
	七乐彩&nbsp;&nbsp;&nbsp;开奖详情</span><span class="kjgn"><a href="http://tbzs.ruyicai.com/cjwqlc/index.php" title="七乐彩图表走势">七乐彩图表走势</a> | <a href="/fucaituijian/fucaituijian_qilecai_1.html" title="七乐彩推荐预测">推荐预测</a></span>
</div>
<div class="kj_content_qlc">
	<div class="kj_time"><span class="kj_time1">第<span id="qlcbatchcode"><s:property value="id.batchcode"/></span>期
		&nbsp;&nbsp;&nbsp;&nbsp;开奖日期：<span id="qlctime"><s:property value="opentime.substring(0,10)"/></span>&nbsp;21:30:00</span>
		<span >
			<span><input class="kj_chxbtn" name="" type="button" value="" onclick="getdrawalotteryInfo('qlc')"/>
			</span><span class="kj_time2">
				<select name="" id="qlcselect" >
					<s:iterator value="batchcodeArray" >
						<option value="<s:property value="onebet"/>" <s:if test='id.batchcode==onebet'>selected="selected"</s:if>><s:property value="onebet"/></option>
					</s:iterator>
				</select>
				</span>
		</span>
	</div>
	<div class="kj_list" id="qlchaoma">
		<ul>
		<li class="kj_hongqiu"><s:property value="winbasecode.substring(0,2)"/></li>
		<li class="kj_hongqiu"><s:property value="winbasecode.substring(2,4)"/></li>
		<li class="kj_hongqiu"><s:property value="winbasecode.substring(4,6)"/></li>
		<li class="kj_hongqiu"><s:property value="winbasecode.substring(6,8)"/></li>
		<li class="kj_hongqiu"><s:property value="winbasecode.substring(8,10)"/></li>
		<li class="kj_hongqiu"><s:property value="winbasecode.substring(10,12)"/></li>
		<li class="kj_hongqiu"><s:property value="winbasecode.substring(12,14)"/></li>
		<li class="kj_lanqiu"><s:property value="winspecialcode"/></li>
		</ul>
	</div>
	</div>
	<div class="kj_jch">
	<div class="kj_list2"><span class="kj_momey">本期全国销售总额：<span id="qlctotalMoney"><s:property value="rtnMap.betTotalMoney"/></span>元&nbsp;&nbsp;
		奖池累计金额：<span id="qlcprogressive"><s:property value="rtnMap.progressive"/></span>元</span><span class="kj_btn"><a href="/qilecai.html" title="立即购买"><img src="/images/lijigmbtn.gif" /></a></span>
	</div>
	<div class="kj_prize" id="qlcdj"> 
		<table width="712" border="0" cellpadding="0" cellspacing="0">
	    <tbody><tr height="35">
	      <td width="237" bgcolor="#e5e5e5"><strong class="newWhite">奖等</strong></td>
	      <td width="237" bgcolor="#e5e5e5"><strong class="newWhite">全国中奖注数</strong></td>
	      <td width="237" bgcolor="#e5e5e5"><strong class="newWhite">单注奖金</strong></td>
	    </tr>
		
		<s:iterator value="rtnMap.prizeInfo" id="prizeInfo">
	      <tr height="30">
		   <td><span id="qlcprizeName0"><s:property value="jianji"/></span></td>
	        <td><span id="qlccount0"><s:property value="zhushu"/></span></td>
	        <td><span id="qlcbonus0"><s:property value="money"/></span></td>
	      </tr>
		</s:iterator>
		</tbody>
	 </table>
   </div>
</div>
</div>	
</s:if>

<s:if test='id.lotno=="T01002"'><input type="hidden" value="T01002" id="plslotno"/>
	<div class="zh_rightbg">
		<div class="kj_top"><span class="kjxq">
		排列三&nbsp;&nbsp;&nbsp;开奖详情</span><span class="kjgn"><a href="http://tbzs.ruyicai.com/cjwpl3/index.php" title="排列三图表走势">排列三图表走势</a> | <a href="/ticaituijian/ticaituijian_pailie3_1.html" title="排列三推荐预测">推荐预测</a></span>
	</div>
	<div class="kj_content_pls">
		<div class="kj_time"><span class="kj_time1">第<span id="plsbatchcode"><s:property value="id.batchcode"/></span>期&nbsp;&nbsp;&nbsp;&nbsp;
			开奖日期<span id="plstime"><s:property value="opentime.substring(0,10)"/></span>&nbsp;20:30:00</span>
			<span >
					<span><input class="kj_chxbtn" name="" type="button" value="" onclick="getdrawalotteryInfo('pls')"/>
					</span><span class="kj_time2">
						<select name="" id="plsselect" >
							<s:iterator value="batchcodeArray" >
								<option value="<s:property value="onebet"/>" <s:if test='id.batchcode==onebet'>selected="selected"</s:if>><s:property value="onebet"/></option>
							</s:iterator>
						</select>
						</span>
				</span>
		</div>
		<div class="kj_list" id="plshaoma">
			<ul>
				<li class="kj_hongqiu"><s:property value="winbasecode.substring(0,1)"/></li>
				<li class="kj_hongqiu"><s:property value="winbasecode.substring(1,2)"/></li>
				<li class="kj_hongqiu"><s:property value="winbasecode.substring(2,3)"/></li>
			</ul>
		</div>
		
		</div>
	<div class="kj_jch">
	<div class="kj_list2"><span class="kj_momey">本期全国销售总额：<span id="plstotalMoney"><s:property value="rtnMap.betTotalMoney"/></span>元&nbsp;&nbsp;</span>
			<span class="kj_btn"><a href="/pailie3.html" title="立即购买"><img src="/images/lijigmbtn.gif" /></a></span>
		</div>
		<div class="kj_prize" id="plsdj">
			<table width="712" border="0" cellpadding="0" cellspacing="0">
		    <tbody><tr height="35">
		      <td width="237" bgcolor="#e5e5e5"><strong class="newWhite">奖等</strong></td>
		      <td width="237" bgcolor="#e5e5e5"><strong class="newWhite">全国中奖注数</strong></td>
		      <td width="237" bgcolor="#e5e5e5"><strong class="newWhite">单注奖金</strong></td>
		    </tr>
		     
			 <s:iterator value="rtnMap.prizeInfo" id="prizeInfo">
		      <tr height="30">
		     	<td  bgcolor="#FEFBF2"><span id="plsprizeName1"><s:property value="jianji"/></span></td>
		        <td  bgcolor="#FEFBF2"><span id="plscount1"><s:property value="zhushu"/></span></td>
		        <td  bgcolor="#FEFBF2"><span id="plsbonus1"><s:property value="money"/></span></td>
		      </tr>
		    </s:iterator>
		    </tbody>
			</table>
		</div>
	</div>
</div>
</s:if>

<s:if test='id.lotno=="T01001"'><input type="hidden" value="T01001" id="dltlotno"/>
	<div class="zh_rightbg">
		<div class="kj_top"><span class="kjxq">
		大乐透&nbsp;&nbsp;&nbsp;开奖详情</span><span class="kjgn"><a href="http://tbzs.ruyicai.com/cjwdlt/index.php" title="大乐透图表走势">大乐透图表走势</a> | <a href="/ticaituijian/ticaituijian_daletou_1.html" title="大乐透推荐预测">推荐预测</a></span>
		</div>
	<div class="kj_content_dlt">
		<div class="kj_time"><span class="kj_time1">第<span id="dltbatchcode"><s:property value="id.batchcode"/></span>期&nbsp;&nbsp;&nbsp;&nbsp;
			开奖日期：<span id="dlttime"><s:property value="opentime.substring(0,10)"/></span>&nbsp;20:30:00</span>
		<span >
			<span><input class="kj_chxbtn" name="" type="button" value="" onclick="getdrawalotteryInfo('dlt')"/>
			</span><span class="kj_time2">
				<select name="" id="dltselect" >
					<s:iterator value="batchcodeArray">
						<option value="<s:property value="onebet"/>" <s:if test='id.batchcode==onebet'>selected="selected"</s:if>><s:property value="onebet"/></option>
					</s:iterator>
				</select>
				</span>
		</span>
		</div>
		<div class="kj_list" id="dlthaoma">
			<ul>
			  <li class="kj_hongqiu"><s:property value="winbasecode.substring(0,2)"/></li>
              <li class="kj_hongqiu"><s:property value="winbasecode.substring(2,4)"/></li>
              <li class="kj_hongqiu"><s:property value="winbasecode.substring(4,6)"/></li>
              <li class="kj_hongqiu"><s:property value="winbasecode.substring(6,8)"/></li>
              <li class="kj_hongqiu"><s:property value="winbasecode.substring(8,10)"/></li>
              <li class="kj_lanqiu"><s:property value="winbasecode.substring(11,13)"/></li>
              <li class="kj_lanqiu"><s:property value="winbasecode.substring(13,15)"/></li>
            </ul>
		</div>
		
	</div>
	<div class="kj_jch">
	<div class="kj_list2"><span class="kj_momey">本期全国销售总额：<span id="dlttotalMoney"><s:property value="rtnMap.betTotalMoney"/></span>元&nbsp;&nbsp;
		奖池累计金额：<span id="dltprogressive"><s:property value="rtnMap.progressive"/></span> 元</span><span class="kj_btn"><a href="/daletou.html" title="立即购买"><img src="/images/lijigmbtn.gif" /></a></span>
	</div>		
	  <div class="kj_prize" id="dltdj">
		<table width="712" border="0" cellpadding="0" cellspacing="0">
	    <tbody><tr height="35">
	      <td colspan="2" bgcolor="#e5e5e5"><strong class="newWhite">奖等</strong></td>
	      <td width="237" bgcolor="#e5e5e5"><strong class="newWhite">全国中奖注数</strong></td>
	      <td width="237" bgcolor="#e5e5e5"><strong class="newWhite">单注奖金</strong></td>
	    </tr>
	     
	   <s:iterator value="rtnMap.prizeInfo" id="prizeInfo" status="status">  
	    <s:if test="#status.odd">
	    	<s:if test="#status.index==14">
	        	<tr height="30">
			      <td colspan="2"><s:property value="jianji"/></td>
			      <td><s:property value="zhushu"/></td>
			      <td><s:property value="money"/></td>
			    </tr>
	        </s:if><s:else>
		    <tr height="30">
		       <td width="107" rowspan="2" ><s:property value="jianji"/></td>
		       <td width="137" ><s:property value="zhuijia"/></td>
		       <td><s:property value="zhushu"/></td>
		       <td><s:property value="money"/></td>
		    </tr>
		    </s:else>
	    </s:if><s:else>
	        <s:if test="#status.last">
	        	<tr height="30">
			      <td colspan="2" ><s:property value="jianji"/></td>
			      <td><s:property value="zhushu"/></td>
			      <td><s:property value="money"/></td>
			    </tr>
	        </s:if><s:else>
		    <tr height="30">
			  <td ><s:property value="zhuijia"/></td>
		      <td ><s:property value="zhushu"/></td>
		      <td ><s:property value="money"/></td>
		    </tr>
		    </s:else>
		 </s:else>
	   	</s:iterator>
	   	</tbody>
      </table>
    </div>	    
	</div>
	</div>
</s:if>
<!-- 排列五 -->
<s:if test='id.lotno=="T01011"'><input type="hidden" value="T01011" id="plwlotno"/>
	<div class="zh_rightbg">
		<div class="kj_top"><span class="kjxq">
		排列五&nbsp;&nbsp;&nbsp;开奖详情</span><span class="kjgn"><a href="http://tbzs.ruyicai.com/cjwpl5/index.php" title="排列五图表走势">排列五图表走势</a> | <a href="/ticaituijian/ticaituijian_pailie5_1.html" title="排列五推荐预测">推荐预测</a></span>
		</div>
	<div class="kj_content_plw">
		<div class="kj_time"><span class="kj_time1">第<span id="plwbatchcode"><s:property value="id.batchcode"/></span>期&nbsp;&nbsp;&nbsp;&nbsp;
			开奖日期：<span id="plwtime"><s:property value="opentime.substring(0,10)"/></span>&nbsp;20:30:00</span>
			<span >
					<span><input class="kj_chxbtn" name="" type="button" value="" onclick="getdrawalotteryInfo('plw')"/>
					</span><span class="kj_time2">
						<select name="" id="plwselect" >
							<s:iterator value="batchcodeArray" >
								<option value="<s:property value="onebet"/>" <s:if test='id.batchcode==onebet'>selected="selected"</s:if>><s:property value="onebet"/></option>
							</s:iterator>
						</select>
						</span>
				</span>
		</div>
		<div class="kj_list" id="plwhaoma">
			<ul>
			   <li class="kj_hongqiu"><s:property value="winbasecode.substring(0,1)"/></li>
		       <li class="kj_hongqiu"><s:property value="winbasecode.substring(1,2)"/></li>
		       <li class="kj_hongqiu"><s:property value="winbasecode.substring(2,3)"/></li>
		       <li class="kj_hongqiu"><s:property value="winbasecode.substring(3,4)"/></li>
		       <li class="kj_hongqiu"><s:property value="winbasecode.substring(4,5)"/></li>
		    </ul>
		</div>
		</div>
	<div class="kj_jch">
	<div class="kj_list2"><span class="kj_momey">本期全国销售总额：<span id="plwtotalMoney"><s:property value="rtnMap.betTotalMoney"/></span>元&nbsp;&nbsp;</span>
			<span class="kj_btn"><a href="/pailie5.html" title="立即购买"><img src="/images/lijigmbtn.gif" /></a></span>
		</div>
		<div class="kj_prize" id="plwdj">
				<table width="712" border="0" cellpadding="0" cellspacing="0">
	    		<tbody><tr height="35">
			     <td width="237" bgcolor="#e5e5e5"><strong class="newWhite">奖等</strong></td>
			      <td width="237" bgcolor="#e5e5e5"><strong class="newWhite">全国中奖注数</strong></td>
			      <td width="237" bgcolor="#e5e5e5"><strong class="newWhite">单注奖金</strong></td>
			    </tr>
				<s:iterator value="rtnMap.prizeInfo" id="prizeInfo">
			      <tr height="30">
			     	<td ><span id="plwprizeName0"><s:property value="jianji"/></span></td>
			        <td><span id="plwcount0"><s:property value="zhushu"/></span></td>
			        <td><span id="plwbonus0"><s:property value="money"/></span></td>
			      </tr>
			    </s:iterator>
			   </tbody>
			</table>
		</div>
	</div>
</div>
</s:if>
<!-- 七星彩 -->
<s:if test='id.lotno=="T01009"'><input type="hidden" value="T01009" id="qxclotno"/>
	<div class="zh_rightbg">
		<div class="kj_top"><span class="kjxq">
		七星彩&nbsp;&nbsp;&nbsp;开奖详情</span><span class="kjgn"><a href="http://tbzs.ruyicai.com/cjw7xc/index.php" title="七星彩图表走势">七星彩图表走势</a> | <a href="/ticaituijian/ticaituijian_qixingcai_1.html" title="七星彩推荐预测">推荐预测</a></span>
	</div>
	<div class="kj_content_qxc">
		<div class="kj_time"><span class="kj_time1">第<span id="qxcbatchcode"><s:property value="id.batchcode"/></span>期
		&nbsp;&nbsp;&nbsp;&nbsp;开奖日期：<span id="qxctime"><s:property value="opentime.substring(0,10)"/></span>&nbsp;20:30:00</span>
		<span >
					<span><input class="kj_chxbtn" name="" type="button" value="" onclick="getdrawalotteryInfo('qxc')" />
					</span><span class="kj_time2">
						<select name="" id="qxcselect" >
							<s:iterator value="batchcodeArray" >
								<option value="<s:property value="onebet"/>" <s:if test='id.batchcode==onebet'>selected="selected"</s:if>><s:property value="onebet"/></option>
							</s:iterator>
						</select>
						</span>
				</span>
		</div>
		<div class="kj_list" id="qxchaoma">
				<ul>
					<li class="kj_hongqiu"><s:property value="winbasecode.substring(0,1)"/></li>
		          	<li class="kj_hongqiu"><s:property value="winbasecode.substring(1,2)"/></li>
		          	<li class="kj_hongqiu"><s:property value="winbasecode.substring(2,3)"/></li>
		          	<li class="kj_hongqiu"><s:property value="winbasecode.substring(3,4)"/></li>
					<li class="kj_hongqiu"><s:property value="winbasecode.substring(4,5)"/></li>
					<li class="kj_hongqiu"><s:property value="winbasecode.substring(5,6)"/></li>
					<li class="kj_hongqiu"><s:property value="winbasecode.substring(6,7)"/></li>
				</ul>
		 </div>
	</div>
	<div class="kj_jch">
	<div class="kj_list2"><span class="kj_momey">本期全国销售总额：<span id="qxctotalMoney"><s:property value="rtnMap.betTotalMoney"/></span>元
		&nbsp;&nbsp;奖池累计金额：<span id="qxcprogressive"><s:property value="rtnMap.progressive"/></span>元</span><span class="kj_btn"><a href="/qixingcai.html" title="立即购买"><img src="/images/lijigmbtn.gif" /></a></span>
	</div>	
	<div class="kj_prize" id="qxcdj">
		<table width="712" border="0" cellpadding="0" cellspacing="0">
	    <tbody><tr height="35">
	      <td width="237" bgcolor="#e5e5e5"><strong class="newWhite">奖等</strong></td>
	      <td width="237" bgcolor="#e5e5e5"><strong class="newWhite">全国中奖注数</strong></td>
	      <td width="237" bgcolor="#e5e5e5"><strong class="newWhite">单注奖金</strong></td>
	    </tr>
	    <s:iterator value="rtnMap.prizeInfo" id="prizeInfo">
	      <tr height="30">
		    <td><span id="qxcprizeName0"><s:property value="jianji"/></span></td>
	        <td><span id="qxccount0"><s:property value="zhushu"/></span></td>
	        <td><span id="qxcbonus0"><s:property value="money"/></span></td>
	     </tr>
	    </s:iterator>
	    </tbody>
	 </table>
	</div>
	</div>
	</div>					
</s:if>

<!-- 重庆时时彩 -->
<s:if test='id.lotno=="T01007"'>
<div class="zh_rightbg">
	<div class="kj_top">
		<span class="kjxq">重庆时时彩&nbsp;&nbsp;&nbsp;开奖详情</span>
		<span class="kjgn"><a href="http://tbzs.ruyicai.com/cjwssc/index.php?lotteryType=ssc" title="重庆时时彩图表走势">重庆时时彩图表走势</a></span>
	</di>
	<div class="kj_content_ssc">
		<div class="kj_time">
			<span class="kj_time1">第<span id="sscbatchcode"><s:property value="id.batchcode"/></span>期&nbsp;&nbsp;&nbsp;&nbsp;
			开奖日期：<span id="ssctime"><s:property value="opentime"/>&nbsp;</span></span>
			<!--<span >
				<span><input class="kj_chxbtn" name="" type="button" value="" />
				</span><span class="kj_time2">
					<select name="" id="sscselect" >
						<s:iterator value="#request.SSCBetCode" >
							<option value="<s:property value="onebet"/>"><s:property value="onebet"/></option>
						</s:iterator>
					</select>
					</span>
			</span>-->
		</div>
		<div class="kj_list" >
			<ul>
			   <li class="kj_hongqiu" id="sscnumber1"><s:property value="winbasecode.substring(0,1)"/></li>
		       <li class="kj_hongqiu" id="sscnumber2"><s:property value="winbasecode.substring(1,2)"/></li>
		       <li class="kj_hongqiu" id="sscnumber3"><s:property value="winbasecode.substring(2,3)"/></li>
		       <li class="kj_hongqiu" id="sscnumber4"><s:property value="winbasecode.substring(3,4)"/></li>
		       <li class="kj_hongqiu" id="sscnumber5"><s:property value="winbasecode.substring(4,5)"/></li>
		     </ul>
		</div>
		</div>
	<div class="kj_jch">
	<div class="kj_list2"><span class="kj_btn"><a href="/shishicai.html" title="立即购买"><img src="/images/lijigmbtn.gif" /></a></span></div>
	</div>
</div>
</s:if>

<!-- 江西11选5 -->
<s:if test='id.lotno=="T01010"'>
<div class="zh_rightbg">
	<div class="kj_top">
		<span class="kjxq">江西11选5&nbsp;&nbsp;&nbsp;开奖详情</span>
		<span class="kjgn"><a href="http://tbzs.ruyicai.com/cjw11x5/index.php?lotteryType=11x5" title="江西11选5图表走势">江西11选5图表走势</a></span>
	</div>
	<div class="kj_content_syxw">
		<div class="kj_time">
			<span class="kj_time1">第<span id="syxwbatchcode"><s:property value="id.batchcode"/></span>期&nbsp;&nbsp;&nbsp;&nbsp;
			开奖日期：<span id="syxwtime"><s:property value="opentime"/>&nbsp;</span></span>
			<!--<span >
				<span><input class="kj_chxbtn" name="" type="button" value="" />
				</span><span class="kj_time2">
					<select name="" id="syxwselect" >
						<s:iterator value="#request.SSCBetCode" >
							<option value="<s:property value="onebet"/>"><s:property value="onebet"/></option>
						</s:iterator>
					</select>
					</span>
			</span>-->
		</div>
		<div class="kj_list" >
			<ul>
			   <li class="kj_hongqiu" id="syxwnumber1"><s:property value="winbasecode.substring(0,2)"/></li>
		       <li class="kj_hongqiu" id="syxwnumber2"><s:property value="winbasecode.substring(3,5)"/></li>
		       <li class="kj_hongqiu" id="syxwnumber3"><s:property value="winbasecode.substring(6,8)"/></li>
		       <li class="kj_hongqiu" id="syxwnumber4"><s:property value="winbasecode.substring(9,11)"/></li>
		       <li class="kj_hongqiu" id="syxwnumber5"><s:property value="winbasecode.substring(12,14)"/></li>
		     </ul>
		</div>
		</div>
	<div class="kj_jch">
	<div class="kj_list2"><span class="kj_btn"><a href="javascript:;" title="立即购买"><img src="/images/lijigmbtn.gif" /></a></span></div>
	</div>
</div>
</s:if>
<!-- 十一运夺金 -->
<s:if test='id.lotno=="T01012"'>
<div class="zh_rightbg">
	<div class="kj_top">
		<span class="kjxq">十一运夺金&nbsp;&nbsp;&nbsp;开奖详情</span>
		<span class="kjgn"><a href="http://tbzs.ruyicai.com/cjw11x5/index.php?lotteryType=11x5" title="十一运夺金图表走势">十一运夺金图表走势</a></span>
	</div>
	<div class="kj_content_syxw">
		<div class="kj_time">
			<span class="kj_time1">第<span id="syydjbatchcode"><s:property value="id.batchcode"/></span>期&nbsp;&nbsp;&nbsp;&nbsp;
			开奖日期：<span id="syydjtime"><s:property value="opentime"/>&nbsp;</span></span>
			<!--<span >
				<span><input class="kj_chxbtn" name="" type="button" value="" />
				</span><span class="kj_time2">
					<select name="" id="syydjselect" >
						<s:iterator value="#request.SSCBetCode" >
							<option value="<s:property value="onebet"/>"><s:property value="onebet"/></option>
						</s:iterator>
					</select>
					</span>
			</span>-->
		</div>
		<div class="kj_list" >
			<ul>
			   <li class="kj_hongqiu" id="syydjnumber1"><s:property value="winbasecode.substring(0,2)"/></li>
		       <li class="kj_hongqiu" id="syydjnumber2"><s:property value="winbasecode.substring(3,5)"/></li>
		       <li class="kj_hongqiu" id="syydjnumber3"><s:property value="winbasecode.substring(6,8)"/></li>
		       <li class="kj_hongqiu" id="syydjnumber4"><s:property value="winbasecode.substring(9,11)"/></li>
		       <li class="kj_hongqiu" id="syydjnumber5"><s:property value="winbasecode.substring(12,14)"/></li>
		     </ul>
		</div>
		</div>
	<div class="kj_jch">
	<div class="kj_list2"><span class="kj_btn"><a href="javascript:;" title="立即购买"><img src="/images/lijigmbtn.gif" /></a></span></div>
	</div>
</div>
</s:if>
</s:iterator>
</div>

