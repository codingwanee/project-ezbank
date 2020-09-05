package com.ez.hana.dao;

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
	

}
