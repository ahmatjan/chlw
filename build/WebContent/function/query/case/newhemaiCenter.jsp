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
<script type="text/javascript" src="/js/util.js"></script>
<script type="text/javascript" src="/js/hemai/hemaiutil.js"></script>
</head>
<body>
<jsp:include page="/function/common/ruyicai_include_common_top_hemai.jsp"/>

<div class="space10">&#160;</div>
<!--正式使用时无视此段 end-->

<form action="#" method="post" id="CaseSelectForm" onsubmit="return ajaxFromToHemaiCenter('CaseSelectForm','CaseHtml')" >
<input type="hidden" id="orderDir" name="orderDir" value="" />
<input type="hidden" id="orderBy" name="orderBy" value="" />

<div class="TogetherListBody">
	<div class="TogetherCenterLeft_left Account">
		<div class="TogetherCenterLeft_title"><a href="/hemai/hemaiCenter.html"><img src="/images/hemaicenter.gif" width="118" height="22" /></a></div>
		
				<div class="Account">
					<dl class="Account">
						<dt class="TogetherCenterLeft_secondTitle">推荐方案</dt>
						<dd class="light a_javaEye  selected" onclick="BaseTab($(this));orderByImg('jindu');" ><font><span></span>人气方案</font></dd>
						<dd class="light a_detailed" onclick="BaseTab($(this));orderByImg('zhanji');"><font><span></span>战绩方案</font></dd>
						<dt class="TogetherCenterLeft_secondTitle">彩种列表</dt>
						<dd class="light a_bettingRecords" onclick="window.location.href='/hemai/shuanseqiuhemai.html'"><font><span></span>双色球</font></dd>
						<dd class="light a_afterRecord" onclick="window.location.href='/hemai/fucai3dhemai.html'"><font><span></span>福彩3D</font></dd>
						<dd class="light a_bettingRecords" onclick="window.location.href='/hemai/qilecaihemai.html'"><font><span></span>七乐彩</font></dd>
						<dd class="light a_afterRecord" onclick="window.location.href='/hemai/daletouhemai.html'"><font><span></span>大乐透</font></dd>
						<dd class="light a_bettingRecords" onclick="window.location.href='/hemai/pailie3hemai.html'"><font><span></span>排列三</font></dd>
						<dd class="light a_afterRecord" onclick="window.location.href='/hemai/pailie5hemai.html'"><font><span></span>排列五</font></dd>
						<dd class="light a_bettingRecords" onclick="window.location.href='/hemai/qicingcaihemai.html'"><font><span></span>七星彩</font></dd>
						<dd class="light a_bettingRecords" onclick="window.location.href='/hemai/22xuan5hemai.html'"><font><span></span>22选5</font></dd>
						<dd class="light a_afterRecord" onclick="window.location.href='/hemai/zcshengfuhemai.html'"><font><span></span>足彩胜负</font></dd>
						<dd class="light a_bettingRecords" onclick="window.location.href='/hemai/zcrenxuanhemai.html'"><font><span></span>任选九场</font></dd>
						<dd class="light a_afterRecord" onclick="window.location.href='/hemai/zcbanquanhemai.html'"><font><span></span>六场半全</font></dd>
						<dd class="light a_bettingRecords" onclick="window.location.href='/hemai/zcjinqiuhemai.html'"><font><span></span>四场进球</font></dd>
					</dl>
				</div>
				<div class="space10">&#160;</div>
				<div class="space10">&#160;</div>
		
	</div>

<div class="TogetherCenterRight">
<div class="TogetherBuyPannel TogetherCeleb">
	<div class="TogetherBuyPannelHead"><h3>合买推荐</h3><font><a href="/bangzhuzhongxin/wanfajieshao/guanfangwanfajieshao/20111021135742_3737.html?id=3737&code1=135&code=129" target="_blank">合买方案进度满90%以上网站保底</a>   <a href="/wangzhangonggao/20111228183751_5344.html" target="_blank">发单就返奖,最高返7%</a>　　<a>置顶规则</a></font></div>
	<div class="TogetherBuyPannelBody">
	<input class="SearchText" id="search" name="search" type="hidden"value="" /> 
	<input id="displayState" name="displayState" type="hidden"value="1" />
		<dl><dt>合买名人：</dt>
		<s:iterator id="list" value="#request.celebrityList">
		<dd><a onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))" onclick='$("#cz > li").removeClass("selected");$("#lotno").val("");$("#search").val("<s:property value="#list.text" />");$("#displayState").val();$("#CaseSelectForm").submit();'>
		<s:property	value="#list.text" /></a></dd>
		</s:iterator>
		</dl>
	</div>
	<div class="TogetherBuyPannelInput">
		<dl><s:set  name="lotno_page"  value="%{#parameters.lotno[0]}"/>
			<input type="hidden" id="lotno" name="lotno" value="${lotno_page}" />
			<input type="hidden" id="totalAmt" name="totalAmt" value="${totalAmt}" />
			<!-- 人工select开始-->
			<dd class="select_txt_content">
		<input id="getlonto"
		<s:if test='request.getParameter("lotno")=="F47104"'>value="双色球"</s:if>
		<s:elseif test='request.getParameter("lotno")=="F47103"'>value="福彩3D"</s:elseif>
		<s:elseif test='request.getParameter("lotno")=="F47102"'>value="七乐彩"</s:elseif>
		<s:elseif test='request.getParameter("lotno")=="T01001"'>value="超级大乐透"</s:elseif>
		<s:elseif test='request.getParameter("lotno")=="T01002"'>value="排列三"</s:elseif>
		<s:elseif test='request.getParameter("lotno")=="T01011"'>value="排列五"</s:elseif>
		<s:elseif test='request.getParameter("lotno")=="T01009"'>value="七星彩"</s:elseif>
		<s:elseif test='request.getParameter("lotno")=="T01003"'>value="胜负彩14场"</s:elseif>
		<s:elseif test='request.getParameter("lotno")=="T01004"'>value="胜负彩任9场"</s:elseif>
		<s:elseif test='request.getParameter("lotno")=="T01006"'>value="6场半全场"</s:elseif>
		<s:elseif test='request.getParameter("lotno")=="T01005"'>value="四场进球彩"</s:elseif>
		<s:elseif test='request.getParameter("lotno")=="J00001"'>value="竞彩足球胜平负"</s:elseif>
		<s:elseif test='request.getParameter("lotno")=="T01013"'>value="22选5"</s:elseif>
		<s:else >value="请选择彩种"</s:else>
		
		class="select_txt_top" type="text" readonly="readonly" onclick="showselectbottom('selectLoton')" />
		
		<input name="" type="text" class="select_txt_top select_but_top" value="" readonly="readonly" id="select_but_top" onclick="showselectbottom('selectLoton');"/>
					<div class="select_txt_con" id="selectLoton" style="display:none">
					<input value="双色球" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected(this,'selectLoton','getlonto');"/>
					<input value="福彩3D" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected(this,'selectLoton','getlonto');"/>
					<input value="七乐彩" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected(this,'selectLoton','getlonto');"/>
					<input value="大乐透" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected(this,'selectLoton','getlonto');"/>
					<input value="排列三" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected(this,'selectLoton','getlonto');"/>
					<input value="22选5" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected(this,'selectLoton','getlonto');"/>
					<input value="排列五" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected(this,'selectLoton','getlonto');"/>
					<input value="七星彩" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected(this,'selectLoton','getlonto');"/>
					<input value="足彩胜负" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected(this,'selectLoton','getlonto');"/>
					<input value="任选九场" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected(this,'selectLoton','getlonto');"/>
					<input value="六场半全" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected(this,'selectLoton','getlonto');"/>
					<input value="四场进球" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected(this,'selectLoton','getlonto');"/>
					<input value="竞彩足球胜平负" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected(this,'selectLoton','getlonto');"/>
		</div>
		</dd>
		<dd class="select_txt_content1"><input 
		value="全部金额" class="select_txt_top" type="text" readonly="readonly" id="totalAmt_1" onclick="showselectbottom('selectMoney')"  /><input name="" type="text" class="select_txt_top select_but_top" value="" readonly="readonly" id="select_but_top" onclick="showselectbottom('selectMoney');"/>
			<div class="select_txt_con1" id="selectMoney" style="display:none">
				<input value="千元以上" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected(this,'selectMoney','totalAmt_1');"/>
				<input value="百元以上" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected(this,'selectMoney','totalAmt_1');"/>
				<input value="百元以下" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected(this,'selectMoney','totalAmt_1');"/>
				
			</div></dd>
				<script>
				var bottombgcolor='#999966';//鼠标移动到下拉菜单后的背景颜色
				function showbgcolor(obj)
				{
					obj.style.backgroundColor=bottombgcolor;
				}
				function hiddenbgcolor(obj)
				{
					obj.style.backgroundColor="";
				}
				function showselectbottom(div)
				{
					$('#'+div).css("display","");
				}
				function selected(obj,div,text)
				{
					$("#"+text).val(obj.value);
					$("#"+div).css("display","none");
				}
				</script>
				<!--人工select结束-->
				
			<dd><input id="faqiren"="" type="text" class="Initiator" value="请输入方案发起人" onfocus="onFaqiren();"/></dd>
			<dd><input name="" class="InitiatorBtn"type="button"  value=""  onclick="seachhemai();"/></dd>
			<dt class="InitiatorBtn2 light"><a href="#"><img src="/images/InitiatorBtn2.jpg" /></a>
			<div class="InitiatorHM" >
					<ul>
					<li><a href="/shuangseqiu.html?canshu=hemai#BettingForm" title="双色球" target="_blank">双色球</a></li>
					<li><a href="/fucai3D.html?canshu=hemai#BettingForm" title="福彩3D" target="_blank">福彩3D</a></li>
					<li><a href="/qilecai.html?canshu=hemai#BettingForm" title="七乐彩" target="_blank">七乐彩</a></li>
					<li><a href="/daletou.html?canshu=hemai#BettingForm" title="大乐透" target="_blank">大乐透</a></li>
					<li><a href="/pailie3.html?canshu=hemai#BettingForm" title="排列三" target="_blank">排列三</a></li>
					<li><a href="/pailie5.html?canshu=hemai#BettingForm" title="排列五" target="_blank">排列五</a></li>
					<li><a href="/qixiangcai.html?canshu=hemai#BettingForm" title="七星彩" target="_blank">七星彩</a></li></ul><ul>
					<li><a href="/zucaishengfu.html?canshu=hemai#BettingForm" title="足彩胜负" target="_blank">足彩胜负</a></li>
					<li><a href="/renxuanjiuchang.html?canshu=hemai#BettingForm" title="任选九场" target="_blank">任选九场</a></li></ul><ul>
					<li><a href="/liuchangban.html?canshu=hemai#BettingForm" title="六场半全" target="_blank">六场半全</a></li>
					<li><a href="/4changjinqiu.html?canshu=hemai#BettingForm" title="四场进球" target="_blank">四场进球</a></li>
					</ul>
				</div>
			</dt>
		</dl>
	</div>
</div>

<div class="TogetherListTable">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<thead>
		<tr id="title_hemai">
			<th width="48">序号</th>
			<th>彩种</th>
			<th width="108">发起人</th>
			<th id="zhanji" class="hand color_blue" width="76"
				onclick="orderByImg('zhanji')">战绩<span
				class="AllTogetherBuyBox SortDisabled"></span></th>
			<th id="fanganjine" class="hand color_blue" width="60"
				onclick="orderByImg('fanganjine')">方案金额<span
				class="AllTogetherBuyBox SortDisabled"></span></th>
			<th id="jindu" class="hand color_blue" onclick="orderByImg('jindu')">进度<span
				class="AllTogetherBuyBox SortDown"></span></th>
			<th width="60">剩余金额</th>
			<th>参与认购</th>
			<th width="48">详情</th>
		</tr>
	</thead>
	<tbody id="CaseHtml">
		<s:set name="lotno_cn" value="" />
		<s:iterator id="list" value="#request.hemaiList.list" status="i">
			<tr
				<s:if test='#i.index<10'> class="orange" onmouseout="$(this).attr('class','orange')" onmouseover="$(this).attr('class','TrbgBlue')"</s:if>
				<s:elseif test='#i.odd'>class="TrbgWhite" onmouseout="$(this).attr('class','TrbgWhite')" onmouseover="$(this).attr('class','TrbgBlue')"</s:elseif>
					
				<s:else>class="TrbgGrey" onmouseout="$(this).attr('class','TrbgGrey')" onmouseover="$(this).attr('class','TrbgBlue')"</s:else>
				>
				<th>${i.index+1}</th>
				<th><s:if test="#list.torder.lotno=='F47104'">双色球<s:set
						id="lotno_cn" value='"双色球"' />
				</s:if> <s:elseif test='#list.torder.lotno=="F47103"'>福彩3D<s:set
						id="lotno_cn" value='"福彩3D"' />
				</s:elseif> <s:elseif test='#list.torder.lotno=="F47102"'>七乐彩<s:set
						id="lotno_cn" value='"七乐彩"' />
				</s:elseif> <s:elseif test='#list.torder.lotno=="T01001"'>大乐透<s:set
						id="lotno_cn" value='"大乐透"' />
				</s:elseif> <s:elseif test='#list.torder.lotno=="T01002"'>排列三<s:set
						id="lotno_cn" value='"排列三"' />
				</s:elseif> <s:elseif test='#list.torder.lotno=="T01011"'>排列五<s:set
						id="lotno_cn" value='"排列五"' />
				</s:elseif> <s:elseif test='#list.torder.lotno=="T01009"'>七星彩<s:set
						id="lotno_cn" value='"七星彩"' />
				</s:elseif> <s:elseif test='#list.torder.lotno=="T01003"'>足彩胜负<s:set
						id="lotno_cn" value='"足彩胜负"' />
				</s:elseif> <s:elseif test='#list.torder.lotno=="T01005"'>4场进球<s:set
						id="lotno_cn" value='"4场进球"' />
				</s:elseif> <s:elseif test='#list.torder.lotno=="T01004"'>任选9场<s:set
						id="lotno_cn" value='"任选9场"' />
				</s:elseif> <s:elseif test='#list.torder.lotno=="T01006"'>6场半全<s:set
						id="lotno_cn" value='"6场半全"' />
				</s:elseif><s:elseif test='#list.torder.lotno=="T01013"'>22选5<s:set
						id="lotno_cn" value='"22选5"' />
				</s:elseif><s:elseif test='#list.torder.lotno=="J00001"'>竞彩足球胜负平<s:set
						id="lotno_cn" value='"竞彩足球"' />
				</s:elseif><s:elseif test='#list.torder.lotno=="J00002"'>竞彩足球比分<s:set
						id="lotno_cn" value='"竞彩足球"' />
				</s:elseif><s:elseif test='#list.torder.lotno=="J00003"'>竞彩足球总进球<s:set
						id="lotno_cn" value='"竞彩足球"' />
				</s:elseif><s:elseif test='#list.torder.lotno=="J00004"'>竞彩足球半场<s:set
						id="lotno_cn" value='"竞彩足球"' />
				</s:elseif><s:elseif test='#list.torder.lotno=="J00005"'>竞彩篮球胜负<s:set
						id="lotno_cn" value='"竞彩篮球"' />
				</s:elseif><s:elseif test='#list.torder.lotno=="J00006"'>竞彩篮球让分<s:set
						id="lotno_cn" value='"竞彩篮球"' />
				</s:elseif><s:elseif test='#list.torder.lotno=="J00007"'>竞彩篮球胜分差<s:set
						id="lotno_cn" value='"竞彩篮球"' />
				</s:elseif><s:elseif test='#list.torder.lotno=="J00008"'>竞彩篮球大小分<s:set
						id="lotno_cn" value='"竞彩篮球"' />
				</s:elseif>
				</th>
				<th>
				<s:set name="Nname" value="#request.hemaiList.nickname_array[#i.index].new_nickname" />
				 <a href="javascript:;"
					onclick="fanganListToUser('${list.achievement.userno }','${Nname }')"
					onmouseover="HoverOver($(this))" onmouseout="HoverOut($(this))">${Nname
				}</a></th>
				<th>
				<div class="LevelBox"><a href="javascript:;"
					id="displayIcon_${i.index}"
					onclick="yingliListToUser('<s:property value="#list.starter.userno" />','<s:property value="#list.caseLot.lotno" />','<s:property value="#Nname" />','displayIcon_${i.index}','${lotno_cn}')">
				<s:set name="achievement" value="#list.achievement.displayIcon"></s:set>
				<s:if test="#achievement.crown!=null">
					<s:iterator begin="1" end="#achievement.crown">
						<span class="AllTogetherBuyBox LevelCrown"></span>
					</s:iterator>
				</s:if> <s:if test="#achievement.graycrown!=null">
					<s:iterator begin="1" end="#achievement.graycrown">
						<span class="AllTogetherBuyBox LevelCrownGray"></span>
					</s:iterator>
				</s:if> <s:if test="#achievement.cup!=null">
					<s:iterator begin="1" end="#achievement.cup">
						<span class="AllTogetherBuyBox LevelCup"></span>
					</s:iterator>
				</s:if> <s:if test="#achievement.graycup!=null">
					<s:iterator begin="1" end="#achievement.graycup">
						<span class="AllTogetherBuyBox LevelCupGray"></span>
					</s:iterator>
				</s:if> <s:if test="#achievement.diamond!=null">
					<s:iterator begin="1" end="#achievement.diamond">
						<span class="AllTogetherBuyBox LevelDiamond"></span>
					</s:iterator>
				</s:if> <s:if test="#achievement.graydiamond!=null">
					<s:iterator begin="1" end="#achievement.graydiamond">
						<span class="AllTogetherBuyBox LevelDiamondGray"></span>
					</s:iterator>
				</s:if> <s:if test="#achievement.goldStar!=null">
					<s:iterator begin="1" end="#achievement.goldStar">
						<span class="AllTogetherBuyBox LevelStar"></span>
					</s:iterator>
				</s:if> <s:if test="#achievement.graygoldStar!=null">
					<s:iterator begin="1" end="#achievement.graygoldStar">
						<span class="AllTogetherBuyBox LevelStarGray"></span>
					</s:iterator>
				</s:if></a></div>
				</th>
				<td><s:i18n name="Format">
					<s:text name="FormatNumeral2">
						<s:param value="(#list.caseLot.totalAmt)/100" />
					</s:text>
				</s:i18n></td>
				<th><s:i18n name="Format">
					<s:text name="FormatNumeral2">
						<s:param
							value="((#list.caseLot.buyAmtByStarter+#list.caseLot.buyAmtByFollower)*100+99)/#list.caseLot.totalAmt" />
					</s:text>
				</s:i18n>% <s:if
					test="(((#list.caseLot.buyAmtByStarter+#list.caseLot.buyAmtByFollower)*100+99)/#list.caseLot.totalAmt)!=100&&#list.caseLot.safeAmt>0">+
		<s:if
						test="(#list.caseLot.buyAmtByStarter+#list.caseLot.buyAmtByFollower+#list.caseLot.safeAmt)>#list.caseLot.totalAmt">
						<s:i18n name="Format">
							<s:text name="FormatNumeral2">
								<s:param
									value="100-(((#list.caseLot.buyAmtByStarter+#list.caseLot.buyAmtByFollower)*100+99)/#list.caseLot.totalAmt)" />
							</s:text>
						</s:i18n>
					</s:if>
					<s:else>
						<s:i18n name="Format">
							<s:text name="FormatNumeral2">
								<s:param
									value="(#list.caseLot.safeAmt*100)/#list.caseLot.totalAmt" />
							</s:text>
						</s:i18n>
					</s:else>
			%<i>保</i>
				</s:if></th>
				<td><s:i18n name="Format">
					<s:text name="FormatNumeral2">
						<s:param
							value="(#list.caseLot.totalAmt-#list.caseLot.buyAmtByStarter-#list.caseLot.buyAmtByFollower)/100" />
					</s:text>
				</s:i18n></td>
				<s:set name="safeAmt_mr" value="#list.caseLot.minAmt/100" />
				<th><input class="BuyText" type="text"
					id="canyu_amt_${list.caseLot.id}" value="${safeAmt_mr}" /> 元 <span
					class="CancelBtn"><input class="BaseBtn AllTogetherBuyBox"
					id="button_${list.caseLot.id}" type="button"
					onclick="canyuHemai('${list.caseLot.id}','${list.caseLot.lotno}')"  value="购买" /></span></th>
				<th><a
					href="/chlw/function/selectAll!getCaseDetail?caselotId=${list.caseLot.id}"
					target="_blank" onmouseover="HoverOver($(this))"
					onmouseout="HoverOut($(this))">查看</a></th>
			</tr>
		</s:iterator>
		<s:set name="pageCount" value="%{#parameters.pageCount[0]}" />
		<tr class="PageContent">
			<td colspan="11">每页显示 <input type="radio" name="pageCount"
				<s:if test="#pageCount=='20'||(#pageCount!='30'&&#pageCount!='50')"> checked="checked" </s:if>
				onclick="$('#CaseSelectForm').submit()" value="20" />20条 <input
				type="radio" name="pageCount"
				<s:if test="#pageCount=='30'"> checked="checked" </s:if>
				onclick="$('#CaseSelectForm').submit()" value="30" />30条 <input
				type="radio" name="pageCount"
				<s:if test="#pageCount=='50'"> checked="checked" </s:if>
				onclick="$('#CaseSelectForm').submit()" value="50" />50条</td>
		</tr>
		<tr class="PageContent">
			<th colspan="11">${pageHtml}</th>
		</tr>
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
function seachhemai(){
	if("请输入方案发起人"==$("#faqiren").val()){
		$("#search").val("");
	}else{
		$("#search").val($("#faqiren").val());	
	}
	var value=$("#getlonto").val();
	if(value=="双色球"){
		$("#lotno").val("F47104");
	}else if(value=="福彩3D"){
		$("#lotno").val("F47103");
	}else if(value=="七乐彩"){
		$("#lotno").val("F47102");
	}else if(value=="超级大乐透"){
		$("#lotno").val("T01001");
	}else if(value=="排列三"){
		$("#lotno").val("T01002");
	}else if(value=="排列五"){
		$("#lotno").val("T01011");
	}else if(value=="22选5"){
		$("#lotno").val("T01013");
	}else if(value=="七星彩"){
		$("#lotno").val("T01009");
	}else if(value=="胜负彩14场"){
		$("#lotno").val("T01003");
	}else if(value=="胜负彩任9场"){
		$("#lotno").val("T01004");
	}else if(value=="四场进球彩"){
		$("#lotno").val("T01005");
	}else if(value=="6场半全场"){
		$("#lotno").val("T01006");
	}else if(value=="竞彩足球胜平负"){
		$("#lotno").val("J00001");
	}
	var value=$("#totalAmt_1").val();
	if(value=="千元以上"){
		$("#totalAmt").val("100000");
	}else if(value=="百元以上"){
		$("#totalAmt").val("10000");
	}else if(value=="F47102"){
		$("#totalAmt").val("100000");
	}else if(value=="百元以下"){
		$("#totalAmt").val("1");
	}
	$("#CaseSelectForm").submit();
	
}; 
function onFaqiren(){
	$("#faqiren").val("");
};
</script>
<jsp:include page="/function/common/ruyicai_include_common_footer_noindex.jsp"/>
<input type="hidden" id="amt_caseId"  value="" />
<jsp:include page="/function/common/canyuHemai_div.jsp"/>
<jsp:include page="/function/common/tishi.jsp"/>
<jsp:include page="/function/query/case/fanganList.jsp"/>
<jsp:include page="/function/query/case/yingliList.jsp"/>
<jsp:include page="/function/common/setBody.jsp"/>
