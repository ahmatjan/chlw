package com.ruyicai.util;

/*
 * @(#)CookieCrypt.java
 * 
 * Create Version:	1.0.0
 * Author:			Cobra Pang
 * Create Date:		2007-12-17
 * 
 * Copyright (c) 2006 UTStarcom(China) Corporation. All Right Reserved.
 */
 
import java.io.IOException;
import java.security.SecureRandom;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;
 
 
/**
 * CookieCrypt
 * @author Cobra Pang
 * @version	1.0.0	2007-12-17
 */
public class CookieCrypt {
	// Crypt Key
	private static byte[] desKey="cbh5hg67hgf".getBytes();
	 static{

	        System.setProperty("jmagick.systemclassloader","no");
	    }  

	public byte[] getDesKey() {
		return desKey;
	}

	public void setDesKey(byte[] desKey) {
		this.desKey = desKey;
	}

	/**
	 * DES Encoder
	 * @param plainText
	 * @return 
	 * @throws Exception
	 */
	public byte[] desEncrypt(byte[] plainText) throws Exception {   
		SecureRandom sr = new SecureRandom();   
		byte rawKeyData[] = desKey;
		
		DESKeySpec dks = new DESKeySpec(rawKeyData);   
		SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DES");   
		SecretKey key = keyFactory.generateSecret(dks);   
		Cipher cipher = Cipher.getInstance("DES");   
		cipher.init(Cipher.ENCRYPT_MODE,   key,   sr);   
		
		byte data[] = plainText;   
		byte encryptedData[] = cipher.doFinal(data);   
		return encryptedData;   
	}
	
	/**
	 * DES Decoder
	 * @param encryptText
	 * @return
	 * @throws Exception
	 */
	public static byte[] desDecrypt(byte[] encryptText) throws Exception {
	       
        SecureRandom sr = new SecureRandom();
        byte rawKeyData[] = desKey;
        DESKeySpec dks = new DESKeySpec(rawKeyData);
        
        SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DES");
        SecretKey key = keyFactory.generateSecret(dks);
        
        Cipher cipher = Cipher.getInstance("DES");
        
        cipher.init(Cipher.DECRYPT_MODE, key, sr);
        
        byte encryptedData[] = encryptText;
        byte decryptedData[] = cipher.doFinal(encryptedData);
        return decryptedData;
    }
	
	/**
	 * Cookie Encoder
	 * @param input
	 * @return
	 * @throws Exception
	 */
	public String encrypt(String input) throws Exception {
		return base64Encode(desEncrypt(input.getBytes()));
	}
	
	/**
	 * Cookie Decoder
	 * @param input
	 * @return
	 * @throws Exception
	 */
	public static String decrypt(String input) throws Exception {
		byte[] result = base64Decode(input);
		return new String(desDecrypt(result) , "utf-8");
	}
	/**
	 * Base64 Encode
	 * @param s
	 * @return
	 */
	public static String base64Encode(byte[] s) {
		if (s == null) return null;
		BASE64Encoder b = new sun.misc.BASE64Encoder();
		return b.encode(s);
	}
	
	/**
	 * Base64 Decode
	 * @param s
	 * @return
	 * @throws IOException
	 */
	public static byte[] base64Decode(String s) throws IOException {
		if (s == null) return null;
		BASE64Decoder  decoder = new BASE64Decoder();
		byte[] b = decoder.decodeBuffer(s);
		return b;		
	}
 
	public static void main(String[] args) throws Exception {
	/*	Map <String ,String>  map= new HashMap <String ,String> ();
		map.put("双色球", "<a href='shuangseqiu.html'>双色球</a>");
		map.put("双色球1", "<a href='shuangseqiu.html'>双色球</a>");
		map.put("双色球2", "<a href='shuangseqiu.html'>双色球</a>");
		map.put("双色球3", "<a href='shuangseqiu.html'>双色球</a>");
		String key = "此处内容需要使用js编辑器双色球此处内容需要使用js编辑器双色球此处内容需要使用js编辑器双色球此处内容需要使用js编辑器双色球此处内容需要使用js编辑器双色球此处内容需要使用js编辑器双色球此处内容需要使用js编辑器双色球此处内容需要使用js编辑器<a>双色球</a>此处内容需要使用js编辑器双色球此处内容需要使用js编辑器双色球此处内容需要使用js编辑器双色球此处内容需要使用js编辑器双色球此处内容需要使用js编辑器双色球";
		String aa="";
		System.out.println(new Date().getTime());
		String s= "[双色球]";
		System.out.println(key.indexOf(s));
		while(key.length()>0){
			//获取<a 所在的位置
			int index = key.indexOf("<a");	
			//获取<a 之前文字
			String str = key.substring(0, index+1);
			//将剩余的部分赋值给key
			key= key.substring(index+1, key.length());
			if(index==-1){
				str = key;
				key ="";
					}
			//如果str中存在</a,将<a>到</a 之间的文字拼接到aa中，同时将str赋值为</a  之后的文字
			if(str.indexOf("</a>")>-1){
			aa+=str.substring(0,str.indexOf("</a>")+1);
			str = str.substring(str.indexOf("</a")+1,str.length());
			}
			Iterator it = map.entrySet().iterator();
		   	 while(it.hasNext()){
		   		Map.Entry  entery= (Map.Entry) it.next();
		   		String reg =entery.getKey().toString();
	   			String regs =entery.getValue().toString();
	   			if(str.indexOf(reg)>-1){
	   				str = str.replaceAll(reg, regs);
	   			}
		   	 }
		   	 aa+=str;
		}
		
				System.out.println(aa);
				System.out.println(new Date().getTime());
				JSONObject torderObj= JSONObject.fromObject(new String("{value:{id:2012010200894160,desc:null,body:{amt:1000,batchcode:2012002,betRequests:[{amt:1000,betcode:0001090507^0001030804^0001060107^0001040800^0001050507^}],bettype:2,buyuserno:00827505,caseLotRequest:null,channel:679,lotmulti:1,lotno:F47103,lotsType:0,memo:,oneamount:200,paytype:1,subchannel:00092493,subscribeRequests:[],userno:00827505},amt:1000,betnum:5,lotmulti:1,lotno:F47103,instate:1,betcode:0001090507^0001030804^0001060107^0001040800^0001050507^,userno:00827505,batchcode:2012002,subaccountType:null,lotsType:0,orderinfo:0001090507^0001030804^0001060107^0001040800^0001050507^_1_200_1000,endtime:null,prizeinfo:null,paystate:3,orderpreprizeamt:0,hasachievement:0,orderamt:null,modifytime:null,orderprize:null,paytype:1,orderstate:1,bettype:2,prizestate:3,orderprizeamt:0,winbasecode:020009,ordertype:0,tsubscribeflowno:null,tlotcaseid:null,createtime:1325504612796,buyuserno:00827505,memo:null,subaccount:null,canceltime:null,alreadytrans:0,encashtime:null,eventcode:null},errorCode:0,isDepreciated:false}"));
				SelectAllAction.betcodeFormat(torderObj.getJSONObject("value"), true, 5 ,null ,null);
				
		 String code ="";
		 String wincode ="172";
		 for(int i=0;i<wincode.length();i++){
				if("".equals(code)){
					code =wincode.substring(i, i+1);
				}else{
				code =code+","+wincode.substring(i, i+1);
				}
			}
			System.out.println(code+"ffff");
			String aa="2011/11/5 12.49.48.0";
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			System.out.println(df.format(aa));*/
		System.out.println("------------");
			
			
	}
} 