<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page import="net.sf.json.JSONObject,com.jrt.invokeLot.util.JSONReslutUtil,com.jrt.invokeLot.lot.bean.Tuserinfo,com.ruyicai.util.NameUtil" %>
<%	
	JSONObject tuserinfo = JSONReslutUtil.getUserInfo(request);
	Tuserinfo tuser = Tuserinfo.setJson(tuserinfo.getJSONObject("value"));
%>
<script type="text/javascript">balanceAdtil("deposit_amount_user","freeze_amout_user","username");getUserScore("scores");</script>
<h1>账户全览</h1>
<div class="zhqlrbox">
    <div class="zhqlsctx">
      <div class="zhqltxbg"><a href='javaScript:loginShow("UploadImgAlert",true)'>
      <%if(!"".equals(tuser.getHEADPATH())) {%>
      <img src="<%=tuser.getHEADPATH() %>" width="100" height="100"  id="headpath"/>
      <%}else{ %>
      <img src="/images/defaulttx.gif" width="100" height="100" id="headpath" />
      <%} %>
      </a></div>
      <div class="zhqltxsm">100x100像素大小</div>
    </div>
    <div class="zhqltxscan">
      <div class="hyuser">欢迎，<span id="username"></span></div>
      <div class="zhqlsqtxbtn"><a href='javaScript:loginShow("UploadImgAlert",true)'><img src="/images/zhqlsqtxbtn.gif" width="90" height="32" border="0" /></a></div>
    </div>
    <div class="zhqlzhxx">
      当前积分：<font class="redword" id="scores">35</font>分 
      <span class="blueword"><a href="/bangzhuzhongxin/goucaibangzhu/jifen/20120329114128_7138.html?id=7138&code1=209&code=126" title="积分规则">积分规则>></a></span>
      <span class="zhqlcz"><a href="./user.html?key=4"><img src="/images/zhqlczbtn.gif" width="42" height="22" border="0"/></a></span>
      <span class="zhqltk"><a href="./user.html?key=11"><img src="/images/zhqltkbtn.gif" width="42" height="22" border="0"/></a></span>
      <br/>
      可用余额：<font class="bigword redword"id="deposit_amount_user">220.18</font>元 
      <span class="zjdj">冻结资金：<font class="bigword" id="freeze_amout_user">0.00</font>元</span></br>
      账户安全：<%if (tuser.getNAME()!=null && !"".equals(tuser.getNAME().trim()) && !"null".equals(tuser.getNAME())) {%><font class="userid_right">已实名认证</font><%}else{ %><font class="userid_error"><a href="./user.html?key=33" title="立即绑定" >立即绑定&gt;&gt;</a></font><%} %>
	<%if (tuser.getEMAIL()!=null && !"".equals(tuser.getEMAIL().trim()) && tuser.getEMAIL().indexOf("@")>-1) {%><font class="email_right">邮箱已绑定</font><%}else{ %><font class="email_error"><a href="./user.html?key=36" title="立即绑定" >立即绑定&gt;&gt;</a></font><%} %>
	<%if (tuser.getMOBILEID()!=null && !"".equals(tuser.getMOBILEID().trim()) ){ %><font class="phone_right">电话已绑定</font> <%}else{ %><font class="phone_error"><a href="./user.html?key=10" title="立即绑定" >立即绑定&gt;&gt;</a></font><%} %>
    </div>
  </div>
<h1>热销彩种</h1>
<div class="myAccount_main" id="hotlotno">
<script>$(function(){reHtmljsp(67,'lotNo=F47104-F47103-T01002',true,"hotlotno",false);	});</script>
</div>
<div class="myAccount_record"><h1>最近投注记录</h1><span class="myAccount_show"><a href="./user.html?key=0" title="查看详细投注记录">查看详细投注记录 &gt;&gt;</a></span></div>
<div class="myAccount_recent" id="newBetSelect">
</div>
<script>$(function(){reHtmljsp(29,'',true,"newBetSelect",false);	});</script>
<script>
	$(function(){
		$(".a_javaEye").addClass("selected");
		$(".wenti").hover(function(){
			$(".account_help_txt").toggle("fast");
		});
	});
</script>
<jsp:include page="/function/user/uploadImgAlert.jsp"></jsp:include>
