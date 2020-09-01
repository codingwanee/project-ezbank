package com.ez.hana.home.dao;

import java.io.File;

import com.ez.hana.vo.CertFileVO;

public interface CertifyDAO {
	
	/**
	 * 받아온 파일 DB에 저장
	 */
	public void insert(File file);
	
	/**
	 * CertId 에 대한 시퀀스 반환
	 */
	public int selectSeq();

	public void insertFile(CertFileVO certFileVO);

}
