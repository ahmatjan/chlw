package com.ruyicai.web.action;

import java.util.List;

import org.apache.log4j.Logger;

import com.jrt.betcodeResolve.util.Constant;
import com.jrt.invokeLot.model.Advert;
import com.jrt.invokeLot.model.News;
import com.jrt.invokeLot.service.AdvertService;
import com.jrt.invokeLot.service.CategoryService;
import com.jrt.invokeLot.service.NewsService;
import com.ruyicai.util.BaseAction;

/**
 * 
 * @classname: StyleViewAction
 * @description: 模块Action
 * @author: Administrator
 * @date: 2010-11-25
 * 
 */
@SuppressWarnings("serial")
public class StyleViewAction extends BaseAction {
	private Logger logger = Logger.getLogger(StyleViewAction.class);
	private static CategoryService categoryService = new CategoryService();
	private static NewsService newsService = new NewsService();
	private static AdvertService advertService = new AdvertService();

	public StyleViewAction() {
		super();
	}

	/**
	 * 
	 * @Title: getAdvertImage
	 * @Description: 得到大通栏图片
	 * @param:
	 * @return:
	 * @exception:
	 */
	public String getAdvertImage() {
		try {
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
			request.setAttribute("basePath", basePath);

			String advertImageStyle = request.getParameter("advertImageStyle") == null ? ""
					: request.getParameter("");
			request.setAttribute("pic", Constant.PIC);// 图片地址
			request.setAttribute("advertImageStyle", advertImageStyle);// 样式

			logger.info("返回指定所有广告的列表 !");
			List<Advert> adList = advertService.getAdvert();
			for (Advert adBean : adList) {
				request.setAttribute("advert", adBean);
			}
		} catch (Exception e) {
//			e.printStackTrace();
			logger.error("查看大通栏广告信息时出现异常Exception(View larger banner ads abnormal information):" + e.toString());
		}
		return "advertImage";
	}

	/**
	 * 
	 * @Title: getNewsTitle
	 * @Description: 页面显示文字的内容
	 * @param:
	 * @return:
	 * @exception:
	 */
	public String getNewsTitle() {
       try {
			// 1.根据新闻id查询新闻类型
			String categoryId = request.getParameter("categoryId")== null ? ""
					        : request.getParameter("categoryId").equals("") ? ""
							: request.getParameter("categoryId");			
			String pageSize = request.getParameter("pageSize")== null ? "1"
					        : request.getParameter("pageSize").equals("") ? "1"
							: request.getParameter("pageSize");
			
			// 2.传递过来的样式
			String styleName = request.getParameter("styleName") == null ? ""
					        : request.getParameter("styleName").equals("") ? ""
							: request.getParameter("styleName");
			logger.info("传递过来的参数:categoryId:"+categoryId+";pageSize:"+pageSize
					 +";styleName:"+styleName);
			
			List<News> newsList = newsService.getNewsListByPubDateDesc(Long.parseLong(categoryId),
					Constant.NEWS_ANGCYNO,0, Integer.parseInt(pageSize));
			
			request.setAttribute("newsList", newsList);
			request.setAttribute("styleName", styleName);
			
		} catch (Exception e) {
			logger.error("得到新闻显示文字出异常Exception(Abnormal to get a press display text):" + e.toString());
//			e.printStackTrace();
			return "error";
		}
		return "newsTitle";
	}
	
	/**
	 * 
	 * @Title: getNewsImage
	 * @Description: 页面显示图内容
	 * @param:
	 * @return:
	 * @exception:
	 */
	@SuppressWarnings("unchecked")
	public String getNewsImage() {

		try {
			
			// 1.根据新闻id查询新闻类型
			String categoryId = request.getParameter("categoryId")== null ? ""
					        : request.getParameter("categoryId").equals("") ? ""
							: request.getParameter("categoryId");			
			String pageSize = request.getParameter("pageSize")== null ? "1"
					        : request.getParameter("pageSize").equals("") ? "1"
							: request.getParameter("pageSize");
			
			// 2.传递过来的样式
			String styleName = request.getParameter("styleName") == null ? ""
					        : request.getParameter("styleName").equals("") ? ""
							: request.getParameter("styleName");
			logger.info("传递过来的参数:categoryId:"+categoryId+";pageSize:"+pageSize
					 +";styleName:"+styleName);
			
			List newsList = newsService.getNewsListByPubDateDesc(Long.parseLong(categoryId),
					Constant.NEWS_ANGCYNO, 0,Integer.parseInt(pageSize));
			
			request.setAttribute("newsList", newsList);
			request.setAttribute("styleName", styleName);
			
		} catch (Exception e) {
			logger.error("得到新闻显示图片出异常Exception(Abnormal to get a press show picture):" + e.toString());
//			e.printStackTrace();
			return "error";
		}
		return "newsImage";
	}

}
