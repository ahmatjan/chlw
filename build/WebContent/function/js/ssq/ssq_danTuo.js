function danTuo_selectBall(BallColor, BallNum, BallType) {
	var Selected = danTuo_getBallState(BallColor, BallNum, BallType);
	
	if (Selected) {
		ssq_danTuo_setBallState(BallColor, BallNum, false, BallType);
		danTuo_checkFull();
		return;
	}
	ssq_danTuo_setBallState(BallColor, BallNum, true, BallType);
	if(BallColor=="r"){
		if(BallType=="danMa"){
			ssq_danTuo_setBallState(BallColor, BallNum, false, "tuoMa");
		}else{
			ssq_danTuo_setBallState(BallColor, BallNum, false, "danMa");
		}
	}
	danTuo_checkFull(); 
	return;
}
function danTuo_getBallState(BallColor, BallNum, BallType) {
	var isSelectedAttr;
	if (BallType != "") {
		isSelectedAttr = document.getElementById(
				"td_" + BallColor + "_" + BallNum + "_" + BallType)
				.getAttribute('isselected');
	} else {
		isSelectedAttr = document.getElementById(
				"td_" + BallColor + "_" + BallNum+"_").getAttribute('isselected');
	}
	var isSelected = isSelectedAttr == 'true' ? true : false;

	return isSelected;
}
function ssq_danTuo_setBallState(BallColor, BallNum, SelectState, BallType) {
		var ball = document.getElementById("td_" + BallColor + "_" + BallNum + "_" + BallType);
		if (SelectState) {
			if (BallColor == 'r' && (BallType == 'danMa' || BallType == 'tuoMa')) {
				ball.className = 'ball_num_r';
			}
		    if (BallColor == 'b' && BallType == "") {
				ball.className = 'ball_num_b';
		    }
		    ball.setAttribute('isselected', 'true');
		} else {
			ball.className = 'ball_num';
			ball.setAttribute('isselected', 'false');
		}
	}
		
function danTuo_checkFull() {
	var invest = getZhuShu();
	var p = invest * 2;
	document.getElementById('change_zhuShu_money').innerHTML = invest + '注，'
			+ p.toFixed() + '元。';
}
function jiec(a){
	var b=1;
	for (var i = 1; i <= a; i++) {
		b = b*i;
	}
	return b;
}
function zuhe(m,n){
	var a = 0;
	a = jiec(n)/((jiec(n-m)*(jiec(m))));
	return a;
}
function getZhuShu()
{
	var firstRedCount = 0; 
	var secondRedCount = 0; 
	var BlueCount = 0;
	var InvestNum = 1;
	for ( var i = 1; i <= 33; i++) {
		if (danTuo_getBallState("r", danTuo_getBallNum(i), 'danMa'))
			firstRedCount++;
	}
	for ( var i = 1; i <= 33; i++) {
		if (danTuo_getBallState("r", danTuo_getBallNum(i), 'tuoMa'))
			secondRedCount++;
	}
	for ( var i = 1; i <= 16; i++) {
		if (danTuo_getBallState("b", danTuo_getBallNum(i),''))
			BlueCount++;
	}
	if (firstRedCount < 1 || secondRedCount < 2 ||firstRedCount>5 ||secondRedCount>20
			|| (firstRedCount + secondRedCount) < 7 ||(firstRedCount + secondRedCount) >25 || BlueCount < 1){
		return 0;
	}
	if ((firstRedCount + secondRedCount) < 7
			|| (firstRedCount + secondRedCount) > 25) {
		return BlueCount;
	}
	
	InvestNum=zuhe(6-firstRedCount,secondRedCount)* zuhe(1,BlueCount);
	return InvestNum;
}
function danTuo_getBallNum(i) {
	var BallNum = "" + i;
	if (BallNum.length == 1)
		BallNum = "0" + BallNum;
	return BallNum;
}
function getCheck_ballNumber() {
	var ssq_danTuo_code="";
	var LotteryNumber = "";
	var danMa_BallNum;
	var tuoMa_BallNum;
	var blue_BallNum;
	var ball1;
	var red1;
	var red2;
	var blue;
	var blue1;
	for ( var i = 1; i <= 33; i++) {
		danMa_BallNum = danTuo_getBallNum(i);
		if (danTuo_getBallState('r', danMa_BallNum,'danMa')){
			LotteryNumber += (danMa_BallNum + " ");
			if(danMa_BallNum.substring(0,1)=="0"){
				ssq_danTuo_code += danMa_BallNum.substring(1,2)+",";
	           }else{
	            ssq_danTuo_code += danMa_BallNum+",";
	           }
		}
	}
	LotteryNumber += "* ";
	ssq_danTuo_code+="*";
	for ( var i = 1; i <= 33; i++) {
		tuoMa_BallNum = danTuo_getBallNum(i);
		if (danTuo_getBallState('r', tuoMa_BallNum,'tuoMa')){
			LotteryNumber += (tuoMa_BallNum + " ");
			if(tuoMa_BallNum.substring(0,1)=="0"){
				ssq_danTuo_code += tuoMa_BallNum.substring(1,2)+",";
             }else{
            	ssq_danTuo_code += tuoMa_BallNum+",";
             }
		}
	}
	LotteryNumber += "~ ";
	ssq_danTuo_code+="~";
	for ( var i = 1; i <= 16; i++) {
		blue_BallNum = danTuo_getBallNum(i);
		if (danTuo_getBallState("b", blue_BallNum,'')){
			LotteryNumber += (blue_BallNum + " ");
			if(blue_BallNum.substring(0,1)=="0"){
				ssq_danTuo_code += blue_BallNum.substring(1,2)+",";
            }else{
            	ssq_danTuo_code += blue_BallNum+",";
            }
		}
		
		ball1=ssq_danTuo_code;
		var conBall1=ball1.lastIndexOf("*");
        red1=ssq_danTuo_code.substring(0,conBall1-1);
		
        var conBall2=ssq_danTuo_code.lastIndexOf("*");
        var conBall3=ssq_danTuo_code.lastIndexOf("~");
        red2=ssq_danTuo_code.substring(conBall2,conBall3-1);
       
        var conBlue1=ssq_danTuo_code.lastIndexOf("~");
        blue1=ssq_danTuo_code.substring(conBlue1,ssq_danTuo_code.length);
        var conBlue=blue1.lastIndexOf(",");
        blue=blue1.substring(0,conBlue);
	}
	ssq_danTuo_code=red1+red2+blue+"^";
	return ssq_danTuo_code;
}
function getFrontLottery() {
	var LotteryNumber = "";
	var danMa_BallNum;
	var tuoMa_BallNum;
	var blue_BallNum;
	for ( var i = 1; i <= 33; i++) {
		danMa_BallNum = danTuo_getBallNum(i);
		if (danTuo_getBallState('r', danMa_BallNum,'danMa')){
			LotteryNumber += (danMa_BallNum + " ");
		}
	}
	LotteryNumber += "* ";
	for ( var i = 1; i <= 33; i++) {
		tuoMa_BallNum = danTuo_getBallNum(i);
		if (danTuo_getBallState('r', tuoMa_BallNum,'tuoMa')){
			LotteryNumber += (tuoMa_BallNum + " ");
		}
	}
	LotteryNumber += "~ ";
	for ( var i = 1; i <= 16; i++) {
		blue_BallNum = danTuo_getBallNum(i);
		if (danTuo_getBallState("b", blue_BallNum,'')){
			LotteryNumber += (blue_BallNum + " ");
		}
	}
	return LotteryNumber;
}
function ClearCheck() {
	for ( var i = 1; i <= 33; i++)
		ssq_danTuo_setBallState("r", danTuo_getBallNum(i), false,"danMa");
	for ( var i = 1; i <= 33; i++)
		ssq_danTuo_setBallState("r", danTuo_getBallNum(i), false,"tuoMa");
	for ( var i = 1; i <= 16; i++)
		ssq_danTuo_setBallState("b", danTuo_getBallNum(i), false,"");
	document.getElementById('change_zhuShu_money').innerHTML="0注，0元。";
}
function addDanTuo() {
	 var firstRedCount = 0;
	 var secondRedCount = 0;
	 var BlueCount = 0;
	 for ( var i = 1; i <= 33; i++) {
	 	if (danTuo_getBallState("r", danTuo_getBallNum(i), 'danMa'))
	 		firstRedCount++;
	 }
	 for ( var i = 1; i <= 33; i++) {
	 	if (danTuo_getBallState("r", danTuo_getBallNum(i), 'tuoMa'))
	 		secondRedCount++;
	 }

	 for ( var i = 1; i <= 16; i++) {
	 	if (danTuo_getBallState("b", danTuo_getBallNum(i),''))
	 		BlueCount++;
	 }
	 if(firstRedCount<1 || firstRedCount>5){
		alert("投注提示：\n胆码：至少选择1个，最多5个");
		return false;
	}
	if(secondRedCount<2 || secondRedCount>20){
		alert("投注提示:\n托码：至少选择2个，最多20个");
		return false;
	}
	if((firstRedCount+secondRedCount)<7 ||(firstRedCount+secondRedCount)>25 ){
		alert("投注提示:\n胆码加拖码总数不能小于7个红球、不能大于25个红球");
		return false;
	}
	if(BlueCount<1){
		alert("投注提示:\n至少选择1个蓝球");
		return false;
	}
	var lotteryListSelect = document.getElementById("list_LotteryNumber");
	var lotteryNumber=getCheck_ballNumber();//后台的串
	var zhuShu = getZhuShu();
	var lotteryView = getFrontLottery();//前台的窜
	var frontLot=lotteryView;
	if (zhuShu > 1) {
		lotteryView = '[胆拖] ' + lotteryView + ' [' + zhuShu + '注，共' + 2
				* zhuShu + '元]';
	}
	totalMoney += 2 * zhuShu;
	var opt = new Option(lotteryView,lotteryNumber);
	opt.setAttribute('allLot',frontLot);
	opt.setAttribute('backLot',lotteryNumber);
	opt.setAttribute('wangFang',"10");
	opt.setAttribute('zhushu',zhuShu);
	opt.setAttribute('money',2 * zhuShu);
	opt.setAttribute('delMoney', 2 * zhuShu);
	lotteryListSelect.options.add(opt);
	ClearCheck();
	
	var multiple=(Number($("#tb_Multiple").val()));
    var check_money=parseInt(2 * zhuShu);
    var partial_money=document.getElementById("investField").innerHTML;
    totalMoney=parseInt((check_money*multiple)+partial_money*1);
	$("#investField").html(totalMoney);
	$("#current_money").html(totalMoney);
	$("#final_money").html(parseInt(($("#deposit_amount").html())-($("#current_money").html())));
	totalLotteryInvest += zhuShu;
	$("#lab_Num").html(totalLotteryInvest);
	return true;
}
