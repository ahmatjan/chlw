<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%/* 彩多多logo与如意彩logo合并  与图表logo的判断   <s:if test="#session.CHANNEL=='B00031'">
<div style="width:221px; height:74px; padding:20px 0px 0px 20px;">
<a href="http://www.88967.com/portal.php" style="display:block; float:left; margin:0px 0px 0px 0px;" target="ssc"><img src="/images/cddlogo.gif"  height="51" /></a>
<a href="/index.html" style="display:block; float:left; margin:0px 0px 0px 0px;" target="ssc"><img src="/images/ryclogo.gif" height="51" /></a>
</div>
</s:if>
<s:else>
<a href="/index.html" target="ssc" style="display:block; width:241px; height:94px; background:url(/images/tubiaologo.gif);"></a>
</s:else>*/ %>
<!-- 走势图表 -->
<%/*判断是否是彩多多用户，如果是则替头部的中间部分，使用彩多多提供的头部中间，否则使用如意彩的头部中间   ----开始*/ %>
<s:if test="#session.CHANNEL=='636'">
            <div id="header" style="display:none">
				<jsp:include page="/function/common/ruyicai_include_common_top_daohang.jsp"/>
			</div>
			<jsp:include page="/function/common/CDDTopCenter.jsp"/>
</s:if>
<s:else>
    <div id="header">
		<div class="maintop">
		<div class="top0">
				<ul>
					<li class="setindex"><a href="javaScript:setHomepage();" title="设为首页">设为首页</a></li>
					<li class="addfor"><a href="javaScript:addCookie();" title="加入收藏">加入收藏</a></li>
				</ul>
			</div>
			<div  id="top_user"><script>topZuCaiLogin();</script></div>
			<div class="top3">
				<ul>
					<li><a href="/index.html" title="首页" target="_blank">首页&nbsp;&nbsp;</a>|</li>
					<li><a href="/shuangseqiu.html" title="购彩" target="_blank">购彩&nbsp;&nbsp;</a>|</li>
					<li><a href="/fucaituijian/fucaituijian_shuangseqiu_1.html" title="资讯" target="_blank">资讯&nbsp;&nbsp;</a>|</li>
					<li><a href="/chlw/function/ryc_select_newkj!drawalottery" title="开奖" target="_blank">开奖&nbsp;&nbsp;</a>|</li>
					<li><a href="http://tbzs.ruyicai.com" title="图表" target="_blank">图表&nbsp;&nbsp;</a>|</li>
					<li><a href="/bangzhuzhongxin.html" title="帮助" target="_blank">帮助&nbsp;&nbsp;</a>|</li>
					<li><a href="/rules/customesService.html" title="客服中心" target="_blank">客服&nbsp;&nbsp;</a></li>
				</ul>
			</div>
		</div>
	 <div class="title">
	 		<div class="zixunlogo"><a href="/" target="_blank"><img src="/images/tubiaologo.gif" width="241" height="94" /></a></div>
		<div class="zoushinav">
			<div class="fcnav_zoushi">
				<div class="fctu"><img src="/images/fucailogo.gif"  /></div>
				<div class="fclist_zoushi">
					<ul>
						<li class="xuanzhong"><a href="http://tbzs.ruyicai.com/cjwssq/index.php" title="双色球" target="ssq">双色球</a></li>
						<li><a href="http://tbzs.ruyicai.com/cjw3d/index.php" title="福彩3D" target="ssq">福彩3D</a></li>
						<li><a href="http://tbzs.ruyicai.com/cjwqlc/index.php" title="七乐彩" target="ssq">七乐彩</a></li>
						<li><a href="http://tbzs.ruyicai.com/cjwssc/index.php?lotteryType=ssc" title="时时彩" target="ssq">时时彩</a></li>
					</ul>
				</div>
			</div>
			<div class="zcnav_zoushi">
				<div class="fctu"><img src="/images/ticailogo.gif"  /></div>
				<div class="zclist_zoushi">
					<ul>
						<li class="xuanzhong"><a href="http://tbzs.ruyicai.com/cjwdlt/index.php" title="大乐透" target="ssq">大乐透</a> </li>
						 <li><a href="http://tbzs.ruyicai.com/cjw7xc/index.php" title="七星彩" target="ssq">七星彩</a> </li>
						 <li><a href="http://tbzs.ruyicai.com/cjwpl3/index.php" title="排列三" target="ssq">排列三</a> </li>
						 <li><a href="http://tbzs.ruyicai.com/cjwpl5/index.php" title="排列五"  target="ssq">排列五</a > </li>
						 <li><a href="http://tbzs.ruyicai.com/cjw11x5/index.php?lotteryType=11x5" title="江西11选5" target="ssq">江西11选5</a> </li>
					</ul>
				</div>
			</div>
		</div>
	 </div>
   </div>
 </s:else>
<%/*判断是否是彩多多用户，如果是则替头部的中间部分，使用彩多多提供的头部中间，否则使用如意彩的头部中间   ----结束*/ %>           
<script>var canshu =GetQueryString("key");
$("#"+canshu).attr("class","navbjhover");
</script>
