<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<table>
	<tr><th>今日彩种</th><th>截止时间</th><th class="tar">投注</th></tr>
	<tr id="play_1" <s:if test="#request.endTime1ck==0">style="display:none"</s:if>>
	<td>双色球</td><td>${endTime1}</td><td><a href="/shuangseqiu.html" title="立即投注">立即投注</a></td>
	</tr>
	<tr id="play_2">
	<td>福彩3D</td><td>${endTime2}</td><td><a href="/fucai3D.html" title="立即投注">立即投注</a></td>
	</tr>
	<tr id="play_3" <s:if test="#request.endTime3ck==0">style="display:none"</s:if>>
	<td>七乐彩</td><td>${endTime3}</td><td><a href="/qilecai.html" title="立即投注">立即投注</a></td>
	</tr>
	<tr id="play_4" <s:if test="#request.endTime4ck==0">style="display:none"</s:if>>
	<td>大乐透</td><td>${endTime4}</td><td><a href="/daletou.html" title="立即投注">立即投注</a></td>
	</tr>
	<tr id="play_5" <s:if test="#request.endTime5ck==0">style="display:none"</s:if>>
	<td>七星彩</td><td>${endTime5}</td><td><a href="/qixingcai.html" title="立即投注">立即投注</a></td>
	</tr>
	<tr id="play_6" >
	<td>排列三</td><td>${endTime6}</td><td><a href="/pailie3.html" title="立即投注">立即投注</a></td>
	</tr>
	<tr id="play_7" >
	<td>排列五</td><td>${endTime7}</td><td><a href="/pailie5.html" title="立即投注">立即投注</a></td>
	</tr>
</table>