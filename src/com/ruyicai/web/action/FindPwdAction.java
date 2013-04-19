package com.ruyicai.web.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;

import com.jrt.invokeLot.lot.bean.Tuserinfo;
import com.jrt.invokeLot.util.JSONReslutUtil;
import com.jrt.invokeLot.util.LotErrorCode;
import com.jrt.invokeLot.util.URLEncoder;
import com.ruyicai.util.BaseAction;
import com.ruyicai.util.CommonUtil;
import com.ruyicai.util.MessageUtil;
import com.ruyicai.util.NameUtil;
import com.ruyicai.util.ResourceBundleUtil;
import com.ruyicai.util.UtilEmail;
import com.ruyicai.util.UtilGetEmailUrl;
import com.ruyicai.util.MD5.PaySign;

/**
 * 用户找回密码 FindPwdAction
 * @author ShangTao
 *
 */


@SuppressWarnings("serial")
public class FindPwdAction extends BaseAction {
	private Logger logger = Logger.getLogger(FindPwdAction.class);
	private String phone;

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public FindPwdAction() {
		super();
	}

	private Tuserinfo tuserinfo = new Tuserinfo();// 用户
//	private ComplementBan complementBan = new ComplementBan();// 修改邮箱
//	private JSONObject jsonResult = new JSONObject();

	public Tuserinfo getTuserinfo() {
		return tuserinfo;
	}

	public void setTuserinfo(Tuserinfo tuserinfo) {
		this.tuserinfo = tuserinfo;
	}

	public static final String INTERFACE_KEY = "ruyicaiwebgood";
	// 接口交互密钥
	public static final String INTERFACE_OK = "0";
	// 接口调用成功
	public static final String INTERFACE_STATE_NO_PROPERTY = "1";
	// 参数不正确
	public static final String INTERFACE_STATE_NO_MD5 = "2";
	// 验证MD5校验失败
	public static final String INTERFACE_ERROR = "500";
	// 接口调用发生异常
	public static final String INTERFACE_TYPE_SMS = "001";

	// 短信接口类型代码
//-----------------------------------如意彩找回密码-------------------------------------------
	/***
	 * @Title: ryc_FindPwdWays
	 * @Description: 找回密码页
	 * @return: 返回到找回密码选择页面
	 * @exception:
	 * 
	 */
	
	@SuppressWarnings("finally")
	public  void ryc_FindPwdWays() throws IOException{
		response.setCharacterEncoding("utf-8");
		//跳转字符串
		String gotoValue="";
		
		//获取页面的验证码
		String rank = request.getParameter("pssRank")==null?"":request.getParameter("pssRank");
		//获取 页面的用户名
		String userName=request.getParameter("userName")==null?"":request.getParameter("userName");
		//获取session中的验证码
		String rand = String.valueOf(request.getSession().getAttribute("rand")==null?"":request.getSession().getAttribute("rand"));
		try {
			if(userName == null || userName.equals("")){
				gotoValue="您尚未输入手机号码，请重新输入！";
				return;
			}
			String rex="^(13[0-9]|15[0-9]|18[0-9])\\d{8}|(\\S)+[@]{1}(\\S)+[.]{1}(\\w)+$";
			Pattern pattern=Pattern.compile(rex);
			Matcher matcher=pattern.matcher(userName);
			if(!matcher.matches()){
				gotoValue="您输入的手机号码格式错误，请重新输入！";
				return;
			}
			
			if(rank!=null && rank.equals(rand)){
				
				//根据用户名查询用户信息
	            JSONObject users = JSONObject.fromObject(CommonUtil.findUserMessage(userName));
	            logger.info("找回密码：ryc_FindPwdWays：用户信息"+users);
	            if(users.isNullObject()||users.get("userName")==""){
	            	//如果根据用户名查不到，使用手机号查询
	            	users = JSONObject.fromObject(
							JSONReslutUtil.getResultMessage(
								ResourceBundleUtil.LINKURL + "/tuserinfoes?json&find=ByMobileid&mobileid=" +userName));
	            	
	            	if(!(users.getString("errorCode").equals(LotErrorCode.NEW_OK))){
		            	request.setAttribute("message", "该用户不存在，请重新输入！");
		            	gotoValue="该用户不存在，请重新输入！";
		            	return;
		            	  
		            }else{
		            	String email = users.getJSONObject("value").getString("email");
		            	String phone = users.getJSONObject("value").getString("mobileid");
		            	String username = users.getJSONObject("value").getString("userName");
						if("null".equals(email)||email==null){
							session.setAttribute("email", "");
						}else{
							session.setAttribute("email", email);
						}
						if("null".equals(phone)||phone==null){
							session.setAttribute("phone", "");
						}else{
							session.setAttribute("phone", phone);
						}
						session.setAttribute("nickname", users.getJSONObject("value").getString("nickname"));
						session.setAttribute("userName", username=="null"?phone:username);
						session.setAttribute("userno", users.getJSONObject("value").getString("userno"));
						logger.info("Method:findpwd," + tuserinfo.toString()
								+ ",手机号码正确！");
						gotoValue = "1";
						return;
		            }
		            	
	           }else{
	            	String email = users.getString("email");
	            	String phone = users.getString("mobileid");
					if("null".equals(email)||email==null){
						session.setAttribute("email", "");
					}else{
						session.setAttribute("email", users.getString("email"));
					}
					if("null".equals(phone)||phone==null){
						session.setAttribute("phone", "");
					}else{
						session.setAttribute("phone", users.getString("mobileid"));
					}
					session.setAttribute("nickname", users.get("nickname"));
					session.setAttribute("userName", users.get("userName"));
					session.setAttribute("userno", users.get("userno"));
					logger.info("Method:findpwd," + tuserinfo.toString()
							+ ",手机号码正确！");
					gotoValue = "1";
					return;
	            }
			}else{
				gotoValue="验证码错误，请重新输入！";
				return;
			}
			
		} catch (Exception e) {
				logger.info("找回密码发生异常！");
				request.setAttribute("message","找回密码发生异常，请联系客服人员！" );
				gotoValue="找回密码发生异常，请联系客服人员！";
				
		}finally{
			PrintWriter out = response.getWriter();
			out.print(gotoValue);
			
		}

	}
	/***
	 * 如意彩找回密码：发送手机短信
	 * @throws IOException 
	 */
	public void ryc_sengmsgByphone() throws IOException{
		response.setCharacterEncoding("utf-8");
		String gotoValue="";
		String phone = String.valueOf(session.getAttribute("phone"));
		String email = String.valueOf(session.getAttribute("email"));
		String username= String.valueOf(session.getAttribute("userName"));
		if(email==null){
			email="";
		}
		
		try {
	       //获取短信验证码
			Random random = new Random();

			// 取随机产生的认证码(4位数字)
			String sRand = "";
			String rands = (String) (request.getSession().getAttribute("rand_ruyicai")==null?"":request.getSession().getAttribute("rand_ruyicai"));
			if ( rands.equals("")) {
				// 取随机产生的认证码(4位数字)
				for (int i = 0; i < 4; i++) {
					String rand = String.valueOf(random.nextInt(10));
					sRand += rand;
				}
				// 将认证码存入SESSION
				session.setAttribute("rand_ruyicai", sRand);
				logger.info("验证码为:" + sRand);
			}else{
				sRand = rands;
				logger.info("验证码为:" + rands);
			}
			// 得到发送到用户的手机短信内容
			Map<String, String> mes = ResourceBundleUtil.FINDMES;
			Set<Map.Entry<String, String>> setRet = mes.entrySet(); 
			Set<String> keySet = mes.keySet();
			
			//得到当前域名
			String str = request.getServerName();
			String retMes = "";
			
			for (String key : keySet) {
				if (mes.containsKey(key)) {//判断这个键是否存在
					for (Map.Entry<String, String> entry : setRet) {
						if(str.indexOf(entry.getKey())>-1){	
							retMes = entry.getValue();	
						}
					}
				}
			}
			retMes = new String(retMes.getBytes("ISO-8859-1"), "utf-8");
			String newMes = retMes.replace("{mes}", sRand);
			logger.debug("得到发送给用户的信息内容是：" + newMes);
			String code = phone + "3gcaipiao";
			String mac = PaySign.EncoderByMd5(code);
			mac = URLEncoder.decode(mac);
			if(mac.indexOf("+")>-1){
				mac= mac.replaceAll("\\+", "_");
			}
			String count = JSONReslutUtil.getResultMessage(
					ResourceBundleUtil.LINKSMSCOUNTURL + "/phoneInfo!create?",
					"phoneCode=" + phone + "&emailCode=" + email + "&Mac="
							+ mac + "&rules=1", "POST");
			int countToInt = 0;
			if (count != null && !"".equals(count)) {
				countToInt = Integer.parseInt(count);
			}
			if (countToInt < 3) {
				// 得到手机发送信息接口的信息
				String md5code = phone + INTERFACE_KEY;
				String md5 = PaySign.EncoderByMd5(md5code);
				if(md5.indexOf("+")>-1){
					md5 = md5.replaceAll("\\+", "_");
				}
				md5 = URLEncoder.encode(md5);
				/*String phoneMessage = JSONReslutUtil.getResultMessage(
						ResourceBundleUtil.SENDURL + "/Interface!sendSms?",
						"mobileIds=" + phone + "&strMsg=" + newMes
								+ "&interfaceType=001&Mac=" + md5, "POST");*/
				JSONObject  phoneMessage = JSONObject.fromObject(JSONReslutUtil.getResultMessage(
						ResourceBundleUtil.LINKSMGURL + "sms/send?",
						"mobileIds=" + phone + "&text=" + URLEncoder.encode(newMes)
								+ "&channelName=", "POST"));
				logger.debug("得到手机接口的信息是：" + phoneMessage);
				if (phoneMessage.getString("errorCode").equals(INTERFACE_OK)) {
					session.setAttribute("phoneMesg", "系统已经向您的手机" + phone
					 + "发送免费的验证短信，请查看短信！");
					session.setAttribute("sendMsgByP", username);
					session.removeAttribute("userName");
					//response.getWriter().print("3G彩票网已经向您的手机" + phone + "发送免费的验证短信，请查看短信！");
					logger.info("系统已经向您的手机发送免费的验证短信，请查看短信！");
					gotoValue = "1";
				} else {
					session.setAttribute("phoneMesg", "用户的手机验证码发送失败！");
					logger.info("用户的手机验证码发送失败！");
					session.setAttribute("sendMsgByP", username);
					session.removeAttribute("userName");
					gotoValue = "1";
				}
			} else {
				session.setAttribute("phoneMesg",
				 "<font color='red'>抱歉 ！每天一个手机号只发送3次短信，已经向该手机号发送3次短信</font>");
				//response.getWriter().print("<font color=\"red\">抱歉 ！每天一个手机号只发送3次短信，已经向该手机号发送3次短信</font>");
				logger.info("抱歉 ！每天一个手机号只发送3次短信，已经向该手机号发送3次短信");
				session.setAttribute("sendMsgByP", username);
				session.removeAttribute("userName");
				gotoValue = "1";
			}

		} catch (Exception e) {
//			logger.info("找回密码发生异常！");
			session.setAttribute("phoneMesg","找回密码发生异常，请联系客服人员！" );
			gotoValue="找回密码发生异常，请联系客服人员！";
			e.printStackTrace();
		}finally{
			PrintWriter out = response.getWriter();
			out.print(gotoValue);
		}
		
	
		
	}
	/***
	 * 验证手机验证码是否正确
	 * @throws IOException
	 */
	public void  ryc_checkPhoneRand() throws IOException{
		response.setCharacterEncoding("utf-8");
		String gotovalue="";
		String rand= request.getParameter("phoneRand")==null?"":request.getParameter("phoneRand");
		String rank =(String) request.getSession().getAttribute("rand_ruyicai");
		//String username =String.valueOf( session.getAttribute("sendMsgByP"));
		try{
		if(rand!=""||rand!=null){
			 if(!rand.equals(rank)){
				 session.setAttribute("phoneMesg", "您输入的验证码错误，请重新输入！");
				 
				 gotovalue="您输入的验证码错误，请重新输入！";
			 }else{
				// session.setAttribute("checkPhoneRand",username);
				// session.removeAttribute("sendMsgByP");
				 gotovalue="1";
			 }
			}else{
				session.setAttribute("phoneMesg", "验证码不能为空，请重新输入！");
				// session.setAttribute("checkPhoneRand",username);
				// session.removeAttribute("sendMsgByP");
				gotovalue="验证码不能为空，请重新输入！";
			}
		
		}catch (Exception e) {
			session.setAttribute("phoneMesg", "找回密码过程发生异常，请联系客服人员！");
			// session.setAttribute("checkPhoneRand",username);
			// session.removeAttribute("sendMsgByP");
			 gotovalue="找回密码过程发生异常，请联系客服人员！";
		}finally{
			
			PrintWriter out = response.getWriter();
			out.print(gotovalue);
		}
		
	}
	/***
	 * 通过手机找回密码重置密码
	 * @throws IOException
	 */
	public void ryc_resetPwdByPhone() throws IOException{
		response.setCharacterEncoding("utf-8");
		String username=String.valueOf(session.getAttribute("checkPhoneRand")==null?"":session.getAttribute("checkPhoneRand"));
		logger.info("=====修改用户密码开始====");
		String govalue="";
		try {
			//获取用户的用户id，用来修改密码	
			//String userno = (String) session.getAttribute("userno");
			Tuserinfo tuserinfo = (Tuserinfo)session.getAttribute("tuserinfo");
			String userno = tuserinfo.getUSERNO();
				if (userno != null) {
					// 2.得到用户输入的密码
					String newPwd = request.getParameter("newpassWord") == null ? ""
							: request.getParameter("newpassWord");
					// 调用新接口更改用户名密码
					String re = JSONReslutUtil.getResultMessage(
							ResourceBundleUtil.LINKURL + "/tuserinfoes/resetPassword?",
							"password=" + newPwd + "&userno=" + userno, "POST");
					JSONObject update = JSONObject.fromObject(re);
					JSONObject updateVal = JSONObject.fromObject(CommonUtil
							.getBackValue("value", update));
	
					logger.info("得到密码修改新接口的返回码"
							+ CommonUtil.getBackValue("errorCode", update));
						if (updateVal != null
								&& CommonUtil.getBackValue("errorCode", update).equals(
										LotErrorCode.NEW_OK)) {
							session.setAttribute("message",
									MessageUtil.TIAW_changePassword_Success);
							session.setAttribute("resetPwd",username);
							session.removeAttribute("checkPhoneRand");
							govalue="1";
		
						}else{
							session.setAttribute("message","修改密码发生错误，请联系客服人员");
							session.setAttribute("resetPwd",username);
							session.removeAttribute("checkPhoneRand");
							govalue="修改密码发生错误，请联系客服人员";
							
						}
				} else {
					session.setAttribute("message", "该用户不存在！");
					session.setAttribute("resetPwd",username);
					session.removeAttribute("checkPhoneRand");
					govalue="该用户不存在！";
				}

		} catch (Exception e) {
			
			logger.error("修改用户密码出异常Exception(Modify user password abnormal):" + e.toString());
			session.setAttribute("resetPwd",username);
			session.removeAttribute("checkPhoneRand");
			govalue="修改密码发生异常，请联系客服人员！";
		}finally{
			if("1".equals(govalue)){
				session.removeAttribute("phoneMesg");	
				session.removeAttribute("phone");	
				session.removeAttribute("nickname");		
				session.removeAttribute("userno");	
				session.removeAttribute("message");		
			}
			PrintWriter out = response.getWriter();
			out.print(govalue);
			
		}
		}
	
	/***
	 * 如意彩——找回密码——发送邮件
	 * @throws IOException
	 */
	public void ryc_sendMessageByEmail() throws IOException{
		response.setCharacterEncoding("utf-8");
		String gotoValue = ""; // 用户登录后要跳转的地址，如果中间出现错误，则跳转到错误的地址。
		// 得到用户信息
		try {
			logger.info("====如意彩邮箱找回密码开始====");
			//获取用户的手机和邮箱
			String phone = (String) session.getAttribute("phone");
			String email = (String) session.getAttribute("email");
			//String email="1047985204@qq.com";
			
			//添加链接的唯一标识
			String check = String.valueOf(new Date().getTime());
			String code = phone + check + "3gcaipiao";
			String mac = PaySign.EncoderByMd5(code);
			mac = URLEncoder.encode(mac);
			String emailcode = email + "3gcaipiao";
			String eMailmac = PaySign.EncoderByMd5(emailcode);
			eMailmac = URLEncoder.encode(eMailmac);
			emailcode = URLEncoder.encode(emailcode);
			//获取用户的昵称
			String nickname = (String) session.getAttribute("nickname");
			//查看用户发送邮件的次数
			String count = JSONReslutUtil.getResultMessage(
					ResourceBundleUtil.LINKSMSCOUNTURL
							+ "/phoneInfo!createEmail?", "emailCode=" + email
							+ "&phoneCode=" + phone + "&Mac=" + eMailmac
							+ "&rules=1", "POST");
			int countToInt = 0;
			if (count != null && !"".equals(count)) {
				countToInt = Integer.parseInt(count);
			}
			if (countToInt < 3) {
				// 得到邮箱发送信息接口的信息
				session.setAttribute("emailMsg", "系统已经向您的邮箱发送免费的邮件，请及时查看邮箱");
				logger.info("系统已经向您的邮箱发送免费的邮件，请及时查看邮箱！");
				// 验证邮箱
				String emailUrl = UtilGetEmailUrl.getEmailUrl( email.split("@")[1]);
				session.setAttribute("emailUrl", emailUrl);
				// String url = "http:"
				// +
				// "//test.3gcaipiao.com/chlw/3gfunction/3g_findtuser2!callBacksendEmailCheck"
				// + "?mac=" + mac + "&userid=" + phone + "&email="
				// + email + "&check=" + check;
				//获取链接地址
				String url = ResourceBundleUtil.FINFPEDBYEMAIL
						.replace("{mac}", mac).replace("{phone}", phone)
						.replace("{email}", email).replace("{check}", check);
				String emailmessage = MessageUtil.RCY_EMAILSESSAGE.replace(
						"{nickname}", nickname).replace("{url}", url);

				String[] emails = { email };
				UtilEmail.utilSend(emails, "如意彩找回密码", emailmessage);
				session.setAttribute("email", email);
				session.setAttribute("sengMsgByE", "发送邮件！");
				session.removeAttribute("userName");
				gotoValue = "1";
			} else {
				logger.info("抱歉 ！每天一个邮箱号只发送3次信息，已经向该邮箱号发送3次邮件");
				session.setAttribute("emailMsg","<font color=\"red\">抱歉 ！每天一个邮箱号只发送3次信息，已经向该邮箱号发送3次邮件</font>" );
				session.setAttribute("sengMsgByE", "发送邮件！");
				session.setAttribute("email", email);
				session.removeAttribute("userName");
				gotoValue = "1";
			}
		} catch (Exception e) {
			logger.error("找回密码发邮件产生异常 (Forgot your password sent an exception message):"+e.toString());
			session.setAttribute("sengMsgByE", "发送邮件！");
			session.removeAttribute("userName");
			gotoValue = "找回密码发邮件产生异常,请联系客服人员！";
			
		}finally{
			
			PrintWriter out = response.getWriter();
			out.print(gotoValue);
		}
		
	}
	/**
	 * 新找回密码发送邮件功能
	 * @throws IOException
	 */
	public void ryc_sendMessageByEmail_new() throws IOException{
		response.setCharacterEncoding("utf-8");
		String gotoValue = ""; // 用户登录后要跳转的地址，如果中间出现错误，则跳转到错误的地址。
		// 得到用户信息
		try {
			logger.info("====如意彩邮箱找回密码开始====");
			//获取用户的手机和邮箱
			String phone = session.getAttribute("phone")==null?"":session.getAttribute("phone").toString();
			String email = session.getAttribute("findPwd_param").toString();
			
			//添加链接的唯一标识
			String check = String.valueOf(new Date().getTime());
			String code = phone + check + "3gcaipiao";
			String mac = PaySign.EncoderByMd5(code);
			mac = URLEncoder.encode(mac);
			String emailcode = email + "3gcaipiao";
			String eMailmac = PaySign.EncoderByMd5(emailcode);
			eMailmac = URLEncoder.encode(eMailmac);
			emailcode = URLEncoder.encode(emailcode);
			//获取用户的昵称
			Tuserinfo tuserinfo = (Tuserinfo)session.getAttribute("tuserinfo");
			String nickname = NameUtil.getNameUtil(tuserinfo);
			//查看用户发送邮件的次数
			String count = JSONReslutUtil.getResultMessage(
					ResourceBundleUtil.LINKSMSCOUNTURL
							+ "/phoneInfo!createEmail?", "emailCode=" + email
							+ "&phoneCode=" + phone + "&Mac=" + eMailmac
							+ "&rules=1", "POST");
			int countToInt = 0;
			if (count != null && !"".equals(count)) {
				countToInt = Integer.parseInt(count);
			}
			if (countToInt < 3) {
				// 得到邮箱发送信息接口的信息
				session.setAttribute("emailMsg", "系统已经向您的邮箱发送免费的邮件，请及时查看邮箱");
				logger.info("系统已经向您的邮箱发送免费的邮件，请及时查看邮箱！");
				// 验证邮箱
				String emailUrl = UtilGetEmailUrl.getEmailUrl( email.split("@")[1]);
				session.setAttribute("emailUrl", emailUrl);

				//获取链接地址
				String url = ResourceBundleUtil.FINFPEDBYEMAIL
						.replace("{mac}", mac).replace("{phone}", phone)
						.replace("{email}", email).replace("{check}", check);
				String emailmessage = MessageUtil.RCY_EMAILSESSAGE.replace(
						"{nickname}", nickname).replace("{url}", url);

				String[] emails = { email };
				UtilEmail.utilSend(emails, "如意彩找回密码", emailmessage);
				session.setAttribute("email", email);
				//session.setAttribute("sengMsgByE", "发送邮件！");
				//session.removeAttribute("userName");
				gotoValue = "1email";
			} else {
				logger.info("抱歉 ！每天一个邮箱号只发送3次信息，已经向该邮箱号发送3次邮件");
				session.setAttribute("emailMsg","抱歉 ！每天一个邮箱号只发送3次信息，已经向该邮箱号发送3次邮件" );
				//session.setAttribute("sengMsgByE", "发送邮件！");
				session.setAttribute("email", email);
				//session.removeAttribute("userName");
				//gotoValue = "0email";
				gotoValue = "抱歉 ！每天一个邮箱号只发送3次信息，已经向该邮箱号发送3次邮件";
			}
		} catch (Exception e) {
			logger.error("找回密码发邮件产生异常 (Forgot your password sent an exception message):"+e.toString());
			session.setAttribute("sengMsgByE", "发送邮件！");
			session.removeAttribute("userName");
			gotoValue = "找回密码发邮件产生异常,请联系客服人员！";
			
		}finally{
			
			PrintWriter out = response.getWriter();
			out.print(gotoValue);
		}
		
	}
	/**新找回密码发送手机验证码功能
	 * 
	 * @throws IOException
	 */
	public void ryc_sengmsgByphone_new() throws IOException{
		response.setCharacterEncoding("utf-8");
		String gotoValue="";
		String phone = session.getAttribute("findPwd_param").toString();
		String email = String.valueOf(session.getAttribute("email"));
		//String username= String.valueOf(session.getAttribute("userName"));
		if(email==null){
			email="";
		}
		
		try {
	       //获取短信验证码
			Random random = new Random();

			// 取随机产生的认证码(4位数字)
			String sRand = "";
			String rands = (String) (request.getSession().getAttribute("rand_ruyicai")==null?"":request.getSession().getAttribute("rand_ruyicai"));
			if ( rands.equals("")) {
				// 取随机产生的认证码(4位数字)
				for (int i = 0; i < 4; i++) {
					String rand = String.valueOf(random.nextInt(10));
					sRand += rand;
				}
				// 将认证码存入SESSION
				session.setAttribute("rand_ruyicai", sRand);
				logger.info("验证码为:" + sRand);
			}else{
				sRand = rands;
				logger.info("验证码为:" + rands);
			}
			// 得到发送到用户的手机短信内容
			Map<String, String> mes = ResourceBundleUtil.FINDMES;
			Set<Map.Entry<String, String>> setRet = mes.entrySet(); 
			Set<String> keySet = mes.keySet();
			
			//得到当前域名
			String str = request.getServerName();
			String retMes = "";
			
			for (String key : keySet) {
				if (mes.containsKey(key)) {//判断这个键是否存在
					for (Map.Entry<String, String> entry : setRet) {
						if(str.indexOf(entry.getKey())>-1){	
							retMes = entry.getValue();	
						}
					}
				}
			}
			retMes = new String(retMes.getBytes("ISO-8859-1"), "utf-8");
			String newMes = retMes.replace("{mes}", sRand);
			logger.debug("得到发送给用户的信息内容是：" + newMes);
			String code = phone + "3gcaipiao";
			String mac = PaySign.EncoderByMd5(code);
			mac = URLEncoder.decode(mac);
			if(mac.indexOf("+")>-1){
				mac= mac.replaceAll("\\+", "_");
			}
			String count = JSONReslutUtil.getResultMessage(
					ResourceBundleUtil.LINKSMSCOUNTURL + "/phoneInfo!create?",
					"phoneCode=" + phone + "&emailCode=" + email + "&Mac="
							+ mac + "&rules=1", "POST");
			int countToInt = 0;
			if (count != null && !"".equals(count)) {
				countToInt = Integer.parseInt(count);
			}
			if (countToInt < 3) {
				// 得到手机发送信息接口的信息
				String md5code = phone + INTERFACE_KEY;
				String md5 = PaySign.EncoderByMd5(md5code);
				if(md5.indexOf("+")>-1){
					md5 = md5.replaceAll("\\+", "_");
				}
				md5 = URLEncoder.encode(md5);
				JSONObject  phoneMessage = JSONObject.fromObject(JSONReslutUtil.getResultMessage(
						ResourceBundleUtil.LINKSMGURL + "sms/send?",
						"mobileIds=" + phone + "&text=" + URLEncoder.encode(newMes)
								+ "&channelName=", "POST"));
				logger.debug("得到手机接口的信息是：" + phoneMessage);
				if (phoneMessage.getString("errorCode").equals(INTERFACE_OK)) {
					session.setAttribute("phoneMesg", "系统已经向您的手机" + phone
					 + "发送免费的验证短信，请查看短信！");
				//	session.setAttribute("sendMsgByP", username);
					session.removeAttribute("userName");
					logger.info("系统已经向您的手机发送免费的验证短信，请查看短信！");
					gotoValue = "1phone";
				}else{
					session.setAttribute("phoneMesg", "用户的手机验证码发送失败！");
					logger.info("用户的手机验证码发送失败！");
				//	session.setAttribute("sendMsgByP", username);
					session.removeAttribute("userName");
					gotoValue = "用户的手机验证码发送失败！";
				}
			} else {
				session.setAttribute("phoneMesg",
				 "<font color='red'>抱歉 ！每天一个手机号只发送3次短信，已经向该手机号发送3次短信</font>");
				//response.getWriter().print("<font color=\"red\">抱歉 ！每天一个手机号只发送3次短信，已经向该手机号发送3次短信</font>");
				logger.info("抱歉 ！每天一个手机号只发送3次短信，已经向该手机号发送3次短信");
				//session.setAttribute("sendMsgByP", username);
				session.removeAttribute("userName");
				gotoValue = "抱歉 ！每天一个手机号只发送3次短信，已经向该手机号发送3次短信";
			}

		} catch (Exception e) {
//			logger.info("找回密码发生异常！");
			session.setAttribute("phoneMesg","找回密码发生异常，请联系客服人员！" );
			gotoValue="找回密码发生异常，请联系客服人员！";
			e.printStackTrace();
		}finally{
			PrintWriter out = response.getWriter();
			out.print(gotoValue);
		}
		
	
		
	}
	
	/***
	 * 如意彩——找回密码——验证邮件链接有效性
	 * @throws IOException
	 */
	@SuppressWarnings("finally")
	public String rcy_checkEmailLink() throws IOException{
		response.setCharacterEncoding("utf-8");
		String gotoValue = ""; // 用户登录后要跳转的地址，如果中间出现错误，则跳转到错误的地址。
		//获取该用户的用户信息
		String mac = request.getParameter("mac");
		String phone = request.getParameter("userid");
		String email = request.getParameter("email");
		String check = request.getParameter("check");
		String macCode = "";
		String count = "";
		try {
			String code = phone + check + "3gcaipiao";
			macCode = PaySign.EncoderByMd5(code);
			if (macCode.equals(mac)) {
				count = JSONReslutUtil.getResultMessage(
						ResourceBundleUtil.LINKSMSCOUNTURL
								+ "/phoneInfo!getCheck?", "check=" + check,
						"POST");
				if (count.equals("0")) {
					JSONReslutUtil.getResultMessage(
							ResourceBundleUtil.LINKSMSCOUNTURL
									+ "/phoneInfo!createChecked?", "check="
									+ check, "POST");
					if("".equals(phone)||phone==null){
						String  users=JSONReslutUtil.getResultMessage(ResourceBundleUtil.LINKURL + "/tuserinfoes?json&find=ByEmail&email=" + email);
						String userno = JSONObject.fromObject(CommonUtil.getBackValue("value", JSONObject.fromObject(users))).getString("userno");
						session.setAttribute("userno", userno);
					}else{
					JSONObject users = JSONObject
							.fromObject(CommonUtil.getBackValue(
									"value",
									JSONObject.fromObject(JSONReslutUtil
											.getResultMessage(ResourceBundleUtil.LINKURL
													+ "/tuserinfoes?json&find=ByMobileid&mobileid="
													+ phone))));
					session.setAttribute("userno", users.get("userno"));
					
					}
					session.setAttribute("check", check);
					gotoValue = "successEmail";
				} else {
					session.setAttribute("message", "此链接已失效！");
					gotoValue = "formError";
				}

			} else {
				session.setAttribute("message", "此链接非法！");
				gotoValue = "formError";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			return gotoValue; 
			
		}
      }
	/***
	 * 如意彩找回密码-通过邮件修改密码
	 * @throws IOException
	 */
	public void ryc_resetPwdByEmail() throws IOException{
		response.setCharacterEncoding("utf-8");
		logger.info("=====修改用户密码开始====");
		String govalue="";
		try {
			//获取用户的用户id，用来修改密码	
			//String userno = (String) session.getAttribute("userno");
			Tuserinfo tuserinfo = (Tuserinfo)session.getAttribute("tuserinfo");
			String userno = tuserinfo.getUSERNO();
			String check = String.valueOf(session.getAttribute("check"));
			String count = JSONReslutUtil
					.getResultMessage(ResourceBundleUtil.LINKSMSCOUNTURL
							+ "/phoneInfo!getRemark?", "check=" + check, "POST");
			if (count.equals("1")) {
				request.setAttribute("message", "此链接已被使用过,请重新发送邮件");
				govalue = "此链接已被使用过,请重新发送邮件";
				
			}else{
				if (userno != null) {
					// 2.得到用户输入的密码
					String newPwd = request.getParameter("newpassWord") == null ? ""
							: request.getParameter("newpassWord");
					// 调用新接口更改用户名密码
					String re = JSONReslutUtil.getResultMessage(
							ResourceBundleUtil.LINKURL + "/tuserinfoes/resetPassword?",
							"password=" + newPwd + "&userno=" + userno, "POST");
					JSONObject update = JSONObject.fromObject(re);
					JSONObject updateVal = JSONObject.fromObject(CommonUtil
							.getBackValue("value", update));
	
					logger.info("得到密码修改新接口的返回码"
							+ CommonUtil.getBackValue("errorCode", update));
						if (updateVal != null
								&& CommonUtil.getBackValue("errorCode", update).equals(
										LotErrorCode.NEW_OK)) {
							session.setAttribute("message",
									MessageUtil.TIAW_changePassword_Success);
							session.setAttribute("resetPwd", "进入修改密码！");
							govalue="1";
		
						}else{
							session.setAttribute("message","修改密码发生错误，请联系客服人员");
							govalue="修改密码发生错误，请联系客服人员";
							
						}
				} else {
					session.setAttribute("message", "该用户不存在！");
					govalue="该用户不存在！";
				}
			}

		} catch (Exception e) {
			
			logger.error("修改用户密码出异常Exception(Modify user password abnormal):" + e.toString());
			govalue="链接已失效！";
		}finally{
			if("1".equals(govalue)){
				session.removeAttribute("email");	
				session.removeAttribute("nickname");	
				session.removeAttribute("username");	
				session.removeAttribute("userno");	
				session.removeAttribute("message");	
				session.removeAttribute("check");	
				session.removeAttribute("sengMsgBye");	
				session.removeAttribute("emailMsg");		
			}
			PrintWriter out = response.getWriter();
			out.print(govalue);
			
		}
		
		
		
	}
	/**
	 * 更新新闻的点击数
	 * @throws IOException
	 */
	public void updateClickCount() throws IOException{
		response.setCharacterEncoding("utf-8");
		Long  id= Long.valueOf(request.getParameter("id")==""?"0":request.getParameter("id"));
		String count = JSONReslutUtil
		.getResultMessage(ResourceBundleUtil.LINKSMSCOUNTURL
				+ "/phoneInfo!updateClickCount?", "id=" + id, "POST");
		
		
		PrintWriter out = response.getWriter();
		out.print(count);
		
		
	}
	/**
	 * 获取新闻的点击数
	 * @throws IOException
	 */
	public void getClickCount() throws IOException{
		response.setCharacterEncoding("utf-8");
		Long  id= Long.valueOf(request.getParameter("id")==""?"0":request.getParameter("id"));
		String count = JSONReslutUtil
		.getResultMessage(ResourceBundleUtil.LINKSMSCOUNTURL
				+ "/phoneInfo!getClickCount?", "id=" + id, "POST");
		
		
		PrintWriter out = response.getWriter();
		out.print(count);
		
		
	}
}

 
