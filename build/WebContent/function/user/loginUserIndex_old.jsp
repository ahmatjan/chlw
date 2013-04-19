<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<h2>账户全览</h2>
<dl class="account_javaEye">
	<dt>&#160;</dt>
	<dd>可用余额：¥<i id="deposit_amount_user"></i>元&#160;&#160;&#160;&#160;&#160;冻结资金：¥<i id="freeze_amout_user"></i>元</dd>
	<script type="text/javascript">balanceAdtil("deposit_amount_user","freeze_amout_user");</script>
	<dt>&#160;</dt>
	<dd>如果您充值后，银行账户扣了款，如意彩网没有为您加上，</dd>
	<dd>请及时与我们联系，我们将第一时间为您处理！</dd>
	<dd><span>客服电话：400-665-1000</span> <a target="_blank" title="在线客服" href="http://wpa.qq.com/msgrd?v=3&amp;uin=1427872305&amp;site=qq&amp;menu=yes" class="HomePageBGBox account_hotLine" target="_blank"></a></dd>
	<dd>客服邮箱：<a href="mailto:service@ruyicai.com" title="客服邮箱">service@ruyicai.com</a></dd>
	<dt>&#160;</dt>
	<dd><i>资金冻结的原因：</i>1.用户提款冻结 2.用户追号冻结</dd>

</dl>
<script>
	$(function(){
		$(".a_javaEye").addClass("selected");
	});
</script>

