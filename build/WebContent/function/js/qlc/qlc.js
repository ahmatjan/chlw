    function btn_2_RandManyClick(n) {
    	if(n==5){
            click+=5;
        }else{
            click++;
        }
		totalLotteryInvest+=n;
		totalMoney+=n*2*Number($("#tb_Multiple").val());
		$("#investField").html(totalMoney);    
		$("#current_money").html(totalMoney);
		$("#final_money").html(parseInt(($("#deposit_amount").html())-($("#current_money").html())));
        var arr = rollJx1(7, 30, 0, 0,true, false, 7, 0, n);
        ClearSelect();
        
        var lotteryListSelect = document.getElementById("list_LotteryNumber");
        for(var i = 0;i < n;i++){
        	var arrRed="";
        	var arr1 = arr[i];
            var lottery = arr1.join(' ');
            for(var j=0;j<arr1.length;j++){
	            if(arr1[j].substring(0,1)=="0"){
	            	arrRed+=arr1[j].substring(1,2)+",";
	            }else{
	            	arrRed+=arr1[j]+",";
	            }  
            }
            var lotteryNumber="";
            var controlRed=arrRed.lastIndexOf(",");
            var red=arrRed.substring(0,controlRed);
            lotteryNumber+=red+"^";
            
            var lotteryView = '[普通]' + lottery + ' [1注，共2元]';
            var opt = new Option(lotteryView,lotteryNumber);
            var frontLot = lottery;
            opt.setAttribute('allLot',frontLot);
            opt.setAttribute('backLot',lotteryNumber);
        	opt.setAttribute('wangFang',"00");
        	opt.setAttribute('zhushu',"1");
        	opt.setAttribute('money',2);
			opt.setAttribute('delMoney', 2);
			
			lotteryListSelect.options.add(opt); 
            $("#lab_Num").html(totalLotteryInvest);
        }  
    }
	

function updateMultipleTotalMoney(){
	var zhuShu=document.getElementById("lab_Num").innerHTML;
	var qlc_changeMoney=parseInt(2*zhuShu);
	initMultiple=Number($("#tb_Multiple").val());	
	totalMoney=parseInt(qlc_changeMoney*initMultiple);
	$("#investField").html(totalMoney);
	$("#current_money").html(totalMoney);
	$("#final_money").html(parseInt(($("#deposit_amount").html())-($("#current_money").html())));
}
function change_playType(){
	var commonType=document.getElementById("commonType");//普通
	var danTuoType=document.getElementById("danTuoType");//胆拖
    if(commonType.checked){
    	document.getElementById("commonDIV").style.display="block";
		document.getElementById("tuoMaDIV").style.display="none";
    }else{
		document.getElementById("commonDIV").style.display="none";
		document.getElementById("tuoMaDIV").style.display="block";
    }
}
function ClearSelect() {
    for (var i = 1; i <= 30; i++)
        SetBallState("r", GetBallNum(i), false);
}
function rollJx1(minRed, redCount, minBlue, blueCount, sort, order, redLottery,
		blueLottery, lotteryCount) {
	var redZero = minRed == 0 ? 1 : 0;
	var blueZero = minBlue == 0 ? 1 : 0;
	var redTable = '';
	var blueTable = '';
	var bigArray = new Array();
	for ( var a = 0; a < lotteryCount; a++) {
		redTable = GetBallNum(GetRandNumber(redCount) - redZero);
		for ( var i = 1; redCount > 0 && i < redLottery; i++) {
			var temp = GetBallNum(GetRandNumber(redCount) - redZero);
			while (!order && redTable.indexOf(temp) >= 0)
				temp = GetBallNum(GetRandNumber(redCount) - redZero);
			redTable += '|' + temp;
		}

		blueTable = GetBallNum(GetRandNumber(blueCount) - blueZero);
		for ( var i = 1; blueCount > 0 && i < blueLottery; i++) {
			var temp = GetBallNum(GetRandNumber(blueCount)
					- blueZero);
			while (!order && blueTable.indexOf(temp) >= 0)
				temp = GetBallNum(GetRandNumber(blueCount)
						- blueZero);
			blueTable += '|' + temp;
		}

		var redArray = redTable.split('|');
		var blueArray = blueTable.split('|');
		redArray.sort();
		blueArray.sort();
		bigArray.push(redArray);
		if (blueCount > 0)
			bigArray.push(blueArray);
	}

	return bigArray;
}
