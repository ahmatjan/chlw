<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
  	<div class="bt"><img src="/images/kaijiangtop.gif" width="190" height="29"></div>
		<div id="PARENT_kj"><input type="hidden" value="kaijianggonggao" id="kaijianggonggao"/>
			<ul id="nav_kj">
			<li><a href="javascript:;" title="福利彩票"><span class="kjnaw">福利彩票</span></a>
			<ul class="expanded">
			 <li><a href="/include/kaijianggonggao.html?key=28&lotno=F47104" title="双色球">
			 <span <s:if test="#request.endTime1ck==1">class="kaijiang"</s:if>>双色球</span></a></li>
			 
			 <li><a href="/include/kaijianggonggao.html?key=28&lotno=F47103" title="福彩3D">
			 <span class="kaijiang">福彩3D</span></a></li>
			 
			 <li><a href="/include/kaijianggonggao.html?key=28&lotno=F47102" title="七乐彩">
			 <span <s:if test="#request.endTime3ck==1">class="kaijiang"</s:if>>七乐彩</span></a></li>
			 </ul>
			</li>
			<li><a href="javascript:;" title="体育彩票"><span class="kjnaw">体育彩票</span></a>
			 <ul class="expanded">
			 <li><a href="/include/kaijianggonggao.html?key=28&lotno=T01001" title="大乐透">
			 <span <s:if test="#request.endTime4ck==1">class="kaijiang"</s:if>>大乐透</span></a></li>
			 
			 <li><a href="/include/kaijianggonggao.html?key=28&lotno=T01002" title="排列三">
			 <span class="kaijiang">排列三</span></a></li>
			 <li><a href="/include/kaijianggonggao.html?key=28&lotno=T01011" title="排列五">
			 <span class="kaijiang">排列五</span></a></li>
			 
			 <li><a href="/include/kaijianggonggao.html?key=28&lotno=T01009" title="七星彩">
			 <span <s:if test="#request.endTime5ck==1">class="kaijiang"</s:if>>七星彩</span></a></li>
			 </ul>
			</li>
			
			<%/*<li><a href="javascript:;"  title="高频彩票"><span class="kjnaw">高频彩票</span></a>
			 <ul class="expanded">
			 <li><a href="/include/kaijianggonggao.html?key=28&lotno=T01007" title="时时彩"><span class="kaijiang">时时彩</span></a>
			 </li>
			 </ul>
			</li>	*/ %>
			</ul>

</div>
