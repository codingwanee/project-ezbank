package com.ez.hana.home.service;

import java.io.File;

import com.ez.hana.vo.CertFileVO;

public interface CertifyService {

	
	
	/**
	 * 업로드 파일 저장
	 * @param
	 */
	public void storeUploadedFile(File file);
	
	/**
	 * 시퀀스
	 */
	public int getCertIdSeq();

	public void insertFile(CertFileVO certFileVO);
	
}
