package com.pinetreelch.infra.common.util;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import com.pinetreelch.infra.common.constants.Constants;
import com.pinetreelch.infra.modules.member.Member;

public class UtilUpload {

	public static void upload (MultipartFile multipartFile, String className, Member dto) throws Exception {
		String fileName = multipartFile.getOriginalFilename();    		
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
		String uuid = UUID.randomUUID().toString();
		String uuidFileName = uuid + "." + ext;
		String pathModule = className;						//member
//		String nowString = UtilDateTime.nowString();		//현재시간 문자열 ex ) 2014-02-02
//		String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10);   // 2022/02/02로 바
		String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/";							//실제 저장위치 //D://factory/ws_sts_4151/aria/src/main/webapp/resources/uploaded/2022//10/07
		String pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/";			//보여주기위한 위치:/resources/uploaded"
		
		createPath(path);
		  
		multipartFile.transferTo(new File(path + uuidFileName));
		
		dto.setPath(pathForView);
		dto.setOriginalName(fileName);
		dto.setUuidName(uuidFileName);
		dto.setExt(ext);
		dto.setSize(multipartFile.getSize());

	}
	
	
	public static void createPath (String path) {
		File uploadPath = new File(path);
		
		if (!uploadPath.exists()) {
			uploadPath.mkdir();
		} else {
			// by pass
		}
	}
}
