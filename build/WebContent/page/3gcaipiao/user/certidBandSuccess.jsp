<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<link href="/css/user.css" rel="stylesheet" type="text/css">
 <s:if test='#session.user.CERTID=="111111111111111111"'><s:include value="/page/3gcaipiao/user/certidBand.jsp"></s:include>  </s:if>
 <s:else>
    		<div class="user_head">
			<div class="user_zi">我的账号-身份证绑定</div>
		</div>
		<div class="user_content">
          <div class="user_contopbg">
          
            <div class="bank_suc">您已绑定身份证！</div>
          </div>
		  <div class="safe_content">
				<div class="bank_con">
					<ul>
					<font color="red"><s:property value="#request.message"/></font>
						<li>真实名称：<s:if test="#session.user.NAME.trim().equals('')"><s:property value=" "/> </s:if>
						<s:else><s:property value="#session.user.NAME.substring(0,1)+'***'" /></s:else>
						</li>
						<li>身份证号码：
						<s:if test="#session.user.CERTID.trim().equals('')"><s:property value=" "/> </s:if>
						<s:elseif test="#session.user.CERTID.trim().equals('111111111111111111')"><s:property value=" "/> </s:elseif>
						<s:else><s:property value="#session.user.CERTID.substring(0,14)+'****'"/></s:else><span>（ 如需修改，请联系客服热线：400-665—1000） </span></li>
					</ul>
				</div>
		  </div>
	    </div>
	    </s:else>