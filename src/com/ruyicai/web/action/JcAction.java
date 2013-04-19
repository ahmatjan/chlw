package com.ruyicai.web.action;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.log4j.Logger;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import com.jrt.invokeLot.util.JSONReslutUtil;
import com.ruyicai.util.BaseAction;
import com.ruyicai.util.ResourceBundleUtil;
import com.ruyicai.util.SimpleDateUtil;

@SuppressWarnings("serial")
public class JcAction extends BaseAction {
	private static final Logger logger = Logger.getLogger(JcAction.class);
	private static ResourceBundle rb = ResourceBundle.getBundle("ruyicai");
	private static String lottery = rb.getString("linkURL");
    private static  DateFormat df=new SimpleDateFormat("yyyy-MM-dd");
    private static  SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
	/**
	 * 获取竞彩 胜平负的对阵信息
	 * @param type 查询类别 (0 篮彩 1足彩 )
	 * @return
	 */
	public String  getJingcaiduizhen(){
		String type = request.getParameter("type") == null ? "":request.getParameter("type");//获取类别
		String valueType = request.getParameter("valueType") == null ? "":request.getParameter("valueType");//单关 /多关赔率 多关赔率
		try {
			JSONArray jsArr = JSONObject.fromObject(
					JSONReslutUtil.getResultMessage(lottery +"/select/getjingcaiduizhen?&type="+type)).getJSONArray("value");
			JSONObject json = new JSONObject();
			//调用赔率接口
			String  peilvs = JSONObject.fromObject(JSONReslutUtil.getResultMessage(ResourceBundleUtil.LINKURL +"/select/findjincaipeilu?","type="+type+"&valueType="+valueType,"POST")).getString("value");
			JSONObject peilvjs = peilvDOM(peilvs).getJSONObject("body").getJSONObject("matchList");
			//按着日期 把对阵信息分别储存在map中
			for (int i = 0; i < jsArr.size(); i++) {
			    json = (JSONObject) jsArr.get(i);
			    String strArr []= json.getString("team").split("\\:");
			    json.put("team1", strArr[0]);
			    json.put("team2", strArr[1]);
			    json.put("gameTime", df.format(new Long(json.getString("time"))));
			    json.put("newday", df.format( formatter.parse(json.getString("day"))));
			    json.put("newweek", SimpleDateUtil.getWeekStr(json.getString("weekid")));
				String	peilvKey= json.getString("day")+"_"+json.getString("weekid")+"_"+json.getString("teamid");
				
				//获取联赛name 用简短语替换
				
				
				
				json.put("peilv", peilvjs.getJSONObject(peilvKey));
			}
			//调用根据时间提取相对应的当天的对阵信息返回list 页面遍历
			List<List<JSONObject> > duizhenList = getDuizhenByEveryDay(jsArr);
		    //解析字符串
			request.setAttribute("duizhenInfos", duizhenList);
		} catch (Exception e) {
			logger.debug("获取竞彩对阵信息异常！");
		}
		return "tojingcaizuqiu";
	}  
	/**
	 * 根据day 的信息分离对阵
	 * @param arr
	 * @return
	 */
	public static List<List<JSONObject> > getDuizhenByEveryDay(JSONArray arr){
		JSONObject jd= new JSONObject();
		List<List<JSONObject> > list = new ArrayList<List<JSONObject> >();
			for(int j= 0 ; j<6 ;j++){//循环6天的数据  
				String newday = SimpleDateUtil.addOne(SimpleDateUtil.getDate(), j);
				List<JSONObject> listArr = new ArrayList<JSONObject>();
				for (int i = 0; i < arr.size(); i++) {
					jd = (JSONObject) arr.get(i);
					String day = jd.getString("day");
				    if(day.equals(newday)){
					   listArr.add(jd);
				    }
			     }
			list.add(listArr);
		}
		return list;
	}
	
	/**
	 * type 查询类别 (0 篮彩 1足彩 )   valueType单关 /多关赔率 多关赔率 ( 0 单关 1 多关 )
	 * @return
	 * <vs> ,<score>,<goal>,<half>  对应足彩胜负 比分，总进 比分，总进球，半全场胜负
	 * 此方法应用DOM4j来解析赔率的XML字符串
	 * @param obj XML字符串
	 */
	public JSONObject peilvDOM(String obj){
		JSONObject jsonAll =null;
		try{
		//后台返回的是XML字符串，采用dom4j 解析
		Document doc = DocumentHelper.parseText(obj);   
		//获取根节点的名称
		Element rootElt = doc.getRootElement();  
		//创建MAP储存list. 遍历缓存数据
		 jsonAll = new JSONObject();
		//获取message 子节点head属性数组
    	Iterator Ihead = rootElt.elementIterator("head");
        while(Ihead.hasNext()){
        	//遍历head  获取数据并且储存
        	JSONObject json = new JSONObject();
        	 Element head = (Element)Ihead.next();
        	 String messageId = head.elementTextTrim("messageId");
        	 String result = head.elementTextTrim("result");
        	 String md = head.elementTextTrim("md");
        	 json.put("messageId", messageId);
        	 json.put("result", result);
        	 json.put("md", md);
        	 jsonAll.put("head", json);
         }
        //获取message子节点body 数据
        Iterator Ibody = rootElt.elementIterator("body"); 
        //遍历head节点
        JSONObject jsonmatchList = null;
	    while(Ibody.hasNext()){
	    	  jsonmatchList =  new JSONObject();
	    	 Element body = (Element)Ibody.next();
	    	 //body 下没有要获取的值 next获取body的子节点matchList
	         Iterator ImatchList = body.elementIterator("matchList");
	        	 Element matchList = (Element)ImatchList.next();
	        	 Iterator Iitem = matchList.elementIterator("item");
	        	 JSONObject jsonItem  = null;
	        	 Map<String, JSONObject>  m = new HashMap<String, JSONObject>(); 
		         while(Iitem.hasNext()){
		        	 jsonItem = new JSONObject();
		        	 Element item = (Element)Iitem.next();
		        	 String id = item.elementTextTrim("id");
		        	 jsonItem.put("id", id);
		        	 Iterator vslist = item.elementIterator("vs");
		        	 while (vslist.hasNext()) {
		        		 JSONObject  json = new JSONObject();
		        		 Element vsele = (Element)vslist.next();
		        		 String v0 = vsele.elementTextTrim("v0");
		        		 String v1 = vsele.elementTextTrim("v1");
		        		 String v3 = vsele.elementTextTrim("v3");
		        		 String letPoint = vsele.elementTextTrim("letPoint");
		        		 json.put("v0", v0);
		        		 json.put("v1", v1);
		        		 json.put("v3", v3);
		        		 json.put("letPoint", letPoint);
		        		 jsonItem.put("vs", json);
					}
		        	//遍历score结点下的数据浮动奖金 浮动奖金 (赔率 )
		        	 Iterator scorelist = item.elementIterator("score");
		        	 while (scorelist.hasNext()) {
		        		 Element scorele = (Element)scorelist.next();
		        		 JSONObject ddd   = getVsElement(scorele);
		        		 jsonItem.put("score",ddd);
					 }
		        	 //遍历goal结点下的数据
		        	 Iterator goallist = item.elementIterator("goal");
		        	 while (goallist.hasNext()) {
		        		 Element goalele = (Element)goallist.next();
		        		 JSONObject li =  getGoalElement(goalele);
		        		 jsonItem.put("goal", li);
					}
		        	 //遍历half结点数据
		        	 Iterator halflist = item.elementIterator("half");
		        	 while (halflist.hasNext()) {
		        		 Element goalele = (Element)halflist.next();
		        		 //因跨度太大没有用for循环
		        			 String v00 =  goalele.elementTextTrim("v00");
		        			 String v01 =  goalele.elementTextTrim("v01");
		        			 String v03 =  goalele.elementTextTrim("v03");
		        			 String v10 =  goalele.elementTextTrim("v10");
		        			 String v11 =  goalele.elementTextTrim("v11");
		        			 String v13 =  goalele.elementTextTrim("v13");
		        			 String v30 =  goalele.elementTextTrim("v30");
		        			 String v31 =  goalele.elementTextTrim("v31");
		        			 String v33 =  goalele.elementTextTrim("v33");
		        		     JSONObject jsHalf = new JSONObject();
		        		     jsHalf.put("v00", v00);jsHalf.put("v01", v01);jsHalf.put("v03", v03);jsHalf.put("v10", v10);jsHalf.put("v11", v11);jsHalf.put("v13", v13);
		        		     jsHalf.put("v30", v30);jsHalf.put("v31", v31);
		        		     jsHalf.put("v33", v33);
		        		     jsonItem.put("half", jsHalf);
		        	 }
		        	 m.put(id, jsonItem);
		         }
		         jsonmatchList.put("matchList", m);
	    }
	    jsonAll.put("body", jsonmatchList);
        //存放到body
	} catch (DocumentException e) {
		e.printStackTrace();
		logger.debug("将字符串转为XML出现异常！");
	}
	  return jsonAll;
	}
	/**
	 * @param scorele
	 * @return
	 */
	public   JSONObject getVsElement (Element scorele){
		String  var = "";
		String scoreValue = "";
		JSONObject js = new JSONObject();
		for(int i=0 ; i<100 ; i++){
			if(i<10)   {var ="v0"+String.valueOf(i);}else{	var = "v"+String.valueOf(i);}
		    scoreValue  = scorele.elementTextTrim(var);
			js.put(var, scoreValue)     ;
		}
		return js;
		
	} 
	/**
	 * @param goal
	 * @return
	 */
	public   JSONObject getGoalElement (Element goal){
		String  var = "";
		String goalValue = "";
		JSONObject js = new JSONObject();
		for(int i=0 ; i<100 ; i++){
			var = "v"+String.valueOf(i);
			goalValue  = goal.elementTextTrim(var);
			js.put(var, goalValue)     ;
		}
		return js;
		
	} 
	/**
	 * 
	 * @return 赛果
	 */
	 
	
	public JSONObject getResult(){
		try {
			//获取系统当天时间
			Date dateTime = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
			String today = sdf.format(dateTime);
			//从页面得到参数数据
			
			String type = request.getParameter("type")==null?"0":request.getParameter("type");
			
			String date = request.getParameter("date")==null?today:request.getParameter("date");
			
			
			//发送请求获取比例的数据
			JSONObject resultJson = JSONObject.fromObject(JSONReslutUtil.getResultMessage(ResourceBundleUtil.LINKURL+"/getjingcairesult?type="+type+"&date="+date));
			
		} catch (Exception e) {
		}
		return null;
		
	}
	/**
	 * 更换赛事name
	 * @param name
	 * 此功能以国家为1级搜索词  每个国家又以超级 ，杯 ，甲乙丙级为2级搜索词 （甲乙丙级联赛的下属赛事为4级） 以国家之中的特有联赛为3级搜索词  每
	 * 个国家
	 * 
	 * 
	 * @return
	 */
	public String  modifyleague(String name){
		String league = "";
		//关键词  甲级联赛 超级联赛  非职业联赛  乙组联赛 足总杯 联赛杯  意大利杯  超级杯  国王杯  丙組
		
	
		return league;
		
	}
	
	
	
}
