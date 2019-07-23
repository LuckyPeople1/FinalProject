package com.dassa.common;

import java.security.MessageDigest;

import org.springframework.stereotype.Component;

@Component("SHA256Util")
public class SHA256Util {
	public String encData(String data)throws Exception{
		MessageDigest mDigest = MessageDigest.getInstance("SHA-256");
		//패스워드값을 바이트배열로 바꿔 mDigest에 저장
		mDigest.update(data.getBytes());
		//SHA-256으로 변환된 데이터를 바이트 배열로 가지고있음
		byte[] msgStr = mDigest.digest();
		//16진수로 변경해서 저장
		StringBuffer sbuf = new StringBuffer();
		for(int i=0; i<msgStr.length; i++) {
			byte tmpStrByte = msgStr[i];
			String tmpEncTxt = Integer.toString((tmpStrByte & 0xff)+0x100,16).substring(1);
			sbuf.append(tmpEncTxt);
		}
		System.out.println(sbuf.toString());
		return sbuf.toString();
	}
}
