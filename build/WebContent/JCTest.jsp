<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
</head>
<body>
<s:if test="#request.duizhenInfos != null">
   <s:iterator id="duizhen"  value="#request.duizhenInfos"  status="info">
     <s:property value="#duizhen.time"/> <s:property value="#duizhen.weekid"/><br/>
   001<s:property value="#duizhen.league"/>
     <s:property value="#duizhen.team"/>
     <br/>
   </s:iterator>
</s:if>
   
   <s:if test="#request.peilv != null">
      <s:property value="#request.peilv"/>
   </s:if>
</body>
</html>