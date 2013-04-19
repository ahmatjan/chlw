<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ruyicai.util.ResourceBundleUtil,java.io.IOException,com.ruyicai.web.action.cooperation.Channel" %>
<%
String number = request.getParameter("nb");
String ip = request.getHeader("x-forwarded-for");
if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip) ){
	ip = request.getHeader("Proxy-Client-IP");
}
if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
	ip = request.getHeader("WL-Proxy-Client-IP");
}
if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
	ip = request.getRemoteAddr();
}
if(Channel.ips.get(ip)==null){
	Channel.ips.put(ip, number);
	session.setAttribute("CHANNEL", number);
}
try {
	 if("568".equals(number)){
		response.sendRedirect("/rules/activity.html");
	}else{
		response.sendRedirect("/");
	}
	System.out.println("Channel:::"+ip+":"+number);
	return ;
} catch (IOException e) {
	e.printStackTrace();
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
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