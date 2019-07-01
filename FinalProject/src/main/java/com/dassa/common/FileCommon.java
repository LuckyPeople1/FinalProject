package com.dassa.common;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

@Service("fileCommon")
public class FileCommon {

	public static String[] fileUp(MultipartFile fileSet, HttpServletRequest httpServletRequest, String folderName){

		String savePath		= httpServletRequest.getServletContext().getRealPath("/upload/"+folderName+"/");
		System.out.println(savePath);
		String originName	=	fileSet.getOriginalFilename();
		System.out.println(originName);

		String onlyFileName	=	originName.substring(0, originName.lastIndexOf('.'));
		System.out.println(onlyFileName);
		String extension	=	originName.substring(originName.lastIndexOf('.'));
		System.out.println(extension);

		File file	=	null;
		StringBuilder fileName	=	new StringBuilder();
		int num = 0;
		while(true){
			fileName.setLength(0);	//	append 횟수를 초기화
			fileName.append(onlyFileName);	// 기존파일명 불러오기
			if(num != 0){
				fileName.append("_"+num);	// 중복이 있을 경우 num을 붙임
			}
			fileName.append(extension);		// 확장자 붙임
			file	=	new File(savePath+fileName.toString());
			// 해당경로에 파일명을 넣어서 만듦

			// 해당경로에 파일명이 존재하는지 확인
			if(!file.exists()){

				try {
					byte[] bytes	= fileSet.getBytes();

					// 파일을 binary 데이터로 변환 후 전송

					FileOutputStream fileOutputStream	=	new FileOutputStream(file);	// 해당 경로의 파일통로(?)를 만듦

					// 파일 아웃풋 스트림은 전송단위가 적음
					// 버퍼 아웃풋 스트림을 사용하면 전송단위가 높아짐

					BufferedOutputStream bufferedOutputStream	=	new BufferedOutputStream(fileOutputStream); // 보조스트림으로써 주스트림 속도 향상용
					bufferedOutputStream.write(bytes); // 실제로 기록 (Byte를 기록하면서 버퍼에 가지고 있던 file과 함께 기록
//					bufferedOutputStream.write(bytes); // 실제로 기록 (Byte를 기록하면서 버퍼에 가지고 있던 file과 함께 기록
					bufferedOutputStream.close();
					break;

				} catch (IOException e) {
					e.printStackTrace();
				}

			}

			// 존재할경우 num을 증가시키고 다시 반복
			num++;
		}

		String fileInfo[]	=	{fileName.toString(), "/upload/"+fileName.toString()};


		return fileInfo;
	}
}
