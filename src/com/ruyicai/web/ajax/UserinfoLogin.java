package com.ruyicai.web.ajax;


import net.sf.json.JSONObject;

import org.apache.log4j.Logger;

import com.jrt.invokeLot.lot.bean.Tuserinfo;
import com.jrt.invokeLot.service.JSonResultService;
import com.jrt.invokeLot.util.LotErrorCode;
import com.ruyicai.util.BaseAction;
import com.ruyicai.util.MessageUtil;

/**
 * 
 * @classname:   TuserionfAjax
 * @description: 使用dwr执行ajax类
 * @author:      Administrator
 * @date:        2010-11-22 
 *
 */
@SuppressWarnings("serial")
public class UserinfoLogin extends BaseAction {
	private JSonResultService resultService = new JSonResultService();
	private Logger logger = Logger.getLogger(UserinfoLogin.class);
	private Tuserinfo tuserinfo = new Tuserinfo();
	
	private JSONObject jsonRoot = new JSONObject();
	public JSONObject getJsonRoot() {
	   return jsonRoot;
	 }
	public void setJsonRoot(JSONObject jsonRoot) {
	   this.jsonRoot = jsonRoot;
	 }
    	
/**
 * 
 * @Title:  ajaxLogin
 * @Description: 实现ajax登录
 * @param: 
 * @return:  
 * @exception:
 */
	public String ajaxLogin(String mobile_code,String password) {
		try {
			//1.调用jrtLot执行登录
			jsonRoot.put("mobile_code", tuserinfo.getMOBILEID());
			jsonRoot.put("password", tuserinfo.getPASSWORD());
			
			JSONObject obj = resultService.getAllJSonReuslt(jsonRoot, jsonRoot, "", 0, "user.do", "login");
			if(obj!=null && LotErrorCode.OK.equals(obj.getString("error_code"))){
				//2.得到jrtLot的返回码判断
				String re = obj.getString("value");
				JSONObject objValue = JSONObject.fromObject(re);
				if(objValue!=null){
					if( LotErrorCode.DLOK.equals(objValue.getString("error_code"))){
					     return MessageUtil.TIAW_login_Success;
					}else if(LotErrorCode.WDL.equals(objValue.getString("error_code"))){
						return MessageUtil.TIAW_login_Fail;
					}
				}
			}
		} catch (Exception e) {
			logger.error("执行登录出异常Exception:"+e.toString());
//			e.printStackTrace();
			
		}
		return null;
	}
	

	
	


}
