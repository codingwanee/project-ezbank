package com.ez.hana.dao;

import java.util.List;

import com.ez.hana.vo.CertFileVO;
import com.ez.hana.vo.CertHistoryVO;

public interface CertifyDAO {
	
	/**
	 * 파일정보 저장
	 * @param certFileVO
	 */
	public void insertFile(CertFileVO certFileVO);
	
	
	/**
	 * CertId 에 대한 시퀀스 반환
	 * @return seq
	 */
	public int selectSeq();
	

	/**
	 * 신청기록 저장
	 * @param certHistoryVO
	 */
	public void insertHistory(CertHistoryVO certHistoryVO);

	
	
	/**
	 * 신청기록 전체조회
	 * @return certList
	 */
	public List<CertHistoryVO> selectAllHistory();


}
