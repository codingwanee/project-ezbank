package com.ez.hana.admin.service;

import java.util.List;

import com.ez.hana.vo.CertHistoryVO;

public interface AdCertifyService {
	
	/**
	 * 신청기록 전체조회
	 * @return certList
	 */
	public List<CertHistoryVO> getCertList();

}
