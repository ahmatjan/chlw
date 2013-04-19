<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>跳转</title>
<script type="text/javascript">
location.href="/chlw/cooperation/channel!cn?nb=<%=request.getParameter("nb") %>";
</script>
 </head>
<body>
请点击<a href="/chlw/cooperation/channel!cn?nb=<%=request.getParameter("nb") %>" >此处进入>>></a>
</body>
</html>