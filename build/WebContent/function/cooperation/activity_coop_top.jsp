<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<script type="text/javascript" src="/js/jcarousellite_1.0.1.js">
</script>
<!-- 购彩大厅 -->
<%/*判断是否是彩多多用户，如果是则替头部的中间部分，使用彩多多提供的头部中间，否则使用如意彩的头部中间 ----开始*/ %>
<s:if test="#session.CHANNEL=='636'">
	<jsp:include page="/function/common/CDDTopCenter.jsp" />
</s:if>
<%/*如果是牛仔网用户则显示牛仔网头部 */ %>
<s:elseif test="#session.CHANNEL=='650'">
	<div id="header" style="display:none">
		<jsp:include page="/function/common/ruyicai_include_common_top_daohang.jsp" />
	</div>
	<jsp:include page="/function/common/NZWTopCenter.jsp" />
</s:elseif>
<%/*理想论坛头部 */ %>
<s:elseif test="#session.CHANNEL=='660'">
	<div id="header" style="display:none">
		<jsp:include page="/function/common/ruyicai_include_common_top_daohang.jsp" />
	</div>
	<jsp:include page="/function/common/NZWTopCenter.jsp" />
</s:elseif>
<s:else>
	<div class="maintop_public">
		<div class="top_public">
			<a href="/index.html" target="_blank">
			<s:if test="#session.CHANNEL=='750'">
		<img src="/images/91activelogo.gif" />
		</s:if>
		<s:else>
		<img src="/images/logo_zt.gif" />
		</s:else>
				
			</a>
		</div>
	
		<div class="top2_public2" style="margin-left:5px;">
			<span>
				<a href="http://www.ruyicai.com/cms/index.html" title="帮助中心" style="border:none;padding-right:0px;"
				target="_blank">
					帮助中心
				</a>
			</span>
			<b>|</b>
			<span>
				<a href="/activity/activity__1.html" title="活动专题" style="border:none;padding-right:0px;"
				target="_blank">
					活动专题
				</a>
			</span>
			<b>|</b>
			<span>
				<a href="/rules/customMessage.html" title="留言反馈" style="border:none;padding-right:0px;"
				target="_blank">
					留言反馈
				</a>
			</span>
			<b>|</b>
			<span>
				<a href="/index.html" title="返回首页" target="_blank">
					返回首页
				</a>
			</span>
		</div>
		<div id="top_activity" class="top2_public1" style="float:right;">
			<script>
				$(function() {
					topActivity();
				});
			</script>
		</div>
		<!-- 弹出框 开始 -->
	<jsp:include page="/function/public_touZhuAlert_dipin.jsp"></jsp:include>
	<!-- 弹出框 结束 -->
	</div>
</s:else>
<%/*判断是否是彩多多用户，如果是则替头部的中间部分，使用彩多多提供的头部中间，否则使用如意彩的头部中间 ----结束*/ %>