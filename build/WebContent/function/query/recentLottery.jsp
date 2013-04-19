<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@ page import="com.jrt.invokeLot.lot.bean.Tuserinfo,net.sf.json.JSONObject,com.jrt.invokeLot.util.JSONReslutUtil,com.ruyicai.util.NameUtil" %>
<%
	JSONObject user = JSONReslutUtil.getUserInfo(request);
	System.out.print(user);
%>
<%if(user==null||user.getJSONObject("value").equals("null")||(user.getJSONObject("value").isEmpty())){ %>
	<div class="zuijingc_top">最近购彩</div>
	<s:if test="#session.CHANNEL=='650'">
	<%/*牛仔网头部 */ %>
	<div class="zuijingc_con"><font class="red2"><a href="http://s.9666.cn/" title="登录">登录</a></font>后显示最近购买的彩种</div></s:if>
	<s:elseif test="#session.CHANNEL=='660'">
	<%/*理想论坛头部 */ %>
	<div class="zuijingc_con"><font class="red2"><a href="http://www.55188.com/lottery.php" title="登录">登录</a></font>后显示最近购买的彩种</div></s:elseif>
	<s:elseif test="#session.CHANNEL=='694'">
	<%/*康辉头部 */ %>
	<div class="zuijingc_con"><font class="red2"><a href="http://test.chplan.net:9090/chplan/login.jsp?service=http://test.chplan.net:9090/chplan/caipiao.do" title="登录">登录</a></font>后显示最近购买的彩种</div><style>#common{height:160px;}</style>
	</s:elseif>
	<s:elseif test="#session.CHANNEL=='636'">
	<%/*彩多多头部 */ %>
	<div class="zuijingc_con"><font class="red2"><a href="http://www.88967.com" title="登录">登录</a></font>后显示最近购买的彩种</div><style>#common{height:200px;}</style>
	</s:elseif>
	<s:else>
	<div class="zuijingc_con"><font class="red2"><a href="javaScript:loginRequrl();" title="登录">登录</a></font>后显示最近购买的彩种</div>
	</s:else>
<%}else{ %>
	<div class="zuijingc_top">最近购彩</div>
		<div class="zuijingc_con">
		<s:property value="#request.message"/>
			<ul>
			<s:property value="#request.jsonlotno"/>
				<s:iterator id="recentLottery" value="#request.recentLotteryList">
						<li><s:property value="#recentLottery" escape="false"/></li>
				</s:iterator>
			</ul>
		</div>
<%} %>
    