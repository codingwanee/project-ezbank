package com.ez.hana.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ez.hana.dao.CertifyDAO;
import com.ez.hana.vo.CertHistoryVO;

@Service
public class AdCertifyServiceImpl implements AdCertifyService {

	@Autowired
	CertifyDAO certifyDAO;
	
	
	// 신청기록 전체조회 > 신청목록
	@Override
	public List<CertHistoryVO> getCertList() {
		List<CertHistoryVO> certList = certifyDAO.selectAllHistory();
		return certList;
	}
	
	
	
	
}
