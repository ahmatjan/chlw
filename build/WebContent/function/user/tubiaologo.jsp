<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<s:if test="#session.CHANNEL=='B00031'">
<div style="width:221px; height:74px; padding:20px 0px 0px 20px;">
<a href="http://www.88967.com/portal.php" style="display:block; float:left; margin:0px 0px 0px 0px;" target="ssc"><img src="/images/cddlogo.gif"  height="51" /></a>
<a href="/index.html" style="display:block; float:left; margin:0px 0px 0px 0px;" target="ssc"><img src="/images/ryclogo.gif" height="51" /></a>
</div>
</s:if>
<s:else>
<a href="/index.html" target="ssc" style="display:block; width:241px; height:94px; background:url(/images/tubiaologo.gif);"></a>
</s:else>