<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@taglib prefix="s" uri="/struts-tags"%>
<s:if test="#session.CHANNEL=='650'">
<%/*牛仔网头部 */ %>
<iframe width="100%" scrolling="no" height="80" frameborder="0" src="http://s.9666.cn/caipiao/getHeader.action${sessionnum }" ></iframe>
</s:if>
<s:elseif test="#session.CHANNEL=='660'">
<%/*理想论坛头部 */ %>
<iframe width="100%" scrolling="no" height="80" frameborder="0" src="http://www.55188.com/lottery.php?${sessionnum }" ></iframe>
</s:elseif>
<s:elseif test="#session.CHANNEL=='694'">
<%/*康辉头部 */ %>
<iframe width="100%" scrolling="no" height="160" frameborder="0" src="http://test.chplan.net:9090/chplan/caipiao/caipiaoheader.jsp${sessionnum }?RYC=${rycum }" ></iframe>
<style>#common{height:160px;}</style>
<script>$("#about").css("display","none");</script>
</s:elseif>
<s:elseif test="#session.CHANNEL=='636'">
<%/*彩多多头部 */ %>
<iframe width="100%" scrolling="no" height="185" frameborder="0" src="http://www.88967.com/include.php?${sessionnum }header" ></iframe>
<style>#common{height:200px;}</style>
</s:elseif>