<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
		<!--开奖中心右边-->	
	<div class="lotteryAnnouncement">
			<table width="100%" class="announcement_infor" cellspacing="0" cellpadding="0">
				<tr>
					<th>彩种</th>
					<th>期号</th>
					<th>开奖时间</th>
					<th>开奖号码</th>
					<th>开奖日</th>
					<th>详情</th>
					<th>图表</th>
					<th colspan="2">购买彩票</th>
				</tr>
				<s:if test="#request.arrWininfo.arrWininfoF.size()>0">
				 <tr class="announcement_bgYellow">
					<td colspan="9" >福彩开奖</td>
				</tr>
				</s:if>
				 <s:iterator value="#request.arrWininfo.arrWininfoF">
					<!-- 双色球 -->
			      <s:if test="id.lotno=='F47104'">
				<tr>
					<td><a href="/kaijiang/shuangseqiukaijiang.html" title="双色球">双色球</a></td>
					<td><s:property value="id.batchcode"/></td>
					<td><s:property value="opentime.substring(0,10)"/></td>
					<td>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(0,2)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(2,4)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(4,6)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(6,8)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(8,10)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(10,12)"/></span>
						<span class="SmallBlueBall"><s:property value="winspecialcode"/></span>
					</td>
					<td>二 四 日</td>
					<td><a href="/kaijiang/shuangseqiukaijiang.html"><img src="/images/magnifier.gif" width="16" height="16" /></a></td>
					<td><a href="http://tbzs.ruyicai.com/cjwssq/index.php"><img src="/images/column.gif" width="16" height="15" /></a></td>
					<td><a href="/shuangseqiu.html" title="代购">代购</a></td>
					<!-- <td><a href="/hemai/shuanseqiuhemai.html" title="合买">合买</a></td> -->
				</tr>
				</s:if>
				<!-- 福彩3D -->
				<s:elseif test="id.lotno=='F47103'">
				<tr>
					<td><a href="/kaijiang/fucai3Dkaijiang.html" title="福彩3D">福彩3D</a></td>
					<td><s:property value="id.batchcode"/></td>
					<td><s:property value="opentime.substring(0,10)"/></td>
					<td>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(1,2)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(3,4)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(5,6)"/></span>
					</td>
					<td>每天</td>
					<td><a href="/kaijiang/fucai3Dkaijiang.html"><img src="/images/magnifier.gif" width="16" height="16" /></a></td>
					<td><a href="http://tbzs.ruyicai.com/cjw3d/index.php"><img src="/images/column.gif" width="16" height="15" /></a></td>
					<td><a href="/fucai3D.html" title="代购">代购</a></td>
					<!-- <td><a href="/hemai/fucai3dhemai.html" title="合买">合买</a></td> -->
				</tr>
				</s:elseif>
				<!-- 七乐彩 -->				
				<s:elseif test="id.lotno=='F47102'">
				<tr>
					<td><a href="/kaijiang/qilecaikaijiang.html" title="七乐彩">七乐彩</a></td>
					<td><s:property value="id.batchcode"/></td>
					<td><s:property value="opentime.substring(0,10)"/></td>
					<td>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(0,2)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(2,4)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(4,6)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(6,8)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(8,10)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(10,12)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(12,14)"/></span>
						<span class="SmallBlueBall"><s:property value="winspecialcode"/></span>
					</td>
					<td>一 三 五</td>
					<td><a href="/kaijiang/qilecaikaijiang.html"><img src="/images/magnifier.gif" width="16" height="16" /></a></td>
					<td><a href="http://tbzs.ruyicai.com/cjwqlc/index.php""><img src="/images/column.gif" width="16" height="15" /></a></td>
					<td><a href="/qilecai.html" title="代购">代购</a></td>
					<!-- <td><a href="/hemai/qilecaihemai.html" title="合买">合买</a></td> -->
				</tr>
				</s:elseif>
				</s:iterator>
				<tr class="announcement_bgYellow">
				<td colspan="9" >体彩开奖</td>
				</tr>
				 <s:iterator value="#request.arrWininfo.arrWininfoT">				
				<!-- 大乐透 -->
				<s:if test="id.lotno=='T01001'">
				<tr>
					<td><a href="/kaijiang/daletoukaijiang.html" title="超级大乐透">超级大乐透</a></td>
					<td><s:property value="id.batchcode"/></td>
					<td><s:property value="opentime.substring(0,10)"/></td>
					<td>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(0,2)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(2,4)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(4,6)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(6,8)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(8,10)"/></span>
						<span class="SmallBlueBall"><s:property value="winbasecode.substring(11,13)"/></span>
						<span class="SmallBlueBall"><s:property value="winbasecode.substring(13,15)"/></span>
					</td>
					<td>一 三 六</td>
					<td><a href="/kaijiang/daletoukaijiang.html"><img src="/images/magnifier.gif" width="16" height="16" /></a></td>
					<td><a href="http://tbzs.ruyicai.com/cjwdlt/index.php"><img src="/images/column.gif" width="16" height="15" /></a></td>
					<td><a href="/daletou.html" title="代购">代购</a></td>
<!-- 					<td><a href="/chlw/function/selectAll!getCaselotsByWhere?lotno=T01001" title="合买">合买</a></td>
 -->				</tr>
				</s:if>
				<!-- 排列三 -->
				<s:elseif test="id.lotno=='T01002'">
				<tr>
					<td><a href="/kaijiang/pailiesankaijiang.html" title="排列三">排列三</a></td>
					<td><s:property value="id.batchcode"/></td>
					<td><s:property value="opentime.substring(0,10)"/></td>
					<td>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(0,1)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(1,2)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(2,3)"/></span>
					</td>
					<td>每天</td>
					<td><a href="/kaijiang/pailiesankaijiang.html"><img src="/images/magnifier.gif" width="16" height="16" /></a></td>
					<td><a href="http://tbzs.ruyicai.com/cjwpl3/index.php"><img src="/images/column.gif" width="16" height="15" /></a></td>
					<td><a href="/pailie3.html" title="代购">代购</a></td>
<!-- 					<td><a href="/hemai/pailie3hemai.html" title="合买">合买</a></td>
 -->				</tr>
				</s:elseif>
				<!-- 排列五 -->	
				<s:elseif test="id.lotno=='T01011'">
				<tr>
					<td><a href="/kaijiang/pailiewukaijiang.html" title="排列五">排列五</a></td>
					<td><s:property value="id.batchcode"/></td>
					<td><s:property value="opentime.substring(0,10)"/></td>
					<td>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(0,1)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(1,2)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(2,3)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(3,4)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(4,5)"/></span>
					</td>
					<td>每天</td>
					<td><a href="/kaijiang/pailiewukaijiang.html"><img src="/images/magnifier.gif" width="16" height="16" /></a></td>
					<td><a href="http://tbzs.ruyicai.com/cjwpl5/index.php"><img src="/images/column.gif" width="16" height="15" /></a></td>
					<td><a href="/pailie5.html" title="代购">代购</a></td>
<!-- 					<td><a href="/hemai/pailie5hemai.html" title="合买">合买</a></td>
 -->				</tr>
				</s:elseif>
				<!-- 七星彩 -->	
				<s:elseif test="id.lotno=='T01009'">	
				<tr>
					<td><a href="/kaijiang/qixingcaikaijiang.html" title="七星彩">七星彩</a></td>
					<td><s:property value="id.batchcode"/></td>
					<td><s:property value="opentime.substring(0,10)"/></td>
					<td>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(0,1)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(1,2)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(2,3)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(3,4)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(4,5)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(5,6)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(6,7)"/></span>
					</td>
					<td>二 五 日</td>
					<td><a href="/kaijiang/qixingcaikaijiang.html"><img src="/images/magnifier.gif" width="16" height="16" /></a></td>
					<td><a href="http://tbzs.ruyicai.com/cjw7xc/index.php"><img src="/images/column.gif" width="16" height="15" /></a></td>
					<td><a href="/qixingcai.html" title="代购">代购</a></td>
<!-- 					<td><a href="/hemai/qixingcaihemai.html" title="合买">合买</a></td>
 -->				</tr>
				</s:elseif>
				<!-- 22xuan5 -->	
				<s:elseif test="id.lotno=='T01013'">
				<tr>
					<td><a href="/kaijiang/22xuan5kaijiang.html" title="22选5">22选5</a></td>
					<td><s:property value="id.batchcode"/></td>
					<td><s:property value="opentime.substring(0,10)"/></td>
					<td>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(0,2)"/></span>  
						<span class="SmallRedBall"><s:property value="winbasecode.substring(3,5)"/></span>  
						<span class="SmallRedBall"><s:property value="winbasecode.substring(6,8)"/></span>  
						<span class="SmallRedBall"><s:property value="winbasecode.substring(9,11)"/></span> 
						<span class="SmallRedBall"><s:property value="winbasecode.substring(12,14)"/></span>
					</td>
					<td>每天</td>
					<td><a href="/kaijiang/22xuan5kaijiang.html"><img src="/images/magnifier.gif" width="16" height="16" /></a></td>
					<td><a href="http://tbzs.ruyicai.com/cjw22x5/index.php"><img src="/images/column.gif" width="16" height="15" /></a></td>
					<td><a href="/22xuan5.html" title="代购">代购</a></td>
<!-- 					<td><a href="/hemai/22xuan5hemai.html" title="合买">合买</a></td>
 -->				</tr>
				</s:elseif>
				</s:iterator>
				<tr class="announcement_bgYellow">
					<td colspan="9">高频彩开奖</td>
				</tr>
				 <s:iterator value="#request.arrWininfo.arrWininfoG">	
				 <s:if test='id.lotno=="T01007"'>
				<tr>
					<td><a href="/kaijiang/shishicaikaijiang.html" title="时时彩">时时彩</a></td>
					<td><s:property value="id.batchcode"/></td>
					<td><s:property value="opentime.substring(0,10)"/></td>
					<td>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(0,1)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(1,2)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(2,3)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(3,4)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(4,5)"/></span>
					</td>
					<td>每10/5分钟</td>
					<td><a href="/kaijiang/shishicaikaijiang.html"><img src="/images/magnifier.gif" width="16" height="16" /></a></td>
					<td><a href="http://tbzs.ruyicai.com/cjwssc/index.php?lotteryType=ssc"><img src="/images/column.gif" width="16" height="15" /></a></td>
					<td><a href="/shishicai.html" title="代购">代购</a></td>
					<td>&nbsp;</td>
				</tr>
				</s:if>
				<s:if test='id.lotno=="T01010"'> 
				<tr>
					<td><a href="/kaijiang/11xuan5kaijiang.html" title="江西11选5">江西11选5</a></td>
					<td><s:property value="id.batchcode"/></td>
					<td><s:property value="opentime.substring(0,10)"/></td>
					<td>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(0,2)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(3,5)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(6,8)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(9,11)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(12,14)"/></span>
					</td>
					<td>每12分钟</td>
					<td><a href="/kaijiang/11xuan5kaijiang.html"><img src="/images/magnifier.gif" width="16" height="16" /></a></td>
					<td><a href="http://tbzs.ruyicai.com/cjw11x5/index.php?lotteryType=11x5"><img src="/images/column.gif" width="16" height="15" /></a></td>
					<td><a href="/11xuan5.html" title="代购">代购</a></td>
					<td>&nbsp;</td>
				</tr>
				</s:if>
				<s:if test='id.lotno=="T01012"'> 
				<tr>
					<td><a href="/kaijiang/shiyiyunduojinkaijiang.html" title="十一运夺金">十一运夺金</a></td>
					<td><s:property value="id.batchcode"/></td>
					<td><s:property value="opentime.substring(0,10)"/></td>
					<td width="200">
						<span class="SmallRedBall"><s:property value="winbasecode.substring(0,2)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(3,5)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(6,8)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(9,11)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(12,14)"/></span>
					</td>
					<td>每10分钟</td>
					<td><a href="/kaijiang/shiyiyunduojinkaijiang.html"><img src="/images/magnifier.gif" width="16" height="16" /></a></td>
					<td><a href="http://tbzs.ruyicai.com/cjw11x5/index.php?lotteryType=11x5"><img src="/images/column.gif" width="16" height="15" /></a></td>
					<td><a href="/shiyiyunduojin.html" title="代购">代购</a></td>
					<td>&nbsp;</td>
				</tr>
				</s:if>
				<s:if test='id.lotno=="T01013"'> 
				<tr>
					<td><a href="/kaijiang/22xuan5kaijiang.html" title="22选5">22选5</a></td>
					<td><s:property value="id.batchcode"/></td>
					<td><s:property value="opentime"/></td>
					<td width="200">
						<span class="SmallRedBall"><s:property value="winbasecode.substring(0,2)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(3,5)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(6,8)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(9,11)"/></span>
						<span class="SmallRedBall"><s:property value="winbasecode.substring(12,14)"/></span>
					</td>
					<td>每10分钟</td>
					<td><a href="/kaijiang/22xuan5.html"><img src="/images/magnifier.gif" width="16" height="16" /></a></td>
					<td><a href="http://tbzs.ruyicai.com/cjw22x5/index.php"><img src="/images/column.gif" width="16" height="15" /></a></td>
					<td><a href="/22xuan5.html" title="代购">代购</a></td>
					<td>&nbsp;</td>
				</tr>
				
				
				</s:if>
				</s:iterator>
				
				<!--2012年11月28第二部分修改开始-->
				<tr class="announcement_bgYellow">
				<td colspan="9" >竞技彩开奖</td>
				</tr>
				<s:iterator value="#request.arrWininfo.arrWininfoZc">
				<s:if test='id.lotno=="T01003"'>
				<tr>
					<td><a  title="足彩胜负">足彩胜负</a></td>
					<td><s:property value="id.batchcode"/></td>
					<td><s:property value="opentime"/></td>
					<td width="200">
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(0,1)"/></span>
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(1,2)"/></span>
                        <span class="SmallYellowBall"><s:property value="winbasecode.substring(2,3)"/></span>
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(3,4)"/></span>
                        <span class="SmallYellowBall"><s:property value="winbasecode.substring(4,5)"/></span>
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(5,6)"/></span>
                        <span class="SmallYellowBall"><s:property value="winbasecode.substring(6,7)"/></span>
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(7,8)"/></span>
                        <span class="SmallYellowBall"><s:property value="winbasecode.substring(8,9)"/></span>
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(9,10)"/></span>
                        <span class="SmallYellowBall"><s:property value="winbasecode.substring(10,11)"/></span>
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(11,12)"/></span>
                        <span class="SmallYellowBall"><s:property value="winbasecode.substring(12,13)"/></span>
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(13,14)"/></span>
					</td>
					<td>不定期</td>
					<td><a ><img src="/images/magnifier.gif" width="16" height="16" /></a></td>
					<td>&nbsp;</td>
					<td><a href="/zucaishengfu.html" title="代购">代购</a></td>
					<td><a href="/zucaishengfu.html?canshu=hemai#BettingForm" title="合买">合买</a></td>
				</tr>
				</s:if>
				<s:if test='id.lotno=="T01004"'>
				<tr>
					<td><a  title="任选9场">任选9场</a></td>
				<td><s:property value="id.batchcode"/></td>
					<td><s:property value="opentime"/></td>
					<td width="200">
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(0,1)"/></span>
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(1,2)"/></span>
                        <span class="SmallYellowBall"><s:property value="winbasecode.substring(2,3)"/></span>
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(3,4)"/></span>
                        <span class="SmallYellowBall"><s:property value="winbasecode.substring(4,5)"/></span>
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(5,6)"/></span>
                        <span class="SmallYellowBall"><s:property value="winbasecode.substring(6,7)"/></span>
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(7,8)"/></span>
                        <span class="SmallYellowBall"><s:property value="winbasecode.substring(8,9)"/></span>
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(9,10)"/></span>
                        <span class="SmallYellowBall"><s:property value="winbasecode.substring(10,11)"/></span>
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(11,12)"/></span>
                        <span class="SmallYellowBall"><s:property value="winbasecode.substring(12,13)"/></span>
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(13,14)"/></span>
					</td>
					<td>不定期</td>
					<td><a ><img src="/images/magnifier.gif" width="16" height="16" /></a></td>
					<td>&nbsp;</td>
					<td><a href="/renxuan9chang.html" title="代购">代购</a></td>
					<td><a href="/renxuan9chang.html?canshu=hemai#BettingForm" title="合买">合买</a></td>

				</tr>
				 </s:if>
				 <s:if test='id.lotno=="T01006"'>
				<tr>
					<td><a title="6场半全">6场半全</a></td>
				<td><s:property value="id.batchcode"/></td>
					<td><s:property value="opentime"/></td>
					<td width="200">
					<span class="SmallYellowBall"><s:property value="winbasecode.substring(0,1)"/></span>
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(1,2)"/></span>
                        <span class="SmallYellowBall"><s:property value="winbasecode.substring(2,3)"/></span>
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(3,4)"/></span>
                        <span class="SmallYellowBall"><s:property value="winbasecode.substring(4,5)"/></span>
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(5,6)"/></span>
                        <span class="SmallYellowBall"><s:property value="winbasecode.substring(6,7)"/></span>
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(7,8)"/></span>
                        <span class="SmallYellowBall"><s:property value="winbasecode.substring(8,9)"/></span>
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(9,10)"/></span>
                        <span class="SmallYellowBall"><s:property value="winbasecode.substring(10,11)"/></span>
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(11,12)"/></span>
                        <span class="SmallYellowBall"><s:property value="winbasecode.substring(12,13)"/></span>
					</td>
					<td>不定期</td>

					<td><a><img src="/images/magnifier.gif" width="16" height="16" /></a></td>
				    <td>&nbsp;</td>
					<td><a href="/6changbanquan.html" title="代购">代购</a></td>
					<td><a href="/6changbanquan.html?canshu=hemai#BettingForm" title="合买">合买</a></td>
				</tr>
				</s:if>
				 <s:if test='id.lotno=="T01005"'>
                <tr>
					<td><a title="4场进球">4场进球</a></td>
				<td>
				<s:property value="id.batchcode"/></td>
					<td><s:property value="opentime"/></td>
					<td width="200">
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(0,1)"/></span>
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(1,2)"/></span>
                        <span class="SmallYellowBall"><s:property value="winbasecode.substring(2,3)"/></span>
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(3,4)"/></span>
                        <span class="SmallYellowBall"><s:property value="winbasecode.substring(4,5)"/></span>
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(5,6)"/></span>
                        <span class="SmallYellowBall"><s:property value="winbasecode.substring(6,7)"/></span>
						<span class="SmallYellowBall"><s:property value="winbasecode.substring(7,8)"/></span>
					</td>
					<td>不定期</td>
					<td><a><img src="/images/magnifier.gif" width="16" height="16" /></a></td>
					<td>&nbsp;</td>
					<td><a href="/4changjinqiu.html" title="代购">代购</a></td>
					<td><a href="/4changjinqiu.html?canshu=hemai#BettingForm" title="合买">合买</a></td>
				</tr>
				</s:if>
				<!--2012年11月28第二部分修改结束-->
				</s:iterator>
				<tr>
					<td><a href="/kaijiang/shiyiyunduojinkaijiang.html" title="竞彩足球">竞彩足球</a></td>
					<td>--</td>
					<td>--</td>
					<td width="200">
						<a href="/chlw/function/ryc_select_newkj!drawalotteryJc?type=1&date=20121207">查看中奖详情</a>
					</td>
					<td>不定期</td>
					<td><a href=""><img src="/images/magnifier.gif" width="16" height="16" /></a></td>
					<td>&nbsp;</td>
					<td><a href="" title="代购">代购</a></td>
					<td><a href="#" title="合买">合买</a></td>
				</tr>
			</table>
			<script>
			$(function(){
				$(".a_111").addClass("selected");
			});
			</script>
	</div>