package com.ruyicai.web.action.cooperation;


import java.io.IOException;
import java.security.Key;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.ResourceBundle;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

import com.jrt.betcodeResolve.util.Constant;
import com.jrt.invokeLot.lot.bean.Tuserinfo;
import com.jrt.invokeLot.util.JSONReslutUtil;
import com.jrt.invokeLot.util.LotErrorCode;
import com.jrt.invokeLot.util.URLEncoder;
import com.ruyicai.util.BaseAction;
import com.ruyicai.util.CommonUtil;
import com.ruyicai.util.CookieCrypt;
import com.ruyicai.util.ResourceBundleUtil;
import com.ruyicai.util.MD5.PaySign;

/**
 * 渠道统计功能
 * @author 鞠牧
 *
 */
public class Channel extends BaseAction {
	private static final long serialVersionUID = 6651877698533982315L;
	private static Logger logger = Logger.getLogger(Channel.class);
	public static Map<String, String> ips = new HashMap<String, String>();
	private static ResourceBundle rbint = ResourceBundle.getBundle("ruyicai");
	private static String usersCenterUrl = rbint.getString("usersCenterUrl");
	
	
	/**
	 * http://www.ruyicai.com/chlw/cooperation/channel!cn?nb=号
	 * 	 * http://test.ruyicai.com/chlw/cooperation/channel!cn?nb=831
	 */

	public void cn() {
		String number = request.getParameter("nb");
		String ip = request.getHeader("x-forwarded-for");
		if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip) ){
			ip = request.getHeader("Proxy-Client-IP");
		}
		if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
			ip = request.getRemoteAddr();
		}
		if(ips.get(ip)==null){
			ips.put(ip, number);
			session.setAttribute("CHANNEL", number);
		}else{
			session.setAttribute("CHANNEL", ips.get(ip));
		}
		try {
			if(ResourceBundleUtil.CHANNEL_TO_URL_NUMBER.equals(number)){
				response.sendRedirect(ResourceBundleUtil.CHANNEL_TO_URL);
			}else{
				response.sendRedirect("/");
			}
			logger.info(ip+":"+number);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	/**
	 * 返回对应的渠道号的对应的跳转地址
	 */
	public void getChannelKeyAndValue(){
		try {
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");
			String number = session.getAttribute("CHANNEL")==null?"":(String)session.getAttribute("CHANNEL");
			if(ResourceBundleUtil.CHANNEL_TO_URL_NUMBER.equals(number)){
				response.getWriter().print(ResourceBundleUtil.CHANNEL_TO_URL);
				return;
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	/**
	 * md5加密
	 * @param data
	 * @return
	 * @throws Exception
	 */
	public static byte[] encryptMD5(byte[] data) throws Exception {
		MessageDigest md5 = MessageDigest.getInstance("md5");
		md5.update(data);
		return md5.digest();
	}
	/**
	 * 解密64为编码
	 * @param key
	 * @return
	 * @throws Exception
	 */
	public static byte[] decryptBASE64(String key) throws Exception {
		return new BASE64Decoder().decodeBuffer(key);
	}
	/**
	 * 加密64为编码
	 * @param key
	 * @return
	 * @throws Exception
	 */
	public static String encryptBASE64(byte[] key) throws Exception {
		return new BASE64Encoder().encodeBuffer(key);
	}
	/**
	 * 密钥改编64为编码，初始化密钥
	 * @param seed
	 * @return
	 * @throws Exception
	 */
	public static Key generateDESKey(String seed) throws Exception {
		SecureRandom secureRandom = null;

		if (seed != null) {
			secureRandom = SecureRandom.getInstance("SHA1PRNG");
			secureRandom.setSeed(decryptBASE64(seed));
		} else {
			secureRandom = SecureRandom.getInstance("SHA1PRNG");
		}

		KeyGenerator kg = KeyGenerator.getInstance("des");
		kg.init(secureRandom);

		return kg.generateKey();
	}

	/**
	 * 解密方法
	 * @param data
	 * @param key 密钥
	 * @return
	 * @throws Exception
	 */
	public static byte[] decryptDES(byte[] data, Key key) throws Exception {
		Cipher cipher = Cipher.getInstance("des");
		cipher.init(Cipher.DECRYPT_MODE, key);

		return cipher.doFinal(data);
	}
	
	/**
	 * 获取完整的url
	 * @param request
	 * @return
	 */
	public static String getFullUrl(HttpServletRequest request){
		String newPath=request.getRequestURI();//或者String newPath=request.getRequestURL();//
		 if (request.getQueryString() != null) {
		   newPath+='?';
		   newPath+=request.getQueryString();
		  } 
		 return newPath;
	}
	/**
	 * 彩多多 用户联合登陆接口
	 * @author xiaona
	 */
	public void joinLogin(){
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		try{
			//获取提交的用户信息
			String username = URLEncoder.decode(request.getParameter("username")==null?"":request.getParameter("username"));
			String mobile= request.getParameter("mobile");
			String sessionnum= request.getParameter("sessionnum");
			String password = request.getParameter("password");
			Long sendtime = request.getParameter("sendtime")==null?0:Long.valueOf((request.getParameter("sendtime")));//获取用户发送请求的时间
			String codemy= request.getParameter("encrypNum");//获取加密串
			String num= request.getParameter("channelnum");//获取取到号
			//时间：1316413395337
			//加密串：AQYyD1diEMWl3dNNxewQDQ==
			Long nowtime = new Date().getTime();//得到当前时间
			//Long nowtime = 1316413395337L;//得到当前时间
			String code = username+password+mobile+sessionnum+sendtime+"ruyicaicomeon";
			//String code = username+password+mobile+sendtime+"ruyicaicomeon";
			String mac = PaySign.Md5(code);
			Tuserinfo userinfo = null;
			//判断密钥是否一致
			if(mac.equalsIgnoreCase(codemy)){
				sendtime = request.getParameter("sendtime")==null?0:Long.valueOf((request.getParameter("sendtime")+"000"));//获取用户发送请求的时间
			//判断用户的请求是否超时
			if((nowtime-sendtime)<=10*60*1000){
				if(mac.indexOf("+")>-1){
					mac.replaceAll("\\+", " ");
				}
				if(codemy.indexOf("+")>-1){
					codemy.replaceAll("\\+", " ");
					
				}
				//如果用户信息为空 直接跳到注册页面
				if(sessionnum!=null||sessionnum!=""){
					session.setAttribute("sessionnum", "PHPSESSID="+sessionnum+"&");
				}
					session.setAttribute("CHANNEL", num);
					//根据用户名查询用户信息
					JSONObject user =  JSONObject.fromObject(
						JSONReslutUtil.getResultMessage(
									ResourceBundleUtil.LINKURL + "/tuserinfoes?json&find=ByUserName&userName=" +new String(username+num) )); 
					//判断用户是否存在
					if(user.getString("errorCode").equals(LotErrorCode.NEW_OK)){
							 userinfo = Tuserinfo.setJson(user.getJSONObject("value"));
							 Saveusser(userinfo.getUSERNO());
					}else{//如果用户不存就对用户的手机号和昵称进行验证
						
						if(mobile!=""&&password!=""){
						//查询昵称是否有重复
						JSONObject jsonObject =  JSONObject.fromObject(JSONReslutUtil.getResultMessage(ResourceBundleUtil.LINKURL + "/tuserinfoes?json&find=ByNickname&","nickname=" +username ,"POST"));
						logger.info("根据昵称查询到的用户信息是："+jsonObject);
						//查询手机号是否重复
						JSONObject jsonObjectphone =  JSONObject.fromObject(JSONReslutUtil.getResultMessage(ResourceBundleUtil.LINKURL + "/tuserinfoes?json&find=ByMobileid&mobileid=" + mobile));
						logger.info("根据手机号查询到的用户信息是："+jsonObjectphone);
						//如果手机号和昵称有任何一项重复就跳到注册页面
						if(jsonObjectphone.getString("errorCode").equals(LotErrorCode.NEW_OK)&&jsonObject.getString("errorCode").equals(LotErrorCode.NEW_OK)){
						Boolean	phoBoolean= JSONObject.fromObject(CommonUtil.getBackValue("value", jsonObjectphone)).getString("state").equals("0");
							if(phoBoolean){//手机号昵称没有重复 进行注册
								//------数据验证通过后，进行用户注册提交。---
								String agencyNo = (String)session.getAttribute("agencyNo");
								/**
								 * 执行新接口注册
								 */
								if("".equals(mobile)){
									mobile="";
								}else{
									mobile="&mobileid="+mobile;
								}
								String re = JSONReslutUtil.getResultMessage(ResourceBundleUtil.LINKURL +"/tuserinfoes/register?",
											"accesstype="+Constant.WEB_AGENCYNO 
											+"&agencyno="+CommonUtil.processChannelId(agencyNo==null?"000000":agencyNo)
											+"&certid="+ResourceBundleUtil.CARDID
											+"&channel="+num
											+"&info=ruyicai&leave=1&mobileid="+mobile
											+"&nickname="+username+"&password="+password
											+"&userName="+(username+num)+"&type=1","POST");
								logger.debug("得到注册接口的信息是："+re);
								JSONObject obj=JSONObject.fromObject(re);
								//注册成功，保存相应的信息 跳转页面
								if(obj.getString("errorCode").equals(LotErrorCode.NEW_OK)){
									Saveusser(obj.getJSONObject("value").getString("userno"));
									
								}else{//注册失败，跳到注册页面进行注册
									request.setAttribute("cooppass",password);
									request.setAttribute("username", username);
								 response.sendRedirect("/chlw/function/cooperation/coop_inputUserInfo.jsp");
									 return;
								}
							}else{//手机号或昵称有重复，跳到注册页面
								request.setAttribute("cooppass",password);
								request.setAttribute("username", username);
								request.setAttribute("msg","您的昵称或手机号已被使用，请重新填写信息！");
								 response.sendRedirect("/chlw/function/cooperation/coop_inputUserInfo.jsp");
								 return;
							}
							
						}else if(jsonObjectphone.getString("errorCode").equals("100002")&&jsonObject.getString("errorCode").equals("100205")){
							//如果没有重复则进行注册
							//------数据验证通过后，进行用户注册提交。---
							String agencyNo = (String)session.getAttribute("agencyNo");
							/**
							 * 执行新接口注册
							 */
							if("".equals(mobile)){
								mobile="";
							}else{
								mobile="&mobileid="+mobile;
							}
							String re = JSONReslutUtil.getResultMessage(ResourceBundleUtil.LINKURL +"/tuserinfoes/register?",
										"accesstype="+Constant.WEB_AGENCYNO 
										+"&agencyno="+CommonUtil.processChannelId(agencyNo==null?"000000":agencyNo)
										+"&certid="+ResourceBundleUtil.CARDID
										+"&channel="+num
										+"&info=ruyicai&leave=1"+mobile
										+"&nickname="+username+"&password="+password
										+"&userName="+(username+num)+"&type=1","POST");
							logger.debug("得到注册接口的信息是："+re);
							JSONObject obj=JSONObject.fromObject(re);
							//注册成功，保存相应的信息 跳转页面
							if(obj.getString("errorCode").equals(LotErrorCode.NEW_OK)){
								Saveusser(obj.getJSONObject("value").getString("userno"));
							}else{//注册失败，跳到注册页面进行注册
								request.setAttribute("cooppass",password);
								request.setAttribute("username", username);
								 response.sendRedirect("/chlw/function/cooperation/coop_inputUserInfo.jsp");
								 return;
							}
							
						}else{//查询手机号和昵称失败，跳到注册页面
							request.setAttribute("cooppass",password);
							request.setAttribute("username", username);
							 response.sendRedirect("/chlw/function/cooperation/coop_inputUserInfo.jsp");
							 return;
						}
					}else{
						//用户名或昵称为空  直接跳转到注册页面
						request.setAttribute("cooppass",password);
						request.setAttribute("username", username);
						request.setAttribute("msg","您的用户信息不完整，请重新填写信息！");
						 response.sendRedirect("/chlw/function/cooperation/coop_inputUserInfo.jsp");
						 return;	
					}
				
				}
				}else{
					
					logger.info("请求超时！");
				}
			
			}else{
				logger.info("密钥验证错误！");
			}
			response.sendRedirect("/include/goucaidating.html");
		}catch(Exception e){
			e.printStackTrace();
			
		}
		
	}
	/**
	 * 彩多多 注册接口
	 * @author xiaona
	 */
	
	public void coopRegister(){
		try{
		String username = (String) request.getAttribute("username");
		String nickname = request.getParameter("nickname");
		String phone = request.getParameter("mobile");
		String password  = (String) request.getAttribute("cooppass");
		String chan = (String) session.getAttribute("CHANNEL");
		String input = request.getParameter("rand")==null?"":request.getParameter("rand");// 得到页面验证码
		String rand = (String) session.getAttribute("rand");// 得到验证码
		//------数据验证通过后，进行用户注册提交。---
		String agencyNo = (String)session.getAttribute("agencyNo");
		if(("".equals(phone))||("".equals(nickname)||("".equals(password))||nickname!=null||phone!=null||password!=null)){
		if(!("".equals(input))&&input.equals(rand)){
			if("".equals(phone)){
				phone="";
			}else{
				phone="&mobileid="+phone;
			}
			/**
			 * 执行新接口注册
			 */
			String re = JSONReslutUtil.getResultMessage(ResourceBundleUtil.LINKURL +"/tuserinfoes/register?",
					"accesstype="+Constant.WEB_AGENCYNO 
					+"&agencyno="+CommonUtil.processChannelId(agencyNo==null?"000000":agencyNo)
					+"&certid="+ResourceBundleUtil.CARDID
					+"&channel="+chan
					+"&info=ruyicai&leave=1"+phone
					+"&nickname="+URLEncoder.encode(nickname)+"&password="+password
					+"&userName="+URLEncoder.encode((username+chan))+"&type=1","POST");
			logger.debug("得到注册接口的信息是："+re);
			JSONObject obj=JSONObject.fromObject(re);
			if(obj.getString("errorCode").equals(LotErrorCode.NEW_OK)){
				Saveusser(obj.getJSONObject("value").getString("userno"));
				
			}else{
				logger.info("注册失败！");
				request.setAttribute("msg", "注册失败，请稍后再试！");
				response.sendRedirect("/chlw/function/cooperation/coop_inputUserInfo.jsp");
			}
		}else{
			logger.info("验证码错误！");
			request.setAttribute("msg", "验证码输入错误！");
			 response.sendRedirect("/chlw/function/cooperation/coop_inputUserInfo.jsp");
		}
		}else{
			
			logger.info("用户信息为空！");
		}
		response.sendRedirect("/include/goucaidating.html");
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
	/**
	 * 公用的注册接口
	 * @param agencyNo 数字验证
	 * @param chan 渠道号
	 * @param phone 手机号
	 * @param nickname 昵称
	 * @param password 密码
	 * @param username 用户名
	 * @return
	 */
	
	public JSONObject Register(String chan,String phone,String nickname,String password,String username){
		//------数据验证通过后，进行用户注册提交。---
		String agencyNo = (String)session.getAttribute("agencyNo");
		JSONObject obj  = new JSONObject();
		try{
			if("".equals(phone)){
				phone="";
			}else{
				phone="&mobileid="+phone;
			}
			/**
			 * 执行新接口注册
			 */
			String re = JSONReslutUtil.getResultMessage(ResourceBundleUtil.LINKURL +"/tuserinfoes/register?",
						"accesstype="+Constant.WEB_AGENCYNO 
						+"&agencyno="+CommonUtil.processChannelId(agencyNo==null?"000000":agencyNo)
						+"&certid="+ResourceBundleUtil.CARDID
						+"&channel="+chan
						+"&info=ruyicai&leave=1&mobileid="+phone
						+"&nickname="+URLEncoder.encode(nickname)+"&password="+password
						+"&userName="+URLEncoder.encode((username+chan))+"&type=1","POST");
			logger.debug("得到注册接口的信息是："+re);
			 obj=JSONObject.fromObject(re);
			
		
	}catch(Exception e){
		e.printStackTrace();
		logger.debug("Register Exception ："+e.getMessage());
		}
	return obj;
	}
	
	/**
	 * 牛仔网 (cowboy) 联合登录 2011-10-25 
	 * @author zkl
	 * @param 参数为加密信息
	 * @return true 返回到（登录）购彩大厅, false 返回到注册页面
	 * update: 2011-10-25  updateAuthor : zkl  
	 * @throws  
	 */
	
	public void joinLoginForNZ()  {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		try{
		//获取合作方访问的整个URL(包括参数)
		String EncryptIP = getFullUrl(request);
		logger.info("获取cowboy访问此方法的地址URL"+EncryptIP);
		//此判断用于判断牛仔网传过来的IP有没有参数
		// 1 . 没有参数（跳转到购彩大厅不登录 ,牛仔网点击登录跳到他们的登录界面,进行登录,然后在跳转回来）
		// 2 . 有参数,代码继续执行
		if(EncryptIP.indexOf('?') != -1){
					//以问号为坐标,截取参数
				String [] Encryptparam = EncryptIP.split("\\?");
				if(Encryptparam[1] != null || !"".equals(Encryptparam[1])){
				    //解密参数
						String keySeed = new String("cbh5hg67hgf".getBytes("utf-8"));
						Key key = generateDESKey(keySeed); //密钥
						String d =new String(URLEncoder.decode(Encryptparam[1]).getBytes("utf-8"));
					    byte[] b =	decryptDES(decryptBASE64(d),key);
					    String s = new String (b,"utf-8");
					if(s.split("\\,").length>2){
					    // 获取所需参数
						String username =  s.split("\\,")[0].substring(2) == null ? "":s.split("\\,")[0].substring(2);      //用户名
						String password = s.split("\\,")[1].substring(2) == null ? "":s.split("\\,")[1].substring(2);      //密码
						long sendtime = s.split("\\,")[2].substring(2) == null ? 0:Long.valueOf(s.split("\\,")[2].substring(2));//请求发起时间
						String num = s.split("\\,")[3].substring(2) == null ? "":s.split("\\,")[3].substring(2);
						String sessionnum = s.split("\\,")[4].substring(2) == null ? "":s.split("\\,")[4].substring(2);
						
						 
						//统一验证
						Tuserinfo userinfo = null;
						if(sendtime == 0 || "".equals(username) || "".equals(password) || "".equals(num)){
							//用户名或昵称为空  直接跳转到注册页面
							 request.setAttribute("cooppass",password);
							 request.setAttribute("username", username);
							 request.setAttribute("msg","您的用户信息不完整，请重新填写信息！");
							 response.sendRedirect("/chlw/function/cooperation/coop_inputUserInfo.jsp");
							 logger.info("牛仔网提供参数不全！");
							 return;	
						}
						
						long nowtime = new Date().getTime();
						//判断用户的请求是否超时
						//if((nowtime-sendtime)<=10*60*1000){
							//如果用户信息为空 直接跳到注册页面
							if(sessionnum!=null||sessionnum!=""){
								session.setAttribute("sessionnum", ";jsessionid="+sessionnum.split("=")[1]);
							}
								session.setAttribute("CHANNEL", num);
								username = new   String(username.getBytes("gbk"), "utf-8") ;
								//根据用户名查询用户信息
								JSONObject user =  JSONObject.fromObject(
									JSONReslutUtil.getResultMessage(
												ResourceBundleUtil.LINKURL + "/tuserinfoes?json&find=ByUserName&userName=" +URLEncoder.encode(username+num) )); 
								//判断用户是否存在
								if(user.getString("errorCode").equals(LotErrorCode.NEW_OK)){
										 userinfo = Tuserinfo.setJson(user.getJSONObject("value"));
										 Saveusser(userinfo.getUSERNO());
								}else{
									//查询昵称是否有重复
									JSONObject jsonObject =  JSONObject.fromObject(JSONReslutUtil.getResultMessage(ResourceBundleUtil.LINKURL + "/tuserinfoes?json&find=ByNickname&","nickname=" +username ,"POST"));
									logger.info("根据昵称查询到的用户信息是："+jsonObject);
									if(jsonObject.getString("errorCode").equals(LotErrorCode.NEW_OK)||jsonObject.getString("errorCode").equals("100205")){
										//------数据验证通过后，进行用户注册提交。---
										String agencyNo = (String)session.getAttribute("agencyNo");
										JSONObject obj  = new JSONObject();
											/**
											 * 执行新接口注册
											 */
											String re = JSONReslutUtil.getResultMessage(ResourceBundleUtil.LINKURL +"/tuserinfoes/register?",
														"accesstype="+Constant.WEB_AGENCYNO 
														+"&agencyno="+CommonUtil.processChannelId(agencyNo==null?"000000":agencyNo)
														+"&certid="+ResourceBundleUtil.CARDID
														+"&channel="+num
														+"&info=ruyicai&leave=1"
														+"&nickname="+URLEncoder.encode(username)+"&password="+password
														+"&userName="+URLEncoder.encode((username+num))+"&type=1","POST");
											logger.debug("得到注册接口的信息是："+re);
											 obj=JSONObject.fromObject(re);
										if(obj.getString("errorCode").equals(LotErrorCode.NEW_OK)){
											Saveusser(obj.getJSONObject("value").getString("userno"));
											
										}else{
											logger.info("注册失败！");
											request.setAttribute("msg", "注册失败，请稍后再试！");
											response.sendRedirect("/chlw/function/cooperation/coop_inputUserInfo.jsp");
										}
										
									}else{
									//用户名或昵称为空  直接跳转到注册页面
									 session.setAttribute("cooppass",password);
									 session.setAttribute("username", username);
									 session.setAttribute("msg","您的用户信息不完整，请重新填写信息！");
									 response.sendRedirect("/chlw/function/cooperation/coop_inputUserInfo.jsp");
									 return;
									}
								}
							
							/*}else{
								logger.info("请求超时！");
								response.sendRedirect("/include/goucaidating.html");
							}*/
					
					   }else{
						   String num = s.split("\\,")[0].substring(2) == null ? "":s.split("\\,")[0].substring(2);
							String sessionnum = s.split("\\,")[1].substring(2) == null ? "":s.split("\\,")[1].substring(2);
							 session.setAttribute("CHANNEL", num);
						   }
				}else{
					logger.info("牛仔网请求连接解密参数不存在！");
				}
		
		}
		response.sendRedirect("/include/goucaidating.html");
		}catch (Exception e) {
			logger.debug("联合登录异常！");
		}
	}
	/**
	 * 理想论坛 联合登录 2011-10-25 
	 * @author zkl
	 * @param 参数为加密信息
	 * @return true 返回到（登录）购彩大厅, false 返回到注册页面
	 * update: 2011-10-25  updateAuthor : zkl  
	 * @throws  
	 */
	
	public void joinLoginForLX()  {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		try{
		//获取合作方访问的整个URL(包括参数)
		String EncryptIP = getFullUrl(request);
		logger.info("获取理想论坛访问此方法的地址URL"+EncryptIP);
		//此判断用于判断牛仔网传过来的IP有没有参数
		// 1 . 没有参数（跳转到购彩大厅不登录 ,牛仔网点击登录跳到他们的登录界面,进行登录,然后在跳转回来）
		// 2 . 有参数,代码继续执行
		if(EncryptIP.indexOf('?') != -1){
			//以问号为坐标,截取参数
		String [] Encryptparam = EncryptIP.split("\\?");
		if(Encryptparam[1] != null || !"".equals(Encryptparam[1])){
	    //解密参数
			String d =new String(URLEncoder.decode(Encryptparam[1]).getBytes("utf-8"));
		    String s = CookieCrypt.decrypt(d);
		    
		if(s.split("\\,").length>2){
		    // 获取所需参数
		String username =s.split("\\,")[0].substring(2) == null ? "":s.split("\\,")[0].substring(2);      //用户名
		long sendtime = s.split("\\,")[1].substring(2) == null ? 0:Long.valueOf(s.split("\\,")[1].substring(2));      //密码
		String num = s.split("\\,")[2].substring(2) == null ? "":s.split("\\,")[2].substring(2);//请求发起时间
		String sessionnum = s.split("\\,")[3].substring(2) == null ? "":s.split("\\,")[3].substring(2);
		String password = PaySign.Md5(username+num);
		sendtime =Long.valueOf((sendtime+"000"));
		//统一验证
		Tuserinfo userinfo = null;
		if(sendtime == 0 || "".equals(username) || "".equals(password) || "".equals(num)){
			//用户名或昵称为空  直接跳转到注册页面
			 session.setAttribute("cooppass",password);
			 session.setAttribute("username", username);
			 session.setAttribute("user",userinfo);
			 session.setAttribute("msg","您的用户信息不完整，请重新填写信息！");
			 response.sendRedirect("/chlw/function/cooperation/coop_inputUserInfo.jsp");
			 logger.info("牛仔网提供参数不全！");
			 return;
		}
		long nowtime = new Date().getTime();
		//判断用户的请求是否超时
		if((nowtime-sendtime)<=10*60*1000){
			//如果用户信息为空 直接跳到注册页面
			if(sessionnum!=null||sessionnum!=""){
				session.setAttribute("sessionnum", "q="+sessionnum.split("=")[1]+"&u="+username);
			}
				session.setAttribute("CHANNEL", num);
				//根据用户名查询用户信息
				JSONObject user =JSONObject.fromObject(JSONReslutUtil.getResultMessage(ResourceBundleUtil.LINKURL + "/tuserinfoes?json&find=ByUserName&","userName=" +URLEncoder.encode(username+num, "UTF-8") ,"POST"));  
				logger.info("理想论坛用户信息请求地址和参数：/tuserinfoes?json&find=ByUserName&userName="+URLEncoder.encode(username+num, "UTF-8"));
				logger.info("理想论坛用户信息查询内容：method=joinLoginForLX "+user);
				//判断用户是否存在
				if(user.getString("errorCode").equals(LotErrorCode.NEW_OK)){
						 userinfo = Tuserinfo.setJson(user.getJSONObject("value"));
						 Saveusser(userinfo.getUSERNO());
					
				}else{
					//查询昵称是否有重复
					JSONObject jsonObject =  JSONObject.fromObject(JSONReslutUtil.getResultMessage(ResourceBundleUtil.LINKURL + "/tuserinfoes?json&find=ByNickname&","nickname=" +URLEncoder.encode(username, "UTF-8") ,"POST"));
					logger.info("根据昵称查询到的用户信息是："+jsonObject);
					if(jsonObject.getString("errorCode").equals(LotErrorCode.NEW_OK)||jsonObject.getString("errorCode").equals("100205")){
						//------数据验证通过后，进行用户注册提交。---
						String agencyNo = (String)session.getAttribute("agencyNo");
						JSONObject obj  = new JSONObject();
							/**
							 * 执行新接口注册
							 */
							String re = JSONReslutUtil.getResultMessage(ResourceBundleUtil.LINKURL +"/tuserinfoes/register?",
										"accesstype="+Constant.WEB_AGENCYNO 
										+"&agencyno="+CommonUtil.processChannelId(agencyNo==null?"000000":agencyNo)
										+"&certid="+ResourceBundleUtil.CARDID
										+"&channel="+num
										+"&info=ruyicai&leave=1"
										+"&nickname="+URLEncoder.encode(username)+"&password="+password
										+"&userName="+URLEncoder.encode((username+num))+"&type=1","POST");
							logger.debug("得到注册接口的信息是："+re);
							 obj=JSONObject.fromObject(re);
						if(obj.getString("errorCode").equals(LotErrorCode.NEW_OK)){
							Saveusser(obj.getJSONObject("value").getString("userno"));
							
						}else{
							logger.info("注册失败！");
							session.setAttribute("msg", "注册失败，请稍后再试！");
							response.sendRedirect("/chlw/function/cooperation/coop_inputUserInfo.jsp");
						}
						
					}else{
					//用户名或昵称为空  直接跳转到注册页面
					 session.setAttribute("cooppass",password);
					 session.setAttribute("username", username);
					 session.setAttribute("msg","您的用户信息不完整，请重新填写信息！");
					 response.sendRedirect("/chlw/function/cooperation/coop_inputUserInfo.jsp");
					 return;
					}
				}
		}else{
			logger.info("请求超时！");
			response.sendRedirect("/include/goucaidating.html");
		}
		   }else{
				 session.setAttribute("CHANNEL", "660");
			   }
		}else{
			logger.info("牛仔网请求连接解密参数不存在！");
		}
		
		}
		response.sendRedirect("/include/goucaidating.html");
		}catch (Exception e) {
			logger.debug("联合登录异常！");
		}
	}
	public void Saveusser(String userno){
		try {
			JSONObject user =	JSONObject.fromObject(JSONReslutUtil.getResultMessage(ResourceBundleUtil.USERSCENTERURL+"/user/center!loginForUserno?","userno="+userno,"POST"));
			if(user!=null&&user.getString("errorCode").equals(LotErrorCode.NEW_OK)){
				pageCookie(user.getString("jsessionid"));
				logger.info("使用userno 进行USERCENTER的登记注册成功！");
			}else{
				logger.info("使用userno 进行USERCENTER的登记注册失败！跳转到用户登陆页面");
				String channe=session.getAttribute("CHANNEL").toString();
				if("650".equals(channe)){
					response.sendRedirect("http://s.9666.cn/");
				}else if("660".equals(channe)){
					response.sendRedirect("http://www.55188.com/lottery.php");
				}else if("694".equals(channe)){
					response.sendRedirect("http://test.chplan.net:9090/chplan/login.jsp?service=http://test.chplan.net:9090/chplan/caipiao.do");
				}else if("636".equals(channe)){
					response.sendRedirect("http://www.88967.com");
				}else{
					response.sendRedirect(ResourceBundleUtil.USERSCENTERURL+"login.jsp");
				}
			}
		} catch (IOException e) {
			logger.info("使用userno 进行USERCENTER的登记注册出现异常");
		}
	}
	
	/**
	 * 给用户创建一个cookie 如果cookie存在，则修改当前cookie
	 * cookie中存储当前用户的jsessionid 
	 * @param sessionId
	 */
	private void pageCookie(String sessionId){
		session.setAttribute("rycum", sessionId);
		String cookieName = "userInfoId";
		Cookie userCookie = new Cookie(cookieName, sessionId);
		userCookie.setPath("/");
		userCookie.setDomain(".ruyicai.com");
		userCookie.setMaxAge(365*24*60*60);
		response.addCookie(userCookie);
	}
}
