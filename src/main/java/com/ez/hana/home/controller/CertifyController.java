package com.ez.hana.home.controller;

import java.io.File;
import java.util.Iterator;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.ez.hana.home.service.CertifyService;
import com.ez.hana.vo.CertFileVO;

@Controller
public class CertifyController {
	
	@Autowired
	ServletContext servletContext;	
	
	@Autowired
	CertifyService certifyService;
	
	// 회원인증 페이지
	@GetMapping("/certify")
	public String cerifyPage() {			
		return "/home/certify/certify";
	}	
	
	// 회원인증 기능
	@PostMapping("/certify")
	public ModelAndView fileUpload(MultipartHttpServletRequest mRequest) throws Exception {

		CertFileVO certFileVO = new CertFileVO();
		String oriFileName = null;
		String storedFileName = null;
		
		ModelAndView mav = new ModelAndView("/certify/completed");
		
		// String uploadDir = servletContext.getRealPath("/fileStorage/");
		// System.out.println(uploadDir);
		String uploadDir = "d:/Polytech/fileStorage/";

		Iterator<String> iter = mRequest.getFileNames();
		
		while (iter.hasNext()) {

			String formFileName = iter.next();
			MultipartFile mFile = mRequest.getFile(formFileName);
			
			System.out.println(formFileName);

			// 원본 파일명
			oriFileName = mFile.getOriginalFilename();

			if (oriFileName != null && !oriFileName.equals("")) {				

				// 확장자 처리
				String ext = "";
				// 뒤쪽에 있는 . 의 위치
				int index = oriFileName.lastIndexOf(".");
				if (index != -1) {
					// 파일명에서 확장자명(.포함)을 추출
					ext = oriFileName.substring(index);
				}
	
				// 고유한 파일명 만들기
				storedFileName = "mlec-" + UUID.randomUUID().toString() + ext;

				// 임시저장된 파일을 원하는 경로에 저장
				mFile.transferTo(new File(uploadDir + storedFileName));
			}
		}
		int certId = getCertId();
		certFileVO.setOrName(oriFileName);
		certFileVO.setStName(storedFileName);
		certFileVO.setCertId(certId);
		
		System.out.println(certFileVO);
		//certifyService.insertFile(certFileVO);
		//서비스를 호출을 해서 매개변수로 fileVO insert를 시켜야됌
		return mav;
	}
	
	int getCertId() {
		int certId = certifyService.getCertIdSeq();	
		System.out.println("getCertId : " + certId);
		return certId;
	}
}
