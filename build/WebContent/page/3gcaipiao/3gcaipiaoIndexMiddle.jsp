<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@taglib prefix="s" uri="/struts-tags"%>
 
 	<div class="caizhong">
		<div class="caizhong_logo"><span class="caizhong_img"><img src="/images/ssq_tu.gif" /></span><span class="caizhong_text">双色球</span></div>
		<div class="caizhong_jieguo">
			<div class="czh_message"><span class="czh_1"><s:property value="#request.SSQList[1].term_code"/>期开奖结果</span><span class="czh_2">开奖时间：后台无返回</span></div>
			<div class="czh_qiu">
				<ul><s:iterator value="#request.SSQList[2]" >
								<li class="hongqiu"><s:property value="fjs"/></li>
							</s:iterator>
					<li class="lanqiu"><s:property value="#request.SSQList[1].win_special_code"/></li>
				</ul>
			</div>
		</div>
		<div class="caizhong_btn">
			<ul>
				<li><a href="/shuangseqiu.html" title="立即购买"><img src="/images/buybtn.gif" alt="立即购买"/></a></li>
				<li><a href="#" title="图表走势"><img src="/images/tbzsbtn.gif" alt="图表走势"/></a></li>
				<li><a href="#" title="话费购买"><img src="/images/hfgmbtn.gif" alt="话费购买"/></a></li>
				<li><a href="/bangzhuzhongxin/wanfajieshao.html#3" title="玩法介绍"><img src="/images/wfjsbtn.gif" alt="玩法介绍"/></a></li>
			</ul>
		</div>
	</div>
	
	<div class="caizhong">
		<div class="caizhong_logo"><span class="caizhong_img"><img src="/images/dlt_tu.gif" /></span><span class="caizhong_text">大乐透</span></div>
		<div class="caizhong_jieguo">
			<div class="czh_message"><span class="czh_1"><s:property value="#request.DLTList[2].term_code"/>期开奖结果</span><span class="czh_2">开奖时间：后台无返回</span></div>
			<div class="czh_qiu">
				<ul><s:iterator id="dltl" value="#request.DLTList[0]" status="stat" >
						<li class="hongqiu"><s:property value="#dltl.fjs"/></li>	
					</s:iterator>
					<s:iterator id="st" value="#request.DLTList[1]" >
						<li class="lanqiu"><s:property value="#st.fjs"/></li>
					</s:iterator>
				</ul>
			</div>
		</div>
		<div class="caizhong_btn">
			<ul>
				<li><a href="/daletou.html" title="立即购买"><img src="/images/buybtn.gif" alt="立即购买"/></a></li>
				<li><a href="#" title="图表走势"><img src="/images/tbzsbtn.gif" alt="图表走势"/></a></li>
				<li><a href="#" title="话费购买"><img src="/images/hfgmbtn.gif" alt="话费购买"/></a></li>
				<li><a href="/bangzhuzhongxin/wanfajieshao.html#4" title="玩法介绍"><img src="/images/wfjsbtn.gif" alt="玩法介绍"/></a></li>
			</ul>
		</div>
	</div>	
	
	<div class="caizhong">
		<div class="caizhong_logo"><span class="caizhong_img"><img src="/images/fc3d_tu.gif" /></span><span class="caizhong_text">福彩3D</span></div>
		<div class="caizhong_jieguo">
			<div class="czh_message"><span class="czh_1"><s:property value="#request.SDList[3].term_code"/>期开奖结果</span><span class="czh_2">开奖时间：后台无返回</span></div>
			<div class="czh_qiu">
				<ul>
					<s:iterator value="#request.SDList" begin='0' end='2'>
						<li class="huangqiu"><s:property value="fjs"/></li>
					</s:iterator>
				</ul>
			</div>
		</div>
		<div class="caizhong_btn">
			<ul>
				<li><a href="/fucai3D.html" title="立即购买"><img src="/images/buybtn.gif" alt="立即购买"/></a></li>
				<li><a href="#" title="图表走势"><img src="/images/tbzsbtn.gif" alt="图表走势"/></a></li>
				<li><a href="#" title="话费购买"><img src="/images/hfgmbtn.gif" alt="话费购买"/></a></li>
				<li><a href="/bangzhuzhongxin/wanfajieshao.html#2" title="玩法介绍"><img src="/images/wfjsbtn.gif" alt="玩法介绍"/></a></li>
			</ul>
		</div>
	</div>
	


	<div class="caizhong">
		<div class="caizhong_logo"><span class="caizhong_img"><img src="/images/pls_tu.gif" /></span><span class="caizhong_text">排列三</span></div>
			<div class="caizhong_jieguo">
				<div class="czh_message"><span class="czh_1"><s:property value="#request.PLSList[3].term_code"/>期开奖结果</span><span class="czh_2">开奖时间：后台无返回</span></div>
				<div class="czh_qiu">
					<ul>
						<s:iterator value="#request.PLSList" begin='0' end='2'>
							<li class="huangqiu"><s:property value="fjs"/></li>
						</s:iterator>
					</ul>
				</div>
			</div>
		<div class="caizhong_btn">
			<ul>
				<li><a href="/pailie3.html" title="立即购买"><img src="/images/buybtn.gif" alt="立即购买"/></a></li>
				<li><a href="#" title="图表走势"><img src="/images/tbzsbtn.gif" alt="图表走势"/></a></li>
				<li><a href="#" title="话费购买"><img src="/images/hfgmbtn.gif" alt="话费购买"/></a></li>
				<li><a href="/bangzhuzhongxin/wanfajieshao.html#1" title="玩法介绍"><img src="/images/wfjsbtn.gif" alt="玩法介绍"/></a></li>
			</ul>
		</div>
	</div>	
	
	<div class="caizhong1">
		<div class="caizhong_logo"><span class="caizhong_img"><img src="/images/qlc_tu.gif" /></span><span class="caizhong_text">七乐彩</span></div>
			<div class="caizhong_jieguo">
				<div class="czh_message"><span class="czh_1"><s:property value="#request.QLCList[7].term_code"/>期开奖结果</span><span class="czh_2">开奖时间：后台无返回</span></div>
				<div class="czh_qiu">
					<ul>
						<s:iterator value="#request.QLCList" begin='0' end='6'>
							<li class="hongqiu"><s:property value="fjs"/></li>		
						</s:iterator>
						<li class="lanqiu"><s:property value="#request.QLCList[7].win_special_code"/></li>
					</ul>
				</div>
			</div>
		<div class="caizhong_btn">
			<ul>
				<li><a href="/qilecai.html" title="立即购买"><img src="/images/buybtn.gif" alt="立即购买"/></a></li>
				<li><a href="#" title="图表走势"><img src="/images/tbzsbtn.gif" alt="图表走势"/></a></li>
				<li><a href="#" title="话费购买"><img src="/images/hfgmbtn.gif" alt="话费购买"/></a></li>
				<li><a href="/bangzhuzhongxin/wanfajieshao.html#5" title="玩法介绍"><img src="/images/wfjsbtn.gif" alt="玩法介绍"/></a></li>
			</ul>
		</div>
	</div>
		
	
	
