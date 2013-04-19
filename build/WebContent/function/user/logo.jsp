<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<s:if test="#session.CHANNEL=='B00031'">
<a href="http://www.88967.com/portal.php" style="display:block; float:left; margin:0px 0px 0px 0px;" target="ssc"><img src="/images/cddlogo.gif"  height="51" /></a>
<a href="/index.html" style="display:block; float:left; margin:0px 0px 0px 0px;" target="ssc"><img src="/images/ryclogo.gif" height="51" /></a>
</s:if>
<s:else>
<a href="/index.html" target="ssc"><img src="/images/logo1.gif"  height="51" /></a>
</s:else>