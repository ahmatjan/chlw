package com.ruyicai.web.action;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.jrt.betcodeResolve.util.Constant;
import com.jrt.invokeLot.model.Advert;
import com.jrt.invokeLot.model.Category;
import com.jrt.invokeLot.model.News;
import com.jrt.invokeLot.service.AdvertService;
import com.jrt.invokeLot.service.CategoryService;
import com.jrt.invokeLot.service.NewsService;
import com.jrt.invokeLot.util.ListRange;
import com.ruyicai.util.BaseAction;

@SuppressWarnings("serial")
public class NewsAction extends BaseAction {
	
	private static Logger logger = Logger.getLogger(NewsAction.class);
	
	private static NewsService newsService = new NewsService();
	private static AdvertService advertService = new AdvertService();
	private static CategoryService categoryService = new CategoryService();
 
	
	public NewsAction(){
		super();
	}
	
	/**
	 * 
	 * @Title:  getAdvert
	 * @Description:大通栏广告
	 * @param: 
	 * @return:   
	 * @exception:
	 */
	public String getAdvert(){
		List<Advert> advertList = advertService.getAdvert();
		request.setAttribute("advertList", advertList);
		return null;
	}
	
	/**
	 * 
	 * @Title:  getNewsList
	 * @Description: 查询web网站上面的所有新闻
	 * @param: 
	 * @return:   
	 * @exception:
	 */
	public String  getNewsList() throws Exception {
		
		for (int i = 1; i < 6; i++) {
			List<News> newsList =newsService.getNewsListByPubDateDesc(Long.parseLong(String.valueOf(i)),Constant.NEWS_ANGCYNO,0,8);
			request.setAttribute("newsList" + i, newsList);
		}
		//图片内容
		request.setAttribute("pic", Constant.PIC);
		return "index";
	}
	
	/**
	 * 
	 * @Title:  getNewsByType
	 * @Description: 首页公告类型显示
	 * @return:   
	 * @exception:
	 */
	public void getNewsByType(int announce)throws Exception{
		//1.查询新闻标题类型
		List<Category> list = categoryService.getCategoryByType(Constant.NEWS_ANGCYNO,announce);
		request.setAttribute("announceList", list);
		
//		//2.不同类型的内容
//		for(int i=0;i<list.size();i++){
//		   Category category = (Category)list.get(i);
//		   List<News> listNews = newsService.getNewsList(category.getId(), Constant.NEWS_ANGCYNO, 10);
//	
//		}
		
	}
	
	/**
	 * 
	 * @Title:  selectCategory
	 * @Description: 
	 * @param: 
	 * @return:   
	 * @exception:
	 */
	public String selectCategory(){
		String id =  (request.getParameter("id")==null?"0":request.getParameter("id"));
		List<News> newsList =newsService.getNewsListByPubDateDesc(Long.parseLong(id),Constant.NEWS_ANGCYNO,0,8);
		request.setAttribute("newsListCategoryId", newsList);
		return "index";
	}
	
	/**
	 * 
	 * @Title:  selectNewsList
	 * @Description: 新闻分页
	 * @param: 
	 * @return:   
	 * @exception:
	 */
	@SuppressWarnings("unchecked")
	public String  selectNewsList(){
		try {
			String id = request.getParameter("id");
			logger.info("新闻分页id="+id);
			ListRange range = new ListRange(request);// 分页对象
			Map where = new HashMap();
			where.put("categoryId", 1);
			where.put("type", "web");
			range.setQuery((Serializable) where);
			newsService.selectNewsListDesc(range);
			request.setAttribute("range", range);
			request.setAttribute("id", id);
		} catch (Exception e) {
			logger.error("新闻分页出异常(Abnormal News Page)Exception:"+e.toString());
		}
		return "index";
	}

}
