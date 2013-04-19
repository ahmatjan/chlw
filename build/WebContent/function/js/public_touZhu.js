var totalMoney=0;
var totalLotteryInvest=0;
var click=0;
var betcode="";
function btn_ClearSelectClick() {	
	if ($("#list_LotteryNumber option").length ==0 ) {
		alert("您还没有输入投注内容。");
		return true;
	}
	if ($("#list_LotteryNumber option:selected").length ==0) {
		alert("请单击选中要删除的投注内容。");
		return true;
	}
	var selectLot=$("#list_LotteryNumber>option:selected").get(0).text;//选中框框里面的注数
	
	var a=selectLot.lastIndexOf(",");
    var b=selectLot.substring(0,a+2);
	var c=b.lastIndexOf("]");
	var delLot=b.substring(c+1,c.length);
	
	totalLotteryInvest-=Number($("#list_LotteryNumber>option:selected").get(0).getAttribute("delMoney"))/2;
	totalMoney-=Number($("#list_LotteryNumber>option:selected").get(0).getAttribute("delMoney"))*Number($("#tb_Multiple").val()); 	
	
	$("#investField").html(totalMoney);	
	$("#current_money").html(totalMoney);	
	$("#final_money").html(parseInt(($("#deposit_amount").html())-($("#current_money").html())));
	if($("#list_LotteryNumber option").length==1){
		totalMoney=0;
		totalLotteryInvest=0;
		$("#investField").html(totalMoney);
		$("#current_money").html(totalMoney);
		$("#final_money").html(parseInt(($("#deposit_amount").html())-($("#current_money").html())));
		$("#tb_Multiple").val(1);
	}
	
	$("option:selected", $("#list_LotteryNumber")).remove();
	$("#lab_Num").html(parseInt(totalLotteryInvest)); 
	//ClearSelect();	 
}

function btn_ClearClick() {
	$("option", $("#list_LotteryNumber")).remove();
	totalMoney=0;
	totalLotteryInvest=0;
	$("#lab_Num").html(0);
	$("#investField").html(0);	
	$("#current_money").html(0);	
	$("#final_money").html(parseInt(($("#deposit_amount").html())-($("#current_money").html())));
	$("#tb_Multiple").val(1);
	//ClearSelect(); 
}
function touzhu(){
	
	var listLottery=document.getElementById("list_LotteryNumber");
//	var touzhu_money=document.getElementById("investField").innerHTML;
//	alert(touzhu_money);
	if($("#list_LotteryNumber option").length ==0){
			alert("请选择投注注码！");
			return false;
	}
	var betcode="";
	for(var i=0;i<listLottery.options.length;i++){
		betcode+=listLottery.options[i].value;
	}
	var caiZhong=$("#caiZhong").val();
	var jsonString;
	if(caiZhong=="ssq"){
		jsonString="{betcode:\""+betcode+"\",lotno:\""+"F47104"+"\"}";
		$("#lotNo").val("F47104");
	}else if(caiZhong=="3D"){
		jsonString="{betcode:\""+betcode+"\",lotno:\""+"F47103"+"\"}";
		$("#lotNo").val("F47103");
	}else if(caiZhong=="qlc"){
		jsonString="{betcode:\""+betcode+"\",lotno:\""+"F47102"+"\"}";
		$("#lotNo").val("F47102");
	}else if(caiZhong=="pls"){
		jsonString="{betcode:\""+betcode+"\",lotno:\""+"T01002"+"\"}";
		$("#lotNo").val("T01002");
	}else if(caiZhong=="dlt"){
		$("#lotNo").val("T01001");
		jsonString="{betcode:\""+betcode+"\",lotno:\""+"T01001"+"\"}";
	}
	alert($("#lotNo").val()+"ssssssssssssssssssss");
	if(($("#deposit_amount").html())<($("#current_money").html())){
		if(confirm("抱歉，您的账户余额已不足！请您充值。。。")){
			location.href="/rules/user.html?key=4"; 
		}
	}else{
		$("#jsonString").val(jsonString);
		
		
	  	document.getElementById("form1").submit();
	}
  }
