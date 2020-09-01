package com.ez.hana.home.service;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ez.hana.home.dao.CertifyDAO;
import com.ez.hana.vo.CertFileVO;

@Service
public class CertifyServiceImpl implements CertifyService {

	@Autowired
	CertifyDAO certifyDAO;
	
	@Override
	public void storeUploadedFile(File file) {
	
		
		
	}
	
	@Override
	public int getCertIdSeq() {
		int certId = certifyDAO.selectSeq();
		return certId;
	}

	@Override
	public void insertFile(CertFileVO certFileVO) {
		certifyDAO.insertFile(certFileVO);
		
	}
}
