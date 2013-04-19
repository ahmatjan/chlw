<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<div class="zh_rightbg">
	<div class="zh_rt">手机服务</div>
	<div class="user_content">
		<div class="bound_chg"><img class="bound_duigou" src="/images/duigou.gif"  /><img class="chgimg" src="/images/zhc_suc.gif" /></div>
		<div class="bound_chgnum">已绑定手机：<font class="blue"><s:property value="#session.user.MOBILEID"/></font></div>
		<div class="bound_nr_email"><b>密码找回</b>　当您忘记密码时，可通过短信找回您的密码。　　　　<img src="/images/lvgou.gif" class="lvgou" /><font class="huizi">已定制　系统默认</font></div>
		<div class="bound_nr_email"><b>开奖通知</b>　当您购买的彩种开奖后，将开奖结果用短信息通知您。<img src="/images/lvgou.gif" class="lvgou" /><font class="huizi">已定制　</font></div>
		<div class="bound_nr_email"><b>中奖通知</b>　当您购买的彩票中奖后，将中奖详情用短信息通知您。<img src="/images/lvgou.gif" class="lvgou" /><font class="huizi">已定制　</font></div>
	</div>
</div>