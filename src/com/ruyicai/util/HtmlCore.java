package com.ruyicai.util;

import org.apache.log4j.Logger;

import com.jrt.betcodeResolve.util.Constant;

/**
 * 抓去外站数据的工具类
 * @author 鞠牧
 *
 */
public class HtmlCore {
	
	private static Logger logger = Logger.getLogger(HtmlCore.class);

//	/**
//	 * 去掉
//	 * 调用jrtcms项目下的开奖信息
//	 * @param lotno 彩种
//	 * @param batchcode 期号
//	 * @return json 取到的值
//	 */
//	public static JSONObject getDrawalottery(String lotno,String batchcode){
//		IHttp http = new IHttp();
//		String url = ResourceBundleUtil.LINKSMSCOUNTURL+"/htmlCodeAction!selectDrawalottery";
//		JSONObject para = new JSONObject();
//		para.put("lotno", lotno);
//		para.put("batchcode", batchcode);
//		// 调用接口发送到后台
//		String re = http.getViaHttpConnection(url +"?jsonString=" + URLEncoder.encode(para.toString()));	
//		
////		System.out.println(url +"?jsonString=" + URLEncoder.encode(para.toString()));
//		
//		JSONObject obj = null;
//		if (re == null || re.equals("")){
//			obj = JSONObject.fromObject("{error_code:000047}");
//		}else{
//			obj = JSONObject.fromObject(re);
//		}
//		
//		return obj;
//	}
	
	/**
	 * 
	 * 获取jrtcms项目中的彩种名称
	 * @param lotno
	 * @return
	 */
	public static String getJrtcmsLotno(String lotno){
		if(lotno.equals(Constant.SSQ) || lotno.equals(Constant.SSQ_DM)){
			lotno="ssq";
		}else if(lotno.equals(Constant.SD) || lotno.equals(Constant.SD_DM)){
			lotno="sd";
		}else if(lotno.equals(Constant.QLC) || lotno.equals(Constant.QLC_DM)){
			lotno="qlc";
		}else if(lotno.equals(Constant.PLS) || lotno.equals(Constant.PLS_DM)){
			lotno="pls";
		}else if(lotno.equals(Constant.PLW) || lotno.equals(Constant.PLW_DM)){
			lotno="plw";
		}else if(lotno.equals(Constant.DLT) || lotno.equals(Constant.DLT_DM)){
			lotno="dlt";
		}else if(lotno.equals(Constant.QXC) || lotno.equals(Constant.QXC_DM)){
			lotno="qxc";
		}else if(lotno.equals(Constant.EEXW) ){
			lotno="eexw";
		}
		return lotno;
	}
//	/**
//	 * 
//	 * 获取从jrtcms项目中传过来的彩种名称 转化成chlw需要的
//	 * @param lotno
//	 * @return
//	 */
//	public static String getLotnoFromJrtcms(String lotno){
//		if(lotno.equals("ssq") ){
//			lotno=Constant.SSQ;
//		}else if(lotno.equals("sd")){
//			lotno=Constant.SD;
//		}else if(lotno.equals("qlc") ){
//			lotno=Constant.QLC;
//		}else if(lotno.equals("pls")){
//			lotno=Constant.PLS;
//		}else if(lotno.equals("plw")){
//			lotno=Constant.PLW;
//		}else if(lotno.equals("dlt")){
//			lotno=Constant.DLT;
//		}else if(lotno.equals("qxc")){
//			lotno=Constant.QXC;
//		}
//		return lotno;
//	}
//	

}
