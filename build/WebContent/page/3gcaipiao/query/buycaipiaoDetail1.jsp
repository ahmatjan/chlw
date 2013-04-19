<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@taglib prefix="s" uri="/struts-tags"%>

	<link href="/css/user.css" rel="stylesheet" type="text/css">
	<div class="user_head">
			<div class="user_zi">账户管理--购买彩票</div>
	</div>
    <div class="user_content">
        <div class="zijin_nav">
          <ul>
           <li><a class="hout" href="javascript:" onclick="reHtml(6,'hidden=3gcaipiao',false,'right_text')" title="账户明细">账户明细</a></li>
           <li><a class="hover" href="javascript:" onclick="reHtml(0,'hidden=3gcaipiao_goucai',false,'right_text')" title="购买彩票">购买彩票</a></li>
           <li><a class="hout" href="#" title="奖金派送">奖金派送</a></li>
           <li><a class="hout" href="#" title="充值记录">充值记录</a></li>
           <li><a class="hout" href="#" title="提款记录">提款记录</a></li>
         </ul>
        </div>
		<form action="/chlw/user/selectAll!betSelectCount" method="get" onsubmit="return reHtmlInParameters('',this.startDate.value,this.stopDate.value,'')">
        <div class="cz_cxxz">
          <div class="record_zhh">
            <span>起始日期:<input type="text" id="startDate1" size="15" name="startDate" class="Wdate"   onclick="WdatePicker()"  value="${startDate}"/></span> 
            <span>终止日期:<input type="text" id="stopDate1" size="15" name="stopDate"  class="Wdate"    onclick="WdatePicker()" value="${stopDate}"/></span>
            <input class="cz_cxbtn" name="button"  type="submit"" id="button" value="查询" />
          </div>
           <!-- div class="tiaoshu">
            <input name="aa" type="radio" id="radio1" value="10" checked="checked" />10条
            <input id="radio2" name="aa" type="radio" value="20" />20条
            <input id="radio3" name="aa" type="radio" value="30" />30条
          </div -->
          </div>     
            <div class="account_content">
              <table width="794"  border="0" cellpadding="0" cellspacing="0" class="zhzx_tab">
                <tr>
                  <td width="128" class="record_biao1">交易时间</td>
                  <td width="67" class="record_biao1">变动金额</td>
                  <td width="72" class="record_biao1">手续费</td>
                  <td width="81" class="record_biao1">余额</td>
                  <td width="86" class="record_biao1">交易类型</td>
                  <td class="record_biao1">订单号</td>
                  <td width="155" class="record_biao1">说明</td>
                </tr>
                <s:iterator id="account"  value="#request.list"  status="stat">
                <tr>
                   <s:if test='#stat.isEven()'>	
                       <td class="record_biao3">${plattime}</td>
                      <td class="record_biao3">￥${amt/100}</td>
                      <td class="record_biao3">&nbsp;</td>
                       <td class="record_biao3">￥${balance/100}</td>
                      <td class="record_biao3">${memo}</td>
                      <td class="record_biao3"></td>
                      <td class="record_biao3">${memo}</td>
                    </s:if>
                <!--
               <div class="page">
              <div class="number"><<</div>
              <div class="number"><</div>
              <div class="number">1</div>
              <div class="number">2</div>
              <div class="number">3</div>
              <div class="number">4</div>
              <div class="number">5</div>
              <div class="number">6</div>
              <div class="number">7</div>
              <div class="number">8</div>
              <div class="number">9</div>
              <div class="number">……</div>
              <div class="number">99</div>
              <div class="number">></div>
              <div class="number">>></div>
              <div class="topage1">跳转：</div>
              <input class="topagebox" name="textfield" type="text" id="textfield" size="4">
              <div class="topage">页</div>
              <div class="go">GO</div>
           </div>-->
                </tr>
               </s:iterator>
              </table>
           </div>
        
          <div class="account_page">
      ${pageHtml}
    </div>
    
           </form>
           <div class="cz_srjy">
                                支出交易笔数：2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                支出金额合计：<span class="redfont">400.00</span>元
          </div>
         <p class="cz_zhuming">
            注：<br/>
            1.如果您充值后，银行账户扣了款，3G彩票网没有为您加上，请及时与我们联系，我们将第一时间为您处理！<br/>
            2.如果您有其他需求，请联系网站客服：010-88888888
<br/>
        </p>
    </div>
    