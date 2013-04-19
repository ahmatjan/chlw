package com.ruyicai.util;

import org.apache.log4j.Logger;

import com.jrt.invokeLot.util.IHttp;

/**
 * 
 * 查询统计渠道号码
 * @author     徐丽
 *
 */
public class StatisticsUtil {
	private static Logger logger = Logger.getLogger(StatisticsUtil.class);
	/**
	 * 查询 用于向JRTLOT传送手机号，以获取渠道号。
	 * @param 
	 */
	public static String getChannelID(String mobile) throws Exception{
		String channelID = "";
		IHttp http=new IHttp();
		//调用pv统计的地址查询渠道号
		String re = http.getViaHttpConnection(ResourceBundleUtil.JRTLOTURLPV+"pv/UserLogServlet?tel="+mobile);
		logger.debug("传入pv统计的地址为:"+ResourceBundleUtil.JRTLOTURLPV+"pv/UserLogServlet?tel="+mobile);
		logger.debug("pv统计返回的渠道内容为:"+re);
		if(re==null){re="";}
		if(re.length()>0){
			String[] args = re.split("=");
			if(args.length>1){
				if(args[1]!=null&&!args[1].equals("null"))
					channelID=args[1];
					return channelID;
			}
		}
    	return channelID;
    }
}
