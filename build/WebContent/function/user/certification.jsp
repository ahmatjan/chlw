{success}<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

 <div class="shiming" id="right_text">
  	<div class="register_suc"><span class="re1"><img src="/images/duigou.gif" border="0" /></span><span class="re2">恭喜<s:property value="#session.user.USERNAME"/>，您已经注册成功！</span><span class="re3"><a href="/rules/user.html?key=4" ><img src="/images/chongzhi_new.gif" border="0" /></a></span></div>
	<form action="#" method="post" id="realForm" name="realForm" onsubmit="return reHtml(21,$('#realForm').serialize());">
	<div class="shm_infor">
		<div class="infor_head"><span class="infor1">填写实名信息</span><span class="infor2">为了保障您的资金安全，请如实填写个人信息，确保中奖后顺利提现!</span></div>
		<div class="infor_list">
			<ul>
			<li><span class="right">真实姓名：</span><input name="tuserinfo.USERNAME" class="text"type="text" id="name" value='<s:property value="#session.user.USERNAME"/>'  onblur="realFormValidator()"/><span id="nameTip"></span></li>
			<li><span class="right">身份证号：</span><input name="tuserinfo.CERTID" class="text"type="text" id="userID" value='<s:property value="#session.user.CERTID"/>'  onblur="realFormValidator()"/><span id="userIDTip"></span></li>
			<li><span class="right">电子邮箱：</span><input name="tuserinfo.EMAIL" class="text"type="text" id="email" value='<s:property value="#session.user.EMAIL"/>'  onblur="realFormValidator()"/><span id="emailTip"></span></li>
			</ul>
		</div>
		<div><input class="infor_btn" name="" type="submit" value="" onmousemove="realFormValidator()"/><a href="/rules/user.html" title="以后再说"><span class="infor4">以后再说</span></a></div>
	</div>
	</form>
	<div class="recom">
		<div class="infor1">热门彩种推荐</div>
		<div class="recom_nei">
				<div class="recom_tu"><img src="/images/ssq.gif" width="46" height="47" border="0"  alt="双色球"/></div>
				<div class="recom_btn"><span class="recom_zi">双色球</span><a target="_blank" href="/shuangseqiu.html"><img src="/images/sale.gif" width="60" height="23" alt="现在购买"/></a><a target="_blank" href="/shuangseqiu_wanfajieshao.html"><img src="/images/wfjs.gif" width="59" height="23" alt="玩法介绍" /></a></div>
				<div class="recom_time">全国最火的彩票，2元可中1000万！</div>
		</div>
		<div class="recom_nei">
				<div class="recom_tu"><img src="/images/qlc.gif" width="46" height="47" border="0"  alt="七乐彩"/></div>
				<div class="recom_btn"><span class="recom_zi">七乐彩</span><a target="_blank" href="/qilecai.html"><img src="/images/sale.gif" width="60" height="23" alt="现在购买"/></a><a href="/qilecai_wanfajieshao.html"><img src="/images/wfjs.gif" width="59" height="23" alt="玩法介绍" /></a></div>
				<div class="recom_time">七乐彩，其乐来，百万奖，期期开！</div>
		</div>
		<div class="recom_nei">
				<div class="recom_tu"><img src="/images/dlt.gif" width="46" height="47" border="0"  alt="大乐透"/></div>
				<div class="recom_btn"><span class="recom_zi">大乐透</span><a target="_blank" href="/daletou.html"><img src="/images/sale.gif" width="60" height="23" alt="现在购买"/></a><a href="/daletou_wanfajieshao.html"><img src="/images/wfjs.gif" width="59" height="23" alt="玩法介绍" /></a></div>
				<div class="recom_time">超级大乐透，3元可中1600万！</div>
		</div>
		<div class="recom_nei">
				<div class="recom_tu"><img src="/images/fc3d.gif" width="46" height="47" border="0"  alt="福彩3D"/></div>
				<div class="recom_btn"><span class="recom_zi">福彩3D球</span><a target="_blank" href="/fucai3D.html"><img src="/images/sale.gif" width="60" height="23" alt="现在购买"/></a><a href="/fucai3D_wanfajieshao.html"><img src="/images/wfjs.gif" width="59" height="23" alt="玩法介绍" /></a></div>
				<div class="recom_time">天天开奖的福彩，直选3个号码中1000元！</div>
		</div>
		<div class="recom_nei">
				<div class="recom_tu"><img src="/images/pls.gif" width="46" height="47" border="0"  alt="排列三"/></div>
				<div class="recom_btn"><span class="recom_zi">排列三</span><a target="_blank" href="/pailie3.html"><img src="/images/sale.gif" width="60" height="23" alt="现在购买"/></a><a href="/pailie3_wanfajieshao.html"><img src="/images/wfjs.gif" width="59" height="23" alt="玩法介绍" /></a></div>
				<div class="recom_time">天天开奖的体彩，直选3个号码中1000元！</div>
		</div>
	</div>
  </div> 