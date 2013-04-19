<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<jsp:include page="/function/common/ruyicai_include_common_top_http.jsp"/>
<script type="text/javascript" src="/js/jqueryJS/jquery-1.5.min.js"></script>
<script type="text/javascript" src="/js/util.js"></script>
<script type="text/javascript" src="/js/jqueryJS/jquery.jmpopups-0.5.1.js" ></script>
<link rel="stylesheet" type="text/css" href="/css/util.css" />
<title>投注返回</title>
</head>
<body>
<s:if test="#request.jsonObject.errorCode==0">
	<s:if test="#request.allYears==1">
	<script type="text/javascript">
	  	if(self!=top){
			window.parent.document.location.href = '/rules/allYearsbetSuccess.html?cai=${requestScope.cai}&urlAdd=${requestScope.urlAdd}';
		}else{
			location.href = '/rules/allYearsbetSuccess.html?cai=${requestScope.cai}&urlAdd=${requestScope.urlAdd}&goUrl=${requestScope.gourl}';
		}
	</script>
	</s:if>
	<s:elseif test="#request.isZengCai==1">
	<script type="text/javascript">
		if(self!=top){
			window.parent.document.location.href = '/rules/giftSuccess.html?cai=${requestScope.cai}&urlAdd=${requestScope.urlAdd}';
		}else{
			location.href = '/rules/giftSuccess.html?cai=${requestScope.cai}&urlAdd=${requestScope.urlAdd}&goUrl=${requestScope.gourl}';
		}
	</script>
	</s:elseif>
	<s:else>
	<script type="text/javascript">
	  	if(self!=top){
			window.parent.document.location.href = '/rules/betSuccess.html?cai=${requestScope.cai}&urlAdd=${requestScope.urlAdd}';
		}else{
			location.href = '/rules/betSuccess.html?cai=${requestScope.cai}&urlAdd=${requestScope.urlAdd}&goUrl=${requestScope.gourl}';
		}
	</script>
	</s:else>
</s:if><s:elseif test="#request.jsonObject.errorCode==20100710">
   <script type="text/javascript">
	if(confirm("您的可投注余额不足，请先充值！")){
		top.location.href="/rules/user.html?key=4";
	}else{
		if(self!=top){
			top.history.back(-1);
		}else{
			history.back(-1);
		}
		
	}
</script>
</s:elseif><s:else>
<input type="hidden" name="message" id="message" value='<s:property value="#request.jsonObject.message"/>'></input>
<input type="hidden" name="url" id="url" value="${url}"></input>
<script type="text/javascript">
function loadWindow(){
	if(document.readyState == "complete") {
		if($("#message").val()=="用户信息不完善"){
			betAlert("touzhuOpen4",false);
		}else if($("#message").val()=="活动已参加，只能参加一次"){
			betAlert("touzhuOpen5",false);
		}else{
			openAlert($("#message").val());
			if(self!=top){
				window.parent.document.location.href = $("#url").val();
			}else{
				location.href = $("#url").val();
			}
		}
	}else{  
		setTimeout("loadWindow()", 500);
	}
}
loadWindow();
</script>
</s:else>
<!-- 弹出框 开始 -->
<jsp:include page="/function/public_touZhuAlert_dipin.jsp"></jsp:include>
<!-- 弹出框 结束 -->
<jsp:include page="/function/common/setBody.jsp"/>