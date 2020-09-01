package com.ez.hana.home.dao;

import java.io.File;
import java.util.Iterator;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ez.hana.vo.CertFileVO;

@Repository
public class CertifyDAOImpl implements CertifyDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public void insert(File file) {


		//Iterator<String> iter = file.
	}
	
	@Override
	public int selectSeq() {		
		int certId = sqlSession.selectOne("certifyMapper.selectSeq");
		return certId;
	}

	@Override
	public void insertFile(CertFileVO certFileVO) {
		sqlSession.insert("certifyMapper.insertFile", certFileVO);
	}

}
