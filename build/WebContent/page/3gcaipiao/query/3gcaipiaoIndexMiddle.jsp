<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <!-- 3g彩票首页开奖查询 -->
 <%@taglib prefix="s" uri="/struts-tags"%>
 
 <s:iterator value="#request.arrWininfo" id="arrWininfo">
<!-- 双色球 -->
 	<s:if test="id.lotno=='F47104'">
 	  <div class="caizhong">
		<div class="caizhong_logo"><span class="caizhong_img"><img src="/images/ssq_tu.gif" /></span><span class="caizhong_text">双色球</span></div>
		<div class="caizhong_jieguo">
			<div class="czh_message"><span class="czh_1"><s:property value="id.batchcode"/>期</span>
				<span class="czh_2">开奖时间：<s:property value="opentime.substring(0,10)"/>&nbsp;21:30:00</span>
			</div>
			<div class="czh_qiu">
				<ul>
					<li class="hongqiu"><s:property value="winbasecode.substring(0,2)"/></li>
					<li class="hongqiu"><s:property value="winbasecode.substring(2,4)"/></li>
					<li class="hongqiu"><s:property value="winbasecode.substring(4,6)"/></li>
					<li class="hongqiu"><s:property value="winbasecode.substring(6,8)"/></li>
					<li class="hongqiu"><s:property value="winbasecode.substring(8,10)"/></li>
					<li class="hongqiu"><s:property value="winbasecode.substring(10,12)"/></li>
					<li class="lanqiu"><s:property value="winspecialcode"/></li>
				</ul>
			</div>
		</div>
		<div class="caizhong_btn">
			<ul>
				<li><a href="/shuangseqiu.html" title="立即购买"><img src="/images/buybtn.gif" alt="立即购买"/></a></li>
				<li><a href="http://tbzs.ruyicai.cn/cjwssq/index.php" target="_blank" title="双色球图表走势"><img src="/images/tbzsbtn.gif" alt="图表走势"/></a></li>
				<li><a href="/shuangseqiu.html" title="话费购买"><img src="/images/hfgmbtn.gif" alt="话费购买"/></a></li>
				<li><a href="/bangzhuzhongxin/wanfajieshao.html#1" title="玩法介绍"><img src="/images/wfjsbtn.gif" alt="玩法介绍"/></a></li>
			</ul>
		</div>
	 </div>
 	</s:if>
<!-- 大乐透 -->
 	<s:elseif test="id.lotno=='T01001'">
 	    <div class="caizhong">
		<div class="caizhong_logo"><span class="caizhong_img"><img src="/images/dlt_tu.gif" /></span><span class="caizhong_text">大乐透</span></div>
		<div class="caizhong_jieguo">
			<div class="czh_message">
				<span class="czh_1"><s:property value="id.batchcode"/>期</span>
				<span class="czh_2">开奖时间：<s:property value="opentime.substring(0,10)"/>&nbsp;20:30:00</span>
			</div>
			<div class="czh_qiu">
				<ul>
					<li class="hongqiu"><s:property value="winbasecode.substring(0,2)"/></li>
					<li class="hongqiu"><s:property value="winbasecode.substring(2,4)"/></li>
					<li class="hongqiu"><s:property value="winbasecode.substring(4,6)"/></li>
					<li class="hongqiu"><s:property value="winbasecode.substring(6,8)"/></li>
					<li class="hongqiu"><s:property value="winbasecode.substring(8,10)"/></li>
					<li class="lanqiu"><s:property value="winbasecode.substring(11,13)"/></li>
					<li class="lanqiu"><s:property value="winbasecode.substring(13,15)"/></li>
				</ul>
			</div>
		</div>
		<div class="caizhong_btn">
			<ul>
				<li><a href="/daletou.html" title="立即购买"><img src="/images/buybtn.gif" alt="立即购买"/></a></li>
				<li><a href="http://tbzs.ruyicai.cn/cjwdlt/index.php" target="_blank" title="大乐透图表走势"><img src="/images/tbzsbtn.gif" alt="图表走势"/></a></li>
				<li><a href="/daletou.html" title="话费购买"><img src="/images/hfgmbtn.gif" alt="话费购买"/></a></li>
				<li><a href="/bangzhuzhongxin/wanfajieshao.html#2" title="玩法介绍"><img src="/images/wfjsbtn.gif" alt="玩法介绍"/></a></li>
			</ul>
		</div>
	</div>	
 	</s:elseif>
 	
<!-- 福彩3D -->
 	<s:elseif test="id.lotno=='F47103'">
 		<div class="caizhong">
		<div class="caizhong_logo"><span class="caizhong_img"><img src="/images/fc3d_tu.gif" /></span><span class="caizhong_text">福彩3D</span></div>
		<div class="caizhong_jieguo">
			<div class="czh_message">
			<span class="czh_1"><s:property value="id.batchcode"/>期</span>
			<span class="czh_2">开奖时间：<s:property value="opentime.substring(0,10)"/>&nbsp;20:30:00</span>
			</div>
			<div class="czh_qiu">
				<ul>
					<li class="hongqiu"><s:property value="winbasecode.substring(1,2)"/></li>
					<li class="hongqiu"><s:property value="winbasecode.substring(3,4)"/></li>
					<li class="hongqiu"><s:property value="winbasecode.substring(5,6)"/></li>
				</ul>
			</div>
		</div>
		<div class="caizhong_btn">
			<ul>
				<li><a href="/fucai3D.html" title="立即购买"><img src="/images/buybtn.gif" alt="立即购买"/></a></li>
				<li><a href="http://tbzs.ruyicai.cn/cjw3d/index.php" target="_blank" title="福彩3D图表走势"><img src="/images/tbzsbtn.gif" alt="图表走势"/></a></li>
				<li><a href="/fucai3D.html" title="话费购买"><img src="/images/hfgmbtn.gif" alt="话费购买"/></a></li>
				<li><a href="/bangzhuzhongxin/wanfajieshao.html#3" title="玩法介绍"><img src="/images/wfjsbtn.gif" alt="玩法介绍"/></a></li>
			</ul>
		</div>
	</div>
 	</s:elseif>
 	
<!-- 排列三 -->
 	<s:elseif test="id.lotno=='T01002'">
 	   	<div class="caizhong">
		<div class="caizhong_logo"><span class="caizhong_img"><img src="/images/pls_tu.gif" /></span><span class="caizhong_text">排列三</span></div>
			<div class="caizhong_jieguo">
				<div class="czh_message">
				<span class="czh_1"><s:property value="id.batchcode"/>期</span>
				<span class="czh_2">开奖时间：<s:property value="opentime.substring(0,10)"/>&nbsp;20:30:00</span>
				</div>
				<div class="czh_qiu">
					<ul>
						<li class="hongqiu"><s:property value="winbasecode.substring(0,1)"/></li>
						<li class="hongqiu"><s:property value="winbasecode.substring(1,2)"/></li>
						<li class="hongqiu"><s:property value="winbasecode.substring(2,3)"/></li>
					</ul>
				</div>
			</div>
		<div class="caizhong_btn">
			<ul>
				<li><a href="/pailie3.html" title="立即购买"><img src="/images/buybtn.gif" alt="立即购买"/></a></li>
				<li><a href="http://tbzs.ruyicai.cn/cjwpl3/index.php" target="_blank" title="排列三图表走势"><img src="/images/tbzsbtn.gif" alt="图表走势"/></a></li>
				<li><a href="/pailie3.html" title="话费购买"><img src="/images/hfgmbtn.gif" alt="话费购买"/></a></li>
				<li><a href="/bangzhuzhongxin/wanfajieshao.html#4" title="玩法介绍"><img src="/images/wfjsbtn.gif" alt="玩法介绍"/></a></li>
			</ul>
		</div>
	</div>	
 	</s:elseif>

<!-- 排列五 -->
 	<s:elseif test="id.lotno=='T01011'">
 		<div class="caizhong">
		<div class="caizhong_logo"><span class="caizhong_img"><img src="/images/plwhomelogo.gif" /></span><span class="caizhong_text">排列五</span></div>
			<div class="caizhong_jieguo">
				<div class="czh_message">
				<span class="czh_1"><s:property value="id.batchcode"/>期</span>
				<span class="czh_2">开奖时间：<s:property value="opentime.substring(0,10)"/>&nbsp;20:30:00</span>
				</div>
				<div class="czh_qiu">
					<ul>
						<li class="hongqiu"><s:property value="winbasecode.substring(0,1)"/></li>
						<li class="hongqiu"><s:property value="winbasecode.substring(1,2)"/></li>
						<li class="hongqiu"><s:property value="winbasecode.substring(2,3)"/></li>
						<li class="hongqiu"><s:property value="winbasecode.substring(3,4)"/></li>
						<li class="hongqiu"><s:property value="winbasecode.substring(4,5)"/></li>
					</ul>
				</div>
			</div>
		<div class="caizhong_btn">
			<ul>
				<li><a href="pailie5.html" title="立即购买"><img src="/images/buybtn.gif" alt="立即购买"/></a></li>
				<li><a href="http://tbzs.ruyicai.cn/cjwpl5/index.php" target="_blank" title="排列五图表走势"><img src="/images/tbzsbtn.gif" alt="图表走势"/></a></li>
				<li><a href="/pailie5.html" title="话费购买"><img src="/images/hfgmbtn.gif" alt="话费购买"/></a></li>
				<li><a href="/bangzhuzhongxin/wanfajieshao.html#5" title="玩法介绍"><img src="/images/wfjsbtn.gif" alt="玩法介绍"/></a></li>
			</ul>
		</div>
	</div> 	
  </s:elseif>
<!-- 七星彩 -->
	<s:elseif test="id.lotno=='T01009'">
	   <div class="caizhong">
		<div class="caizhong_logo"><span class="caizhong_img"><img src="/images/qxchomelogo.gif" /></span><span class="caizhong_text">七星彩</span></div>
			<div class="caizhong_jieguo">
				<div class="czh_message">
				<span class="czh_1"><s:property value="id.batchcode"/>期</span>
				<span class="czh_2">开奖时间：<s:property value="opentime.substring(0,10)"/>&nbsp;20:30:00</span>
				</div>
				<div class="czh_qiu">
					<ul>
						<li class="hongqiu"><s:property value="winbasecode.substring(0,1)"/></li>
						<li class="hongqiu"><s:property value="winbasecode.substring(1,2)"/></li>
						<li class="hongqiu"><s:property value="winbasecode.substring(2,3)"/></li>
						<li class="hongqiu"><s:property value="winbasecode.substring(3,4)"/></li>
						<li class="hongqiu"><s:property value="winbasecode.substring(4,5)"/></li>
						<li class="hongqiu"><s:property value="winbasecode.substring(5,6)"/></li>
						<li class="hongqiu"><s:property value="winbasecode.substring(6,7)"/></li>
					</ul>
				</div>
			</div>
		<div class="caizhong_btn">
			<ul>
				<li><a href="qixingcai.html" title="立即购买"><img src="/images/buybtn.gif" alt="立即购买"/></a></li>
				<li><a href="http://tbzs.ruyicai.cn/cjw7xc/index.php" target="_blank" title="七星彩图表走势"><img src="/images/tbzsbtn.gif" alt="图表走势"/></a></li>
				<li><a href="/qixingcai.html" title="话费购买"><img src="/images/hfgmbtn.gif" alt="话费购买"/></a></li>
				<li><a href="/bangzhuzhongxin/wanfajieshao.html#7" title="玩法介绍"><img src="/images/wfjsbtn.gif" alt="玩法介绍"/></a></li>
			</ul>
		</div>
	</div>
	</s:elseif>
<!-- 七乐彩 -->
 	<s:elseif test="id.lotno=='F47102'">
 		<div class="caizhong">
		<div class="caizhong_logo"><span class="caizhong_img"><img src="/images/qlc_tu.gif" /></span><span class="caizhong_text">七乐彩</span></div>
			<div class="caizhong_jieguo">
				<div class="czh_message">
				<span class="czh_1"><s:property value="id.batchcode"/>期</span>
				<span class="czh_2">开奖时间：<s:property value="opentime.substring(0,10)"/>&nbsp;21:30:00</span>
				</div>
				<div class="czh_qiu">
					<ul>
						<li class="hongqiu"><s:property value="winbasecode.substring(0,2)"/></li>
						<li class="hongqiu"><s:property value="winbasecode.substring(2,4)"/></li>
						<li class="hongqiu"><s:property value="winbasecode.substring(4,6)"/></li>
						<li class="hongqiu"><s:property value="winbasecode.substring(6,8)"/></li>
						<li class="hongqiu"><s:property value="winbasecode.substring(8,10)"/></li>
						<li class="hongqiu"><s:property value="winbasecode.substring(10,12)"/></li>
						<li class="hongqiu"><s:property value="winbasecode.substring(12,14)"/></li>
						<li class="lanqiu"><s:property value="winspecialcode"/></li>
					</ul>
				</div>
			</div>
		<div class="caizhong_btn">
			<ul>
				<li><a href="/qilecai.html" title="立即购买"><img src="/images/buybtn.gif" alt="立即购买"/></a></li>
				<li><a href="http://tbzs.ruyicai.cn/cjwqlc/index.php" target="_blank" title="七乐彩图表走势"><img src="/images/tbzsbtn.gif" alt="图表走势"/></a></li>
				<li><a href="/qilecai.html" title="话费购买"><img src="/images/hfgmbtn.gif" alt="话费购买"/></a></li>
				<li><a href="/bangzhuzhongxin/wanfajieshao.html#8" title="玩法介绍"><img src="/images/wfjsbtn.gif" alt="玩法介绍"/></a></li>
			</ul>
		</div>
	</div>
 	</s:elseif>
<!-- 时时彩 -->
 	<s:elseif test="id.lotno=='T01007'">
 	   <div class="caizhong1">
		<div class="caizhong_logo"><span class="caizhong_img"><img src="/images/ssc_tu.gif" /></span><span class="caizhong_text">时时彩</span></div>
			<div class="caizhong_jieguo">
				<div class="czh_message">
				<span class="czh_1"><s:property value="id.batchcode"/>期</span>
				<span class="czh_2">开奖时间：<s:property value="opentime"/></span>
				</div>
				<div class="czh_qiu">
					<ul>
						<li class="hongqiu"><s:property value="winbasecode.substring(0,1)"/></li>
						<li class="hongqiu"><s:property value="winbasecode.substring(1,2)"/></li>
						<li class="hongqiu"><s:property value="winbasecode.substring(2,3)"/></li>
						<li class="hongqiu"><s:property value="winbasecode.substring(3,4)"/></li>
						<li class="hongqiu"><s:property value="winbasecode.substring(4,5)"/></li>
					</ul>
				</div>
			</div>
		<div class="caizhong_btn">
			<ul>
				<li><a href="shishicai.html" title="立即购买"><img src="/images/buybtn.gif" alt="立即购买"/></a></li>
				<li><a href="http://tbzs.ruyicai.cn/cjwssc/index.php" target="_blank" title="时时彩图表走势"><img src="/images/tbzsbtn.gif" alt="图表走势"/></a></li>
				<li><a href="/shishicai.html" title="话费购买"><img src="/images/hfgmbtn.gif" alt="话费购买"/></a></li>
				<li><a href="/bangzhuzhongxin/wanfajieshao.html#6" title="玩法介绍"><img src="/images/wfjsbtn.gif" alt="玩法介绍"/></a></li>
			</ul>
		</div>
	</div> 
  </s:elseif>
</s:iterator>