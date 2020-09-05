package com.ez.hana.home.controller;

import java.io.File;
import java.util.Iterator;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.ez.hana.dao.MemberDAO;
import com.ez.hana.home.service.CertifyService;
import com.ez.hana.vo.CertFileVO;
import com.ez.hana.vo.CertHistoryVO;
import com.ez.hana.vo.MemberVO;

@Controller
public class CertifyController {
	
	@Autowired
	CertifyService certifyService;
	
	@Autowired
	MemberDAO memberDAO;
	
	/* === 비대면인증 페이지로 이동 === */		
	@GetMapping("/certify")
	public String cerifyPage() {			
		return "/home/certify/certify";
	}	
	
	/* === 파일 업로드 === */		
	@PostMapping("/certify")
	public ModelAndView applyCertification(MultipartHttpServletRequest multiRequest, HttpServletRequest request) throws Exception {
	
		
		CertFileVO certFileVO = new CertFileVO();
		String originName = null;
		String saveName = null;
		
		// 신청자 정보 반환받기
		HttpSession session = request.getSession();
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		MemberVO applicantVO = memberDAO.selectOne(loginVO);
		
		String nation = applicantVO.getNationality(); // 신청자의 국적정보 반환
		String certId = nation + String.format("%06d", getCertId());// 국적 정보와 시퀀스가 조합된 12자리의 신청번호 생성
		
		ModelAndView mav = new ModelAndView("/home/certify/completed");
		
		String uploadDir = "d:/Polytech/fileStorage/";

		Iterator<String> iter = multiRequest.getFileNames();
		
		while (iter.hasNext()) {
			
			String formFileName = iter.next();
			MultipartFile mFile = multiRequest.getFile(formFileName);

			// 원본 파일명
			originName = mFile.getOriginalFilename();
			
			if (originName != null && !originName.equals("")) {				

				// 확장자 처리
				String ext = "";
				// 뒤쪽에 있는 . 의 위치
				int index = originName.lastIndexOf(".");
				if (index != -1) {
					// 파일명에서 확장자명(.포함)을 추출
					ext = originName.substring(index);
				}

				// 고유한 파일명 만들기
				saveName = "cert-" + UUID.randomUUID().toString() + ext;			

				// 임시저장된 파일을 원하는 경로에 저장
				mFile.transferTo(new File(uploadDir + saveName));

			}
			certFileVO.setCertId(certId);
			certFileVO.setOriginName(originName);
			certFileVO.setSaveName(saveName);
		}				

		certifyService.saveFileInfo(certFileVO);
		
		/* === 신청기록 생성 === */
		CertHistoryVO certHistoryVO = new CertHistoryVO();
		
		certHistoryVO.setCertId(certId);
		certHistoryVO.setApplicantId(applicantVO.getId());
		certHistoryVO.setApplicantNm(applicantVO.getName());
		certHistoryVO.setApplicantNtn(applicantVO.getNationality());
		certHistoryVO.setFileName(saveName);
		
		certifyService.saveCertHistory(certHistoryVO);
		
		return mav;
	}
	
	
	// 시퀀스 반환
	int getCertId() {
		int certId = certifyService.getSeq();
		return certId;
	}
	
	


}
