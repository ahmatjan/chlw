<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

<input type="hidden" name="method" value="getNewIssue" id="method1">
<input type="hidden" name="method" value="getFlData" id="method2">
<input type="hidden" name="method" value="getFlDataInfo" id="method3">
请选择投注彩种：
<select name="lotno" id="lotno">
	<option value="T01003">胜负彩</option>
	<option value="T01004">任9</option>
	<option value="T01006">6场半全场</option>
	<option value="T01005">4场进球彩</option>
</select>
<input type="button" value="提交" id="submit1">
<div id="main">
</div>
<div id="content">
</div>
</body>
</html>