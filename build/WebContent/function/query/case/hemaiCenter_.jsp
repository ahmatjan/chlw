<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@taglib prefix="s" uri="/struts-tags"%>
<jsp:include page="/function/common/ruyicai_include_common_top_http.jsp"/>
<title>彩票合买中心</title>
<meta http-equiv="keywords" content="彩票合买,足彩合买,双色球合买">
<meta http-equiv="description" content="如意彩彩票合买中心为您提供足彩合买、双色球合买、福彩3D合买、大乐透合买等彩种的合买，还包括合买名人的合买方案推荐等。">
<link rel="stylesheet" type="text/css" href="/css/util.css" />
<link rel="stylesheet" type="text/css" href="/css/newsAll.css" />
<link rel="stylesheet" type="text/css" href="/css/ymPrompt.css" />
<script type="text/javascript" src="/js/jqueryJS/jquery-1.5.min.js"></script> 
<script type="text/javascript" src="/js/jqueryJS/jquery.jmpopups-0.5.1.js" ></script>
<script type="text/javascript" src="/js/ymPrompt_source.js"></script>
<script type="text/javascript" src="/js/util.js"></script>
<script type="text/javascript" src="/js/public_touZhu.js"></script>
</head>
<body>

<jsp:include page="/function/common/ruyicai_include_common_top_hemai.jsp"/>

<div class="space10">&#160;</div>
<!--正式使用时无视此段 end-->

<form action="#" method="post" id="CaseSelectForm" onsubmit="return ajaxFromToHemaiCenter('CaseSelectForm','CaseHtml')" >
<input type="hidden" id="orderDir" name="orderDir" value="" />
<input type="hidden" id="orderBy" name="orderBy" value="" />

<div class="TogetherListBody">
	
	<div class="TogetherCenterLeft">
	
		<span class="AllTogetherBuyBox TogetherListTittle"></span>
		
		<div class="ChannelBuyPannel TogetherCommend" style="display:none;">
			<div class="ChannelBuyPannelHead"><h3>X推荐类别</h3></div>
			<div class="ChannelBuyPannelBody">
				<ol id="tjlb" class="BaseTab">
					<li onclick='$("#tjlb > input[type=hidden]").val("");$("#tjlb > li").removeClass("selected");$(this).addClass("selected");$("#CaseSelectForm").submit();' ><a class="AllTogetherBuyBox">今日截止方案</a></li>
					<li onclick='$("#tjlb > input[type=hidden]").val("");$("#tjlb > li").removeClass("selected");$(this).addClass("selected");$("#CaseSelectForm").submit();' ><a class="AllTogetherBuyBox">人气方案</a></li>
					<li onclick='$("#tjlb > input[type=hidden]").val("");$("#tjlb > li").removeClass("selected");$(this).addClass("selected");$("#CaseSelectForm").submit();' ><a class="AllTogetherBuyBox">战绩方案</a></li>
					<li onclick='$("#tjlb > input[type=hidden]").val("");$("#tjlb > li").removeClass("selected");$(this).addClass("selected");$("#totalAmt").val("100000");$("#CaseSelectForm").submit();'><a class="AllTogetherBuyBox" >千元以上方案</a></li>
					<input type="hidden" id="totalAmt" name="totalAmt" value="" />
				</ol>
			</div>
		</div>
		
		<div class="ChannelBuyPannel TogetherLotteryTypy">
			<div class="ChannelBuyPannelHead"><h3>彩种分类</h3></div>
			<div class="ChannelBuyPannelBody">
				<ol id="cz"  class="BaseTab">
				<s:set  name="lotno_page"  value="%{#parameters.lotno[0]}"/>
					<li onclick='$("#cz > li").removeClass("selected");$(this).addClass("selected");$("#lotno").val("F47104");$("#CaseSelectForm").submit();'><a onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))">双色球</a></li>
					<li onclick='$("#cz > li").removeClass("selected");$(this).addClass("selected");$("#lotno").val("F47103");$("#CaseSelectForm").submit();'><a onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))">福彩3D</a></li>
					<li onclick='$("#cz > li").removeClass("selected");$(this).addClass("selected");$("#lotno").val("F47102");$("#CaseSelectForm").submit();'><a onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))">七乐彩</a></li>
					<li onclick='$("#cz > li").removeClass("selected");$(this).addClass("selected");$("#lotno").val("T01001");$("#CaseSelectForm").submit();'><a onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))">大乐透</a></li>
					<li onclick='$("#cz > li").removeClass("selected");$(this).addClass("selected");$("#lotno").val("T01002");$("#CaseSelectForm").submit();'><a onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))">排列三</a></li>
					<li onclick='$("#cz > li").removeClass("selected");$(this).addClass("selected");$("#lotno").val("T01011");$("#CaseSelectForm").submit();'><a onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))">排列五</a></li>
					<li onclick='$("#cz > li").removeClass("selected");$(this).addClass("selected");$("#lotno").val("T01009");$("#CaseSelectForm").submit();'><a onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))">七星彩</a></li>
					<li onclick='$("#cz > li").removeClass("selected");$(this).addClass("selected");$("#lotno").val("T01003");$("#CaseSelectForm").submit();'><a onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))">足彩胜负</a></li>
					<li onclick='$("#cz > li").removeClass("selected");$(this).addClass("selected");$("#lotno").val("T01004");$("#CaseSelectForm").submit();'><a onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))">任选9场</a></li>
					<li onclick='$("#cz > li").removeClass("selected");$(this).addClass("selected");$("#lotno").val("T01006");$("#CaseSelectForm").submit();'><a onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))">6场半全</a></li>
					<li onclick='$("#cz > li").removeClass("selected");$(this).addClass("selected");$("#lotno").val("T01005");$("#CaseSelectForm").submit();'><a onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))">4场进球</a></li>
					<input type="hidden" id="lotno" name="lotno" value="${lotno_page}" />
				</ol>
			</div>
		</div>
		
	</div>
	
	<div class="TogetherCenterRight">
		
		<div id="hemaiNews"><script>$(function () {getCaseNews("hemaiNews");});</script></div>
		<div class="space10"></div>
		
		<div class="TogetherBuyPannel TogetherCeleb">
			<div class="TogetherBuyPannelHead AllTogetherBuyBox"><h3>合买名人</h3></div>
			<input class="SearchText" id="search" name="search" type="hidden"  value="" />
			<input  id="displayState" name="displayState" type="hidden"  value="0" />
			<div id="CaseCelebrity" class="TogetherBuyPannelBody TogetherCelebContent">
			<script type="text/javascript">$(function () { $.get("/chlw/function/hemaiCenter!getCaseCelebrity?lotno=center", function (data, textStatus){$("#CaseCelebrity").html(data);})});	</script>
			</div>
		</div>
		
		<div class="space10"></div>
		
		<div class="TogetherBuyPannel TogetherCenterList">
			<div class="TogetherBuyPannelHead AllTogetherBuyBox"><h3>合买推荐</h3>
			<li><a id="gengduohemai" onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))" href="javascript:;" onclick='if($("#lotno").val()==""){location.href="/chlw/function/selectAll!getCaselotsByWhere?lotno=F47104";}else{location.href="/chlw/function/selectAll!getCaselotsByWhere?lotno="+$("#lotno").val();}'>查看更多合买</a></li>
			<a onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))"  onclick='$("#cz > li").removeClass("selected");$("#lotno").val("");$("#search").val("");$("#CaseSelectForm").submit();'>显示全部</a></div>
			<div class="TogetherBuyPannelBody">
				<table class="TogetherListTable">
					<thead>
						<tr id="title_hemai">
							<th width="48">序号</th>
							<th>彩种</th>
							<th width="108">发起人</th>
							<th id="zhanji"  class="hand color_blue" width="76" onclick="orderByImg('zhanji')">战绩<span class="AllTogetherBuyBox SortDisabled"></span></th>
							<th id="fanganjine"  class="hand color_blue" width="60" onclick="orderByImg('fanganjine')">方案金额<span class="AllTogetherBuyBox SortDisabled"></span></th>
							<th id="jindu"  class="hand color_blue" onclick="orderByImg('jindu')">进度<span class="AllTogetherBuyBox SortDisabled"></span></th>
							<th width="60">剩余金额</th>
							<th width="126">参与认购</th>
							<th width="48">详情</th>
						</tr>
					</thead>
					<tbody id="CaseHtml">
					      <script type="text/javascript">$(function(){$('#CaseSelectForm').submit();});</script>					
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
</div>
</form>

<!--正式使用时无视此段 start-->
<div class="space10">&nbsp;</div>
<div id="ajax_hemai_pop" class="WindowCenter" style="display:none; background-image:url(/images/ThrobberBig.gif); background-position:-88px -144px; width:148px; height:27px;" ></div>
<script>
</script>

<script>
//切换排序
var lishiTH = "";
function orderByImg(th){
	$("#title_hemai >th >span[class^=AllTogetherBuyBox]").removeClass("SortDown");
	$("#title_hemai >th >span[class^=AllTogetherBuyBox]").removeClass("SortUp");
	$("#title_hemai >th >span[class^=AllTogetherBuyBox]").addClass("SortDisabled");
	$("#"+th+">span").removeClass("SortDisabled");
	if(lishiTH==th){//第二次点击
		$("#"+th+">span").addClass("SortUp");
		lishiTH="";
		$("#orderDir").val("ASC");//向上正序
	}else{//第一次点击
		$("#"+th+">span").addClass("SortDown");
		lishiTH=th;
		$("#orderDir").val("DESC");//向下倒序
	}
	
	//取得要排序的字段
	var orderBy = "";
	if(th=="fanganjine"){
		orderBy="totalAmt";
	}else if(th=="jindu"){
		orderBy="((buyAmtByStarterPUTINbuyAmtByFollower)*100/totalAmt)";
	}else if(th=="renshu"){
		orderBy="participantCount";
	}else if(th=="zhanji"){
		orderBy="a.effectiveAchievementPUTINa.ineffectiveAchievement";
	}else{
		$("#orderDir").val("");
		orderBy="";
	}
	$("#orderBy").val(orderBy);
	$('#CaseSelectForm').submit();
}
</script>
<jsp:include page="/function/common/ruyicai_include_common_footer_noindex.jsp"/>
<input type="hidden" id="amt_caseId"  value="" />
<jsp:include page="/function/common/canyuHemai_div.jsp"/>
<jsp:include page="/function/common/tishi.jsp"/>
<jsp:include page="/function/query/case/fanganList.jsp"/>
<jsp:include page="/function/query/case/yingliList.jsp"/>
<jsp:include page="/function/common/setBody.jsp"/>
