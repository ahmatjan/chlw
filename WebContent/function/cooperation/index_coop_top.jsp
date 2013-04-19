<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!-- 购彩大厅 -->
<%/*判断是否是彩多多用户，如果是则替头部的中间部分，使用彩多多提供的头部中间，否则使用如意彩的头部中间 ----开始*/ %>
<%/*如果是牛仔网用户则显示牛仔网头部 */ %>
<s:if test="#session.CHANNEL=='694'">
	<div id="header" style="display:none">
		<jsp:include page="/function/common/ruyicai_include_common_top_daohang.jsp"/>
	</div>
	<jsp:include page="/function/common/NZWTopCenter.jsp" />
</s:if>
<s:else>
<s:if test="#session.CHANNEL=='650'||#session.CHANNEL=='636'||#session.CHANNEL=='660'">
	<div id="header" style="display:none">
		<jsp:include page="/function/common/ruyicai_include_common_top_daohang.jsp"/>
	</div>
	<jsp:include page="/function/common/NZWTopCenter.jsp" />
</s:if>
<s:else>
	<script>
		$(function() {
			$(".light").hover(function() {
				$(this).addClass("over");
			},
			function() {
				$(this).removeClass("over");
			});
		});
		function HoverOver(n) {
			n.addClass("over");
		}
		function HoverOut(n) {
			n.removeClass("over");
		}
	</script>
	<jsp:include page="/function/common/ruyicai_include_common_top_daohang.jsp"
	/>
	<!-- 头部中 网站logo和客服链接 start -->
	<div class="HeadMiddleLogo">
		<a class="HomeLogo" href="/index.html" target="_blank">
		<s:if test="#session.CHANNEL=='750'">
		<img src="/images/91cplogo.jpg" width="138" height="64"  />
		</s:if>
		<s:else>
		<img src="/images/HomeLogo.gif" width="138" height="64"  />
		</s:else>
		</a>
		<a class="HomeActivityBanner" href="/index.html" target="_blank"><img src="/images/HomeActivityBanner.jpg" /></a>
		<a class="HomeServiceQQ" href="http://wpa.qq.com/msgrd?v=3&uin=1427872305&site=qq&menu=yes"><img src="/images/HomeServiceQQ.gif" width="83" height="25" /></a>
		<a class="HomeServiceTel" href="javascript:;"><img src="/images/HomeServiceTel.gif" width="169" height="19" /></a>
	</div>
	<!-- 头部中 网站logo和客服链接 end -->
</s:else>
<%/*判断是否是彩多多用户，如果是则替头部的中间部分，使用彩多多提供的头部中间，否则使用如意彩的头部中间 ----结束*/ %>
<!-- 头部下 采种选择与导航 start -->
<div class="HeadBottomMenu">
	<div class="box">
		<ul>

			<li class="ButtonHomePage"  ><a href="/index.html">首页</a></li>
			<li class="ButtonChannelBuy"><a href="/include/goucaidating.html">购彩大厅</a></li>
			<li class="ButtonCaseCenter relative"><a href="hemai/hemaiCenter.html">合买中心</a><!-- <span class="HomePageBGBox" style="position:absolute; top:3px; left:80px; z-index:110;"> 合买中心 返奖 </span>--></li>
			<li class="ButtonNumberShow"><a href="/chlw/function/ryc_select_newkj!drawalottery">开奖号码</a></li>
			<li class="ButtonDataChart" ><a href="http://tbzs.ruyicai.com">分布走势</a></li>
			<li class="ButtonHotInfo"   ><a href="/xinwenzixun.html">彩票资讯</a></li>
			<li class="relative" onmouseover="HoverOver($(this));" onmouseout="HoverOut($(this));">
				足球中心
				<dl>
					<dt><a href="http://live.ruyicai.com"><img src="/images/Football_score.gif" width="12" height="12" />即时比分</a></dt>
					<dd><a href="http://odds.ruyicai.com"><img src="/images/Football_ratio.gif" width="12" height="12" />即时赔率</a></dd>
					<dd><a href="http://info.ruyicai.com"><img src="/images/Football_data.gif" width="12" height="12" />足彩资料</a></dd>
					<dd><a href="http://www.ruyicai.com/zucai/zucai__1.html"><img src="/images/Football_forecast.gif" width="12" height="12" />专家预测</a></dd>
				</dl>
			</li>
			<li class="Buttongoucai" ><a href="/include/downLoadClient.html">手机购彩</a></li>
			<li class="Buttonmessage"><a href="/zhuanjiaduanxin.html">专家短信</a></li>
		</ul>
	</div>
</div>
<!-- 头部下 采种选择与导航 end -->
</s:else>