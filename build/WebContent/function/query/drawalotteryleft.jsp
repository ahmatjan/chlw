<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript" src="/chlw/function/js/user/user.js"></script> 
<!-- 3G彩票网左侧开奖公告 -->

   <div class="detail_con">
		<div class="det1">
			<span class="cuti">双色球</span><span class="time">
			<s:property value="#request.SSQList[1].term_code"/>期</span>
			<span class="xq_zi"><a href="/rules/kaijiang.html?key=28&lotno=F47104">详细</a></span>
		</div>
		<div class="det2">
			<s:iterator value="#request.SSQList[2]" >
								<s:property value="fjs"/>
							</s:iterator>
			<span class="lanzi"><s:property value="#request.SSQList[1].win_special_code"/></span>
	   </div>
	</div>
	<div class="detail_con">
		<div class="det1"><span class="cuti">福彩3D</span><span class="time">
		<s:property value="#request.SDList[3].term_code"/>期</span><span class="xq_zi"><a href="/rules/kaijiang.html?key=28&lotno=F47103" >详细</a></span></div>
		<div class="det2"><s:iterator value="#request.SDList" >
								<s:property value="fjs"/>
						  </s:iterator></div>
	</div>


	<div class="detail_con">
		<div class="det1"><span class="cuti">排列三</span><span class="time">
			<s:property value="#request.PLSList[3].term_code"/>期</span><span class="xq_zi"><a href="/rules/kaijiang.html?key=28&lotno=T01002">详细</a></span></div>
		<div class="det2"><s:iterator value="#request.PLSList" >
			<s:property value="fjs"/>
		</s:iterator></div>
	</div>	
	
	<div class="detail_con">
		<div class="det1"><span class="cuti">七乐彩</span><span class="time">
			<s:property value="#request.QLCList[7].term_code"/>期</span><span class="xq_zi"><a href="/rules/kaijiang.html?key=28&lotno=F47102">详细</a></span></div>
		<div class="det2"><s:iterator value="#request.QLCList" >
								<s:property value="fjs"/>		
						</s:iterator>
						<span class="lanzi"><s:property value="#request.QLCList[7].win_special_code"/></span>
						</div>
	</div>
		
	<div class="detail_con">
		<div class="det1"><span class="cuti">大乐透</span><span class="time">
			<s:property value="#request.DLTList[2].term_code"/>期</span><span class="xq_zi"><a href="/rules/kaijiang.html?key=28&lotno=T01001">详细</a></span></div>
		<div class="det2"><s:iterator id="dltl" value="#request.DLTList[0]" status="stat" >
								<s:property value="#dltl.fjs"/>		
						  </s:iterator>
		<span class="lanzi"><s:iterator id="st" value="#request.DLTList[1]" >
			<s:property value="#st.fjs"/>
		</s:iterator></span></div>
	</div>	
	
