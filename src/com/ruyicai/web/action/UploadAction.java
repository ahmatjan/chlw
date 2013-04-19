package com.ruyicai.web.action;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import org.apache.commons.io.FileUtils;

import com.opensymphony.xwork2.ActionContext;
import com.ruyicai.util.BaseAction;
import com.ruyicai.util.ResourceBundleUtil;

public class UploadAction extends BaseAction {
	private static final long serialVersionUID = 1L; 
	public static String TXT=".txt";
	public static String SIGN="^";
	private File upload;
	private String uploadFileName;

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	/**
	 * 上传文件方法
	 * 
	 * @return 页面跳转
	 * @throws IOException
	 *             文件异常
	 */
	public String doUploadFile() throws IOException {
		JSONObject js = new JSONObject();
		Map<String, Object> map = new HashMap<String, Object>();
		String type = request.getParameter("type");
		// 上传路径
		String realpath = ResourceBundleUtil.UPLOAD_PATH;
		// 展示路径
		String path = "upload/";
		// 获取当前毫秒数作为文件名
		long curr = System.currentTimeMillis();
		uploadFileName = String.valueOf(curr)+type+TXT;
		// 得到当前日期作为本日上传的文件夹名
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		Date date = new Date();
		String currTime = sdf.format(date);
		path = path + currTime;
		realpath = realpath + currTime + File.separator;
		List<String> ls = new ArrayList<String>();
		try {
			FileReader read = new FileReader(upload.getPath());
			BufferedReader br = new BufferedReader(read);
			String row;
			while ((row = br.readLine()) != null) {
				if (row.equals("") || row.replace(" ", "").equals("")) {
				} else {
					ls.add(row.trim());
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		Boolean flag = true;
		if (type.equals("ssq")) {
			map = check_ssq(ls);
			flag = (Boolean) map.get("flag");
		}
		if (type.equals("3Dzx")) {
			map = check_zxs(ls);
			flag = (Boolean) map.get("flag");
		}
		if (type.equals("3Dzs")) {
			map = check_zs(ls);
			flag = (Boolean) map.get("flag");
		}
		if (type.equals("3Dzl")) {
			map = check_zl(ls);
			flag = (Boolean) map.get("flag");
		}
		if (type.equals("dlt")) {
			map = check_dlt(ls);
			flag = (Boolean) map.get("flag");
		}
		if (type.equals("plszx")) {
			map = check_zxs(ls);
			flag = (Boolean) map.get("flag");
		}
		if (type.equals("plszs")) {
			map = check_zs(ls);
			flag = (Boolean) map.get("flag");
		}
		if (type.equals("plszl")) {
			map = check_zl(ls);
			flag = (Boolean) map.get("flag");
		}
		if (type.equals("qxc")) {
			map = check_qxc(ls);
			flag = (Boolean) map.get("flag");
		}
		if (type.equals("qlc")) {
			map = check_qlc(ls);
			flag = (Boolean) map.get("flag");
		}
		if (type.equals("plw")) {
			map = check_plw(ls);
			flag = (Boolean) map.get("flag");
		}
		if (type.equals("sc")) {
			map = check_sc(ls);
			flag = (Boolean) map.get("flag");
		}
		if (type.equals("lcb")) {
			map = check_lcb(ls);
			flag = (Boolean) map.get("flag");
		}
		if (type.equals("rjc")) {
			map = check_rjc(ls);
			flag = (Boolean) map.get("flag");
		}
		if (type.equals("sfc")) {
			map = check_sfc(ls);
			flag = (Boolean) map.get("flag");
		}
		if (type.equals("eexw")) {
			map = check_eexw(ls);
			flag = (Boolean) map.get("flag");
		}
		File savefile = new File(new File(realpath), uploadFileName);
		if (!savefile.getParentFile().exists()){
			savefile.getParentFile().mkdirs();
		}
		FileUtils.copyFile(upload, savefile);
		List<Integer> errorValue = (List<Integer>) map.get("errorValue");
		if (errorValue != null) {
			js.put("errorNum", errorValue.size());
			int rmb = (ls.size() - errorValue.size()) * 2;
			js.put("okNum", ls.size() - errorValue.size());
			js.put("rmb", rmb);
			String errorCode = "";
			for (int i = 0; i < errorValue.size(); i++) {
				if (i == errorValue.size() - 1) {
					errorCode = errorCode + errorValue.get(i);
				} else {
					errorCode = errorCode + errorValue.get(i) +SIGN;
				}
			}
			js.put("errorCode", errorCode);
		} else {
			int rmb = ls.size() * 2;
			js.put("okNum", ls.size());
			js.put("rmb", rmb);
			js.put("errorCode", "flag");
		}
		js.put("bool", flag);
		//取消路径
		js.put("real", (realpath + uploadFileName).replace("\\", "-").replace("/", "-"));
		//删除路径
		js.put("realpath", realpath + uploadFileName);
		//展示路径
		js.put("uploadFileName", path+"/"+uploadFileName);
		ActionContext.getContext().put("upload", "上传成功");
		request.setAttribute("msg", "上传成功");
		response.setCharacterEncoding("utf-8");
		response.getWriter().print(js);
		return null;
	}

	/*
	 * 验证排列三和3D组三的格式
	 */
	private Map<String, Object> check_zs(List<String> ls) {
			Map<String, Object> map = new HashMap<String, Object>();
			List<Integer> errorList = new ArrayList<Integer>();
			// 验证格式一
			boolean reOne = true;
			String regex1="^([0-9][,]){2}([0-9])$";
			// 验证格式二
			boolean reTwo = true; 
			String regex2="^[0-9]{3}$";
			for(int i=0;i<ls.size();i++){
				boolean bool1=ls.get(i).matches(regex1);
				if(bool1){
					String[] str=ls.get(i).split(",");
					if((str[0].equals(str[1])&&!str[0].equals(str[2]))||(str[0].equals(str[2])&&!str[0].equals(str[1]))||(str[1].equals(str[2])&&!str[0].equals(str[1]))){		
						reOne = true;
					}else{
						reOne=false;
					}
				}else{
					reOne=false;
				}
				boolean bool2=ls.get(i).matches(regex2);
				if(bool2){
					char[] ch=ls.get(i).toCharArray();
					if((ch[0]==ch[1]&&ch[0]!=ch[2])||(ch[1]==ch[2]&&ch[1]!=ch[0])||(ch[0]==ch[2]&&ch[0]!=ch[1])){
						reTwo = true;
					}else{
						reTwo=false;
					}
				}else{
					reTwo=false;
				}
				if(!reOne&&!reTwo){
					errorList.add(i);
				}
			}
			//根据错误的注码得到返回值
			if(errorList.size()==0||errorList==null){
				map.put("flag", true);
				map.put("errorLine", -1);
			}else{
				map.put("flag", false);
				map.put("errorValue", errorList);
			}
			return map;	
		}

	/*
	 * 验证排列三和3D组六的格式
	 */
	private Map<String, Object> check_zl(List<String> ls) {
			Map<String, Object> map = new HashMap<String, Object>();
			List<Integer> errorList = new ArrayList<Integer>();
			// 验证格式一
			boolean reOne = true;
			String regex1="^([0-9][,]){2}([0-9])$";
			// 验证格式二
			boolean reTwo = true;
			String regex2="^(?!\\d*(\\d)\\d*\\1)[0-9]{3}$";
			for(int i=0;i<ls.size();i++){
				boolean bool=ls.get(i).matches(regex1);
				if(bool){
					String regex="^(?!\\d*(\\d)\\d*\\1)[0-9]{3}$";
					String str=ls.get(i).replace(",", "");
					reOne=str.matches(regex);
				}else{
					reOne=false;
				}
				reTwo=ls.get(i).matches(regex2);
				if(!reOne&&!reTwo){
					errorList.add(i);
				}
			}
			//根据错误的注码得到返回值
			if(errorList.size()==0||errorList==null){
				map.put("flag", true);
				map.put("errorLine", -1);
			}else{
				map.put("flag", false);
				map.put("errorValue", errorList);
			}
			return map;	
		}

	/*
	 * 验证排列三和3D直选的格式
	 */
	private Map<String, Object> check_zxs(List<String> ls) {
			Map<String, Object> map = new HashMap<String, Object>();
			List<Integer> errorList = new ArrayList<Integer>();
			// 验证格式一
			boolean reOne = true;
			String regex1="^([0-9][,]){2}([0-9])$";
			// 验证格式二
			boolean reTwo = true;
			String regex2="^[0-9]{3}$";
			
			for(int i=0;i<ls.size();i++){
				reOne=ls.get(i).matches(regex1);
				reTwo=ls.get(i).matches(regex2);
				if(!reOne&&!reTwo){
					errorList.add(i);
				}
			}
			//根据错误的注码得到返回值
			if(errorList.size()==0||errorList==null){
				map.put("flag", true);
				map.put("errorLine", -1);
			}else{
				map.put("flag", false);
				map.put("errorValue", errorList);
			}
			return map;	
		}
	/*
	 * 验证双色球的格式
	 */
	private Map<String, Object> check_ssq(List<String> ls) {
			Map<String, Object> map = new HashMap<String, Object>();
			List<Integer> errorList = new ArrayList<Integer>();
			// 验证格式一
			boolean reOne = true;
			String regex1="^(?!(?:\\d{2},)*(\\d{2})(?:,\\d{2})*,\\1)(?:0[1-9]|[12][0-9]|3[0-3])(?:,(?:0[1-9]|[12][0-9]|3[0-3])){5}[|](0[1-9]|1[0-6])$";
			// 验证格式二
			boolean reTwo = true;
			String regex2="^(?!(?:\\d{2} )*(\\d{2})(?: \\d{2})* \\1)(?:0[1-9]|[12][0-9]|3[0-3])(?: (?:0[1-9]|[12][0-9]|3[0-3])){5}[ ][+][ ](0[1-9]|1[0-6])$";
			for(int i=0;i<ls.size();i++){
				reOne=ls.get(i).matches(regex1);
				reTwo=ls.get(i).matches(regex2);
				if(!reOne&&!reTwo){
					errorList.add(i);
				}		
			}
			//根据错误的注码得到返回值
			if(errorList.size()==0||errorList==null){
				map.put("flag", true);
				map.put("errorLine", -1);
			}else{
				map.put("flag", false);
				map.put("errorValue", errorList);
			}
			return map;	
		}
	
	/*
	 * 验证七星彩格式
	 */
	private Map<String, Object> check_qxc(List<String> ls) {
			Map<String, Object> map = new HashMap<String, Object>();
			List<Integer> errorList = new ArrayList<Integer>();
			// 验证格式一
			boolean reOne = true;
			String regex1="^([0-9][,]){6}([0-9])$";
			// 验证格式二
			boolean reTwo = true;
			String regex2="^[0-9]{7}$";
			for(int i=0;i<ls.size();i++){
				reOne=ls.get(i).matches(regex1);
				reTwo=ls.get(i).matches(regex2);
				if(!reOne&&!reTwo){
					errorList.add(i);
				}
			}
			//根据错误的注码得到返回值
			if(errorList.size()==0||errorList==null){
				map.put("flag", true);
				map.put("errorLine", -1);
			}else{
				map.put("flag", false);
				map.put("errorValue", errorList);
			}
			return map;	
		}

	/*
	 * 验证排列五格式
	 */
	private Map<String, Object> check_plw(List<String> ls) {
			Map<String, Object> map = new HashMap<String, Object>();
			List<Integer> errorList = new ArrayList<Integer>();
			// 验证格式一
			boolean reOne = true;
			String regex1="^([0-9][,]){4}([0-9])$";
			// 验证格式二
			boolean reTwo = true;
			String regex2="^[0-9]{5}$";
			for(int i=0;i<ls.size();i++){
				reOne=ls.get(i).matches(regex1);
				reTwo=ls.get(i).matches(regex2);
				if(!reOne&&!reTwo){
					errorList.add(i);
				}
			}
			//根据错误的注码得到返回值
			if(errorList.size()==0||errorList==null){
				map.put("flag", true);
				map.put("errorLine", -1);
			}else{
				map.put("flag", false);
				map.put("errorValue", errorList);
			}
			return map;	
		}
	/*
	 * 验证七乐彩格式
	 */
	private Map<String, Object> check_qlc(List<String> ls) {
			Map<String, Object> map = new HashMap<String, Object>();
			List<Integer> errorList = new ArrayList<Integer>();
			// 验证格式一
			boolean reOne = true;
			String regex1="^(?!(?:\\d{2},)*(\\d{2})(?:,\\d{2})*,\\1)(?:0[1-9]|[12][0-9]|30)(?:,(?:0[1-9]|[12][0-9]|30)){6}$";
			// 验证格式二
			boolean reTwo = true;
			String regex2="^(?!(?:\\d{2} )*(\\d{2})(?: \\d{2})* \\1)(?:0[1-9]|[12][0-9]|30)(?: (?:0[1-9]|[12][0-9]|30)){6}$";
			for(int i=0;i<ls.size();i++){
				reOne=ls.get(i).matches(regex1);
				reTwo=ls.get(i).matches(regex2);
				if(!reOne&&!reTwo){
					errorList.add(i);
				}
			}
			//根据错误的注码得到返回值
			if(errorList.size()==0||errorList==null){
				map.put("flag", true);
				map.put("errorLine", -1);
			}else{
				map.put("flag", false);
				map.put("errorValue", errorList);
			}
			return map;	
		}
	/*
	 * 验证22选5格式
	 */
	private Map<String, Object> check_eexw(List<String> ls) {
			Map<String, Object> map = new HashMap<String, Object>();
			List<Integer> errorList = new ArrayList<Integer>();
			// 验证格式一
			boolean reOne = true;
			String regex1="^(0[1-9][,]|1[0-9][,]|2[0-2][,]){4}(0[1-9]|1[0-9]|2[0-2])$";
			// 验证格式二
			boolean reTwo = true;
			String regex2="^(0[1-9] |1[0-9] |2[0-2] ){4}(0[1-9]|1[0-9]|2[0-2])$";
			for(int i=0;i<ls.size();i++){
				reOne=ls.get(i).matches(regex1);
				reTwo=ls.get(i).matches(regex2);
				if(!reOne&&!reTwo){
					errorList.add(i);
				}
			}
			//根据错误的注码得到返回值
			if(errorList.size()==0||errorList==null){
				map.put("flag", true);
				map.put("errorLine", -1);
			}else{
				map.put("flag", false);
				map.put("errorValue", errorList);
			}
			return map;	
		}
	/*
	 * 验证大乐透的格式
	 */
	private Map<String, Object> check_dlt(List<String> ls) {
			Map<String, Object> map = new HashMap<String, Object>();
			List<Integer> errorList = new ArrayList<Integer>();
			// 验证格式一
			boolean reOne = true;
			String regex1="^(?!(?:\\d{2},)*(\\d{2})(?:,\\d{2})*,\\1)(?:0[1-9]|[12][0-9]|3[0-5])(?:,(?:0[1-9]|[12][0-9]|3[0-5])){4}[|](0[1-9]|1[0-2])[,](0[1-9]|1[0-2])$";
			// 验证格式二
			boolean reTwo = true;
			String regex2="^(?!(?:\\d{2} )*(\\d{2})(?: \\d{2})* \\1)(?:0[1-9]|[12][0-9]|3[0-5])(?: (?:0[1-9]|[12][0-9]|3[0-5])){4}[ ][+]([ ](0[1-9]|1[0-2])){2}$";
			for(int i=0;i<ls.size();i++){
				boolean bool1=ls.get(i).matches(regex1);
				if(bool1){
					String str=ls.get(i).substring(ls.get(i).indexOf("|")+1,ls.get(i).length());
					String res[]=str.split(",");
					if(res[0].equals(res[1])){
						reOne=false;
					}else {
						reOne = true;
					}
				}else{
					reOne=false;
				}
				boolean bool2=ls.get(i).matches(regex2);
				if(bool2){
					String str[]=ls.get(i).split(" ");
					if(str[str.length-2].equals(str[str.length-1])){
						reTwo=false;
					}else{
						 reTwo = true;
					}
				}else{
					reTwo=false;
				}
				if(!reOne&&!reTwo){
					errorList.add(i);
				}
			}
			//根据错误的注码得到返回值
			if(errorList.size()==0||errorList==null){
				map.put("flag", true);
				map.put("errorLine", -1);
			}else{
				map.put("flag", false);
				map.put("errorValue", errorList);
			}
			return map;	
		}
	
	/**
	 *  验证足彩四场的格式
	 */
	private Map<String, Object> check_sc(List<String> ls) {
			Map<String, Object> map = new HashMap<String, Object>();
			List<Integer> errorList = new ArrayList<Integer>();
			// 验证格式一
			boolean reOne = true;
			String regex1="^([0,1,2,3][,]){7}([0,1,2,3])$";
			// 验证格式二
			boolean reTwo = true;
			String regex2="^[0,1,2,3]{8}$";
			for(int i=0;i<ls.size();i++){
				reOne=ls.get(i).matches(regex1);
				reTwo=ls.get(i).matches(regex2);
				if(!reOne&&!reTwo){
					errorList.add(i);
				}
			}
			//根据错误的注码得到返回值
			if(errorList.size()==0||errorList==null){
				map.put("flag", true);
				map.put("errorLine", -1);
			}else{
				map.put("flag", false);
				map.put("errorValue", errorList);
			}
			return map;	
		}
	/**
	 *  验证足彩六场半的格式
	 */
	private Map<String, Object> check_lcb(List<String> ls) {
			Map<String, Object> map = new HashMap<String, Object>();
			List<Integer> errorList = new ArrayList<Integer>();
			// 验证格式一
			boolean reOne = true;
			String regex1="^([0,1,3][,]){11}([0,1,3])$";
			// 验证格式二
			boolean reTwo = true;
			String regex2="^[0,1,3]{12}$";
			for(int i=0;i<ls.size();i++){
				reOne=ls.get(i).matches(regex1);
				reTwo=ls.get(i).matches(regex2);
				if(!reOne&&!reTwo){
					errorList.add(i);
				}
			}
			//根据错误的注码得到返回值
			if(errorList.size()==0||errorList==null){
				map.put("flag", true);
				map.put("errorLine", -1);
			}else{
				map.put("flag", false);
				map.put("errorValue", errorList);
			}
			return map;	
		}
	
	/**
	 *  验证足彩任九场的格式
	 */
	private Map<String, Object> check_rjc(List<String> ls) {
			Map<String, Object> map = new HashMap<String, Object>();
			List<Integer> errorList = new ArrayList<Integer>();
			// 验证格式一
			boolean reOne = true;
			String regex1="^([0,1,3][,]){8}([0,1,3])$";
			// 验证格式二
			boolean reTwo = true;
			String regex2="^[0,1,3]{9}$";
			for(int i=0;i<ls.size();i++){ 
				if(ls.get(i).length()==27){
						String str=ls.get(i);
						if(ls.get(i).replace("#", "").length()==22){
							str=ls.get(i).replace("#", "*");
						}
						if(str.lastIndexOf("*")==26){				
							str=str.replace(",*", "").replace("*,","");
						}else{
							str=str.replace("*,","");
						}
						reOne=str.matches(regex1);
				}else {
					reOne=false;
				}
				if(ls.get(i).length()==14){
					String str=ls.get(i);
					if(ls.get(i).replace("#", "").length()==9){
						str=ls.get(i).replace("#", "*");
					}	
					str=str.replace("*","");
					reTwo=str.matches(regex2);
				}else{
					reTwo=false;
				}
				if(!reOne&&!reTwo){
					errorList.add(i);
				}
			}
			//根据错误的注码得到返回值
			if(errorList.size()==0||errorList==null){
				map.put("flag", true);
				map.put("errorLine", -1);
			}else{
				map.put("flag", false);
				map.put("errorValue", errorList);
			}
			return map;	
		}
	/**
	 *  验证足彩胜负彩的格式
	 */
	private Map<String, Object> check_sfc(List<String> ls) {
			Map<String, Object> map = new HashMap<String, Object>();
			List<Integer> errorList = new ArrayList<Integer>();
			// 验证格式一
			boolean reOne = true;
			String regex1="^([0,1,3][,]){13}([0,1,3])$";
			// 验证格式二
			boolean reTwo = true;
			String regex2="^[0,1,3]{14}$";
			for(int i=0;i<ls.size();i++){
				reOne=ls.get(i).matches(regex1);
				reTwo=ls.get(i).matches(regex2);
				if(!reOne&&!reTwo){
					errorList.add(i);
				}
			}
			//根据错误的注码得到返回值
			if(errorList.size()==0||errorList==null){
				map.put("flag", true);
				map.put("errorLine", -1);
			}else{
				map.put("flag", false);
				map.put("errorValue", errorList);
			}
			return map;	
		}
	
	
	/**
	 * 删除文件
	 */
	public void deleteFile() {
		try {
			String path = request.getParameter("path");
			if (path.indexOf("-") > 0) {
				path = path.replace("-", "\\");
			}
			File file = new File(path);
			if (file.exists()) {
				file.delete();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
