//初始化导航方法 
function init() {
	if (!document.getElementById || !document.getElementsByTagName) {
		retun;
	}
	var arrayDiv = $("#levelmenu");
	if (!arrayDiv) {
		return;
	}
	var divObj = document.getElementsByTagName("div");
	var length = divObj.length;
	var agreeDiv = new Array();
	for ( var i = 0; i < length; i++) {
		if (divObj[i].className.indexOf("unit") >= 0) {
			agreeDiv.push(divObj[i]);
			divObj[i].onclick = function(event) {
				showCurrentMenu(agreeDiv, this, event);
			}
		}
	}
}
function showCurrentMenu(agreeDiv, currentObj, event) {
	if (!event) {
		event = window.event;
	}
	var eventObj = event.srcElement ? event.srcElement : event.target;

	var length = agreeDiv.length;
	for ( var i = 0; i < length; i++) {
		if (eventObj.parentNode == agreeDiv[i] || eventObj.nodeName != "H5") {
			continue;
		}
		agreeDiv[i].className = "unit";
	}
	if (eventObj.nodeName == "H5") {
		if (eventObj.parentNode.className == "unit") {
			eventObj.parentNode.className = "unit current";
		} else {
			eventObj.parentNode.className = "unit";
		}
	}
}
init();