<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@taglib prefix="s" uri="/struts-tags"%>
 <script>
	function aurlclick(lotno,id){
		//alert("#select"+id);
		var batchcode = $("#"+id+"select").val();
		//alert(batchcode);
		window.location.href='./kaijianggonggao.html?key=53&lotno='+lotno+"&batchcode="+batchcode;
	}
 </script>
	 <div class="kj_table">
        <ul class="kj_hangone">
          <li class="hang1">类型</li>
          <li class="hang8">彩种</li>
          <li class="hang2">期号</li>
          <li class="hang3">开奖时间</li>
          <li class="hang5">开奖号码</li>
          <li class="hang7">投注总额</li>
          <li class="hang6">开奖日</li>
          <li class="hang4">详情</li>
          <li class="hang4">图表</li>
          <li class="hang3">购买彩票</li>
        </ul>
 <s:iterator value="#request.arrWininfo" id="arrWininfo"> 
   <s:if test='id.lotno=="F47103"'>   
         <ul class="kj_hangtwo" id="sd">
          <li class="lie1">福彩</li>
	      <li class="lie8"><span onclick="aurlclick('F47103','sd')" style="cursor: pointer">福彩3D</span><input value="F47103" type="hidden" id="sdlotno" /></li>
	      <li class="lie2">
            <select name="select2" id="sdselect" onchange="getOnedrawalottery('sd')">
              	<s:iterator value="batchcodeArray" begin="0" end="9">
            		<option value="<s:property value="onebet"/>"><s:property value="onebet"/></option>	
            	</s:iterator>
            </select>
          </li>
	      <li class="lie3" id="sdtime"><s:property value="opentime.substring(0,10)"/></li>
	      <li class="lie5">
            <div class="kj_haoma" id="sdhaoma">
              <ul>
            <s:if test="winspecialcode==null">
            		<li>　</li>
            </s:if>
           	<s:else>
              	<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(1,2)"/>&nbsp;</li>
				<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(3,4)"/>&nbsp;</li>
				<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(5,6)"/>&nbsp;</li>
			</s:else>	
              </ul>
            </div>
	        </li>
	      <li class="lie7" id="sdtotalMoney"><s:property value="rtnMap.betTotalMoney"/></li>
	      <li class="lie6">每日</li>
	      <li class="lie4" id="lies4sd"><a href="javascript:aurlclick('F47103','sd');" title="详情"><img class='xiangqingtu' src='/images/xiangqingtu.gif' /></a></li>
	      <li class="lie4"><a href="http://tbzs.ruyicai.com/cjw3d/index.php" title="图表"><img class="kjtubiao" src="/images/kjtubiao.gif" /></a></li>
	      <li class="lie3"><a href="/fucai3D.html" title="立即购买" class="liebtn">立即购买</a></li>
	      </ul>
</s:if>	
<s:if test='id.lotno=="T01002"'>   
	    <ul class="kj_hangtwo" id="pls">
          <li class="lie1">体彩</li>
	      <li class="lie8"><span onclick="aurlclick('T01002','pls')" style="cursor:pointer">排列三</span><input type="hidden" id="plslotno" value="T01002"/></li>
	      <li class="lie2">
            <select name="select2" id="plsselect" onchange="getOnedrawalottery('pls')">
            	<s:iterator value="batchcodeArray" begin="0" end="9">
            		<option value="<s:property value="onebet"/>"><s:property value="onebet"/></option>	
            	</s:iterator>
            </select>
          </li>
	      <li class="lie3" id="plstime"><s:property value="opentime.substring(0,10)"/></li>
	      <li class="lie5">
            <div class="kj_haoma" id="plshaoma">
              <ul>
              <s:if test="winspecialcode==null">
            		<li>　</li>
            	</s:if>
            	<s:else>
	              	<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(0,1)"/>&nbsp;</li>
					<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(1,2)"/>&nbsp;</li>
					<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(2,3)"/>&nbsp;</li>
				</s:else>	
              </ul>
            </div>
	        </li>
	      <li class="lie7" id="plstotalMoney"><s:property value="rtnMap.betTotalMoney"/></li>
	      <li class="lie6">每日</li>
	      <li class="lie4" id="lies4pls"><a href="javascript:aurlclick('T01002','pls');" title="详情"><img class='xiangqingtu' src='/images/xiangqingtu.gif'/></a></li>
	      <li class="lie4"><a href="http://tbzs.ruyicai.com/cjwpl3/index.php" title="图表"><img class="kjtubiao" src="/images/kjtubiao.gif" /></a></li>
	      <li class="lie3"><a href="/pailie3.html" title="立即购买" class="liebtn">立即购买</a></li>
	      </ul>
</s:if>
<s:if test='id.lotno=="T01011"'>   	      
	      <ul class="kj_hangtwo" id="plw">
          <li class="lie1">体彩</li>
	      <li class="lie8"><span onclick="aurlclick('T01011','plw')" style="cursor:pointer">排列五</span><input type="hidden" value="T01011" id="plwlotno"/></li>
	      <li class="lie2">
            <select name="select" id="plwselect" onchange="getOnedrawalottery('plw')">
            	<s:iterator value="batchcodeArray" begin="0" end="9">
            		<option value="<s:property value="onebet"/>"><s:property value="onebet"/></option>	
            	</s:iterator>
            </select>
          </li>
	      <li class="lie3" id="plwtime"><s:property value="opentime.substring(0,10)"/></li>
	      <li class="lie5">
            <div class="kj_haoma" id="plwhaoma">
            	<ul>
            	<s:if test="winspecialcode==null">
            		<li>　</li>
            	</s:if>
            	<s:else>
            		<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(0,1)"/>&nbsp;</li>
					<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(1,2)"/>&nbsp;</li>
					<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(2,3)"/>&nbsp;</li>
					<li class="kj_hongqiu"><s:property value="winbasecode.substring(3,4)"/>&nbsp;</li>
					<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(4,5)"/>&nbsp;</li>	
				</s:else>
            	</ul>
            </div>
	      </li>
	      <li class="lie7" id="plwtotalMoney"><s:property value="rtnMap.betTotalMoney"/></li>
	      <li class="lie6">每日</li>
	      <li class="lie4"><a href="javascript:aurlclick('T01011','plw');" title="详情"><img class='xiangqingtu' src='/images/xiangqingtu.gif'/></a></li>
	      <li class="lie4"><a href="http://tbzs.ruyicai.com/cjwpl5/index.php" title="图表"><img class="kjtubiao" src="/images/kjtubiao.gif" /></a></li>
	      <li class="lie3"><a href="/pailie5.html" title="立即购买" class="liebtn">立即购买</a></li>
	      </ul>
 </s:if>
 <s:if test='id.lotno=="T01009"'>            
          <ul class="kj_hangtwo" id="qxc">
          <li class="lie1">体彩</li>
	      <li class="lie8"><span onclick="aurlclick('T01009','qxc')" style="cursor:pointer">七星彩</span><input type="hidden" value="T01009" id="qxclotno"/></li>
	      <li class="lie2" >
            <select name="select" id="qxcselect" onchange="getOnedrawalottery('qxc')">
            	<s:iterator value="batchcodeArray" begin="0" end="9">
            		<option value="<s:property value="onebet"/>"><s:property value="onebet"/></option>	
            	</s:iterator>
            </select>
          </li>
	      <li class="lie3" id="qxctime"><s:property value="opentime.substring(0,10)"/></li>
	      <li class="lie5">
            <div class="kj_haoma" id="qxchaoma">
            	<ul>
            	<s:if test="winspecialcode==null">
            		<li>　</li>
            	</s:if>
            	<s:else>
	           		<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(0,1)"/>&nbsp;</li>
					<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(1,2)"/>&nbsp;</li>
					<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(2,3)"/>&nbsp;</li>
					<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(3,4)"/>&nbsp;</li>
					<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(4,5)"/>&nbsp;</li>
					<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(5,6)"/>&nbsp;</li>
					<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(6,7)"/>&nbsp;</li>	
				</s:else>	
            	</ul>
            </div>
	      </li>
	      <li class="lie7" id="qxctotalMoney"><s:property value="rtnMap.betTotalMoney"/></li>
	      <li class="lie6">二&nbsp;五&nbsp;日</li>
	      
	      <li class="lie4" id="lies4qxc"><a href="javascript:aurlclick('T01009','qxc');" title="详情"><img class='xiangqingtu' src='/images/xiangqingtu.gif'/></a></li>
	      <li class="lie4"><a href="http://tbzs.ruyicai.com/cjw7xc/index.php" title="图表"><img class="kjtubiao" src="/images/kjtubiao.gif" /></a></li>
	      <li class="lie3"><a href="/qixingcai.html" title="立即购买" class="liebtn">立即购买</a></li>
	      </ul>
</s:if> 
<s:if test='id.lotno=="F47102"'>   	      
	      <ul class="kj_hangtwo" id="qlc">
          <li class="lie1">福彩</li>
	      <li class="lie8"><span onclick="aurlclick('F47102','qlc')" style="cursor:pointer">七乐彩</span><input type="hidden" value="F47102" id="qlclotno"/></li>
	      <li class="lie2">
            <select name="select" id="qlcselect" onchange="getOnedrawalottery('qlc')">
            	<s:iterator value="batchcodeArray" begin="0" end="9">
            		<option value="<s:property value="onebet"/>"><s:property value="onebet"/></option>	
            	</s:iterator>
            </select>
          </li>
	      <li class="lie3" id="qlctime"><s:property value="opentime.substring(0,10)"/></li>
	      <li class="lie5">
            <div class="kj_haoma" id="qlchaoma">
            	<ul>
            	<s:if test="winspecialcode==null">
            		<li>　</li>
            	</s:if>
            	<s:else>
	           		<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(0,2)"/>&nbsp;</li>
					<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(2,4)"/>&nbsp;</li>
					<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(4,6)"/>&nbsp;</li>
					<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(6,8)"/>&nbsp;</li>
					<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(8,10)"/>&nbsp;</li>
					<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(10,12)"/>&nbsp;</li>
					<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(12,14)"/>&nbsp;</li>
					<li class="kj_lanqiu">&nbsp;<s:property value="winspecialcode"/>&nbsp;</li>
				</s:else>	
            	</ul>
            </div>
	      </li>
	      <li class="lie7" id="qlctotalMoney"><s:property value="rtnMap.betTotalMoney"/></li>
	      <li class="lie6">一&nbsp;三&nbsp;五</li>
	      <li class="lie4" id="lies4qlc"><a href="javascript:aurlclick('F47102','qlc');" title="详情"><img class='xiangqingtu' src='/images/xiangqingtu.gif' /></a></li>
	      <li class="lie4"><a href="http://tbzs.ruyicai.com/cjwqlc/index.php" title="图表"><img class="kjtubiao" src="/images/kjtubiao.gif" /></a></li>
	      <li class="lie3"><a href="/qilecai.html" title="立即购买" class="liebtn">立即购买</a></li>
	      </ul>
</s:if> 
<s:if test='id.lotno=="F47104"'> 	   
	    <ul class="kj_hangtwo" id="ssq">
          <li class="lie1">福彩</li>
	      <li class="lie8"><span onclick="aurlclick('F47104','ssq')" style="cursor: pointer">双色球</span><input type="hidden" value="F47104" id="ssqlotno"/></li>
	      <li class="lie2" >
            <select name="select" id="ssqselect" onchange="getOnedrawalottery('ssq')">
            	<s:iterator value="batchcodeArray" begin="0" end="9">
            		<option value="<s:property value="onebet"/>"><s:property value="onebet"/></option>	
            	</s:iterator>
            </select>
          </li>
	      <li class="lie3" id="ssqtime"><s:property value="opentime.substring(0,10)"/></li>
	      <li class="lie5">
            <div class="kj_haoma" id="ssqhaoma">
            	<ul>
            	<s:if test="winspecialcode==null">
            		<li>　</li>
            	</s:if>
            	<s:else>
            		<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(0,2)"/>&nbsp;</li>
					<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(2,4)"/>&nbsp;</li>
					<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(4,6)"/>&nbsp;</li>
					<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(6,8)"/>&nbsp;</li>
					<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(8,10)"/>&nbsp;</li>
					<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(10,12)"/>&nbsp;</li>
					<li class="kj_lanqiu">&nbsp;<s:property value="winspecialcode"/>&nbsp;</li>
				</s:else>
            	</ul>
            </div>
	      </li>
	      <li class="lie7" id="ssqtotalMoney"><s:property value="rtnMap.betTotalMoney"/></li>
	      <li class="lie6">二&nbsp;四&nbsp;日</li>
	      <li class="lie4" id="ssqlies4"><a href="javascript:aurlclick('F47104','ssq');" title="详情"><img class='xiangqingtu' src='/images/xiangqingtu.gif' /></a></li>
	      <li class="lie4"><a href="http://tbzs.ruyicai.com/cjwssq/index.php" title="图表"><img class="kjtubiao" src="/images/kjtubiao.gif" /></a></li>
	      <li class="lie3"><a href="/shuangseqiu.html" title="立即购买" class="liebtn">立即购买</a></li>
	      </ul>
</s:if> 
<s:if test='id.lotno=="T01001"'>   	   
	    <ul class="kj_hangtwo" id="dlt"> 
          <li class="lie1">体彩</li>
	      <li class="lie8"><span onclick="aurlclick('T01001','dlt')" style="cursor: pointer">超级大乐透</span><input type="hidden" value="T01001" id="dltlotno"/></li>
	      <li class="lie2">
            <select name="select2" id="dltselect" onchange="getOnedrawalottery('dlt')">
            	<s:iterator value="batchcodeArray" begin="0" end="9">
            		<option value="<s:property value="onebet"/>"><s:property value="onebet"/></option>	
            	</s:iterator>
            </select>
          </li>
	      <li class="lie3" id="dlttime"><s:property value="opentime.substring(0,10)"/></li>
	      <li class="lie5">
            <div class="kj_haoma" id="dlthaoma">
              <ul>
              <s:if test="winspecialcode==null">
            		<li>　</li>
            	</s:if>
            	<s:else>
              	<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(0,2)"/>&nbsp;</li>
				<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(2,4)"/>&nbsp;</li>
				<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(4,6)"/>&nbsp;</li>
				<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(6,8)"/>&nbsp;</li>
				<li class="kj_hongqiu">&nbsp;<s:property value="winbasecode.substring(8,10)"/>&nbsp;</li>
				<li class="kj_lanqiu">&nbsp;<s:property value="winbasecode.substring(11,13)"/>&nbsp;</li>
				<li class="kj_lanqiu">&nbsp;<s:property value="winbasecode.substring(13,15)"/>&nbsp;</li>
				</s:else>
              </ul>
            </div>
	        </li>
	      <li class="lie7"><s:property value="rtnMap.betTotalMoney.split('；')[0]"/></li>
	      <li class="lie6">一&nbsp;三&nbsp;六</li>
	      <li class="lie4" id="dltlies4"><a href="javascript:aurlclick('T01001','dlt');" title="详情"><img class='xiangqingtu' src='/images/xiangqingtu.gif'/></a></li>
	      <li class="lie4"><a href="http://tbzs.ruyicai.com/cjwdlt/index.php" title="图表"><img class="kjtubiao" src="/images/kjtubiao.gif" /></a></li>
	      <li class="lie3"><a href="/daletou.html" title="立即购买" class="liebtn">立即购买</a></li>
	      </ul>
</s:if>
	    </s:iterator>
	</div>

 
 