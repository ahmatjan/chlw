<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<link href="/css/user.css" rel="stylesheet" type="text/css">
		<div class="user_head">
			<div class="user_zi">我的账号-银行卡绑定</div>
		</div>
		<div class="user_content">
          <div class="user_contopbg">
            <img src="zhzx_img/icon_tanhao.png"  class="user_iconimg" />您还没有绑定银行卡！为保证您的账户安全，我们建议您绑定您的银行卡。
		</div>
		  <div class="safe_content">
				<div class="ziliao_con">
					<ul>
						<li><span class="safe_head">开户银行名称：</span><span>
						 <select name="cashBean.bank_name" id="bank_name" class="bank_select">
			               <option value="招商银行" <s:if test='#request.objValue.BANKNAME=="招商银行"'>selected="selected"</s:if>>招商银行</option>
			               <option value="中国建设银行" <s:if test='#request.objValue.BANKNAME=="中国建设银行"'>selected="selected"</s:if>>中国建设银行</option>
			               <option value="中国工商银行" <s:if test='#request.objValue.BANKNAME=="中国工商银行"'>selected="selected"</s:if>>中国工商银行</option>
			               <option value="中国农业银行" <s:if test='#request.objValue.BANKNAME=="中国农业银行"'>selected="selected"</s:if>>中国农业银行</option>
			               <option value="交通银行" <s:if test='#request.objValue.BANKNAME=="交通银行"'>selected="selected"</s:if>>交通银行</option>
			               <option value="中国民生银行" <s:if test='#request.objValue.BANKNAME=="中国民生银行"'>selected="selected"</s:if>>中国民生银行</option>
			               <option value="深圳发展银行" <s:if test='#request.objValue.BANKNAME=="深圳发展银行"'>selected="selected"</s:if>>深圳发展银行</option>
			               <option value="上海浦东发展银行" <s:if test='#request.objValue.BANKNAME=="上海浦东发展银行"'>selected="selected"</s:if>>上海浦东发展银行</option>
			               <option value="中国光大银行" <s:if test='#request.objValue.BANKNAME=="中国光大银行"'>selected="selected"</s:if>>中国光大银行</option>
			               <option value="广东发展银行" <s:if test='#request.objValue.BANKNAME=="广东发展银行"'>selected="selected"</s:if>>广东发展银行</option>
			               <option value="兴业银行" <s:if test='#request.objValue.BANKNAME=="兴业银行"'>selected="selected"</s:if>>兴业银行</option>
           				</select>
						</span></li>
						<li><span class="safe_head">&nbsp;</span><span><select class="ziliao_select" name=""><option value="">==请选择==</option></select><select class="ziliao_select" name=""><option value="">==请选择==</option></select></span></li>
						<li><span class="safe_head">&nbsp;</span><span ><input class="ziliao_input" name="" type="text" /></span><span class="ziliao_tishi">支行名称，如：深圳分行泰然支行</span></li>
						<li><span class="safe_head">银行卡号码：</span><span><input class="ziliao_input" name="" type="text" value='<s:property value="#request.objValue.BANKACCOUNT"/>' /></span><span class="ziliao_tishi">如需修改银行卡，请联系<a href="#" class="blue_text" title="在线客服">在线客服</a></span></li>
						<li><span><input name="" class="bank_btn" value="" type="button" /></span></li>
					</ul>
				</div>
			</div>
	    </div>