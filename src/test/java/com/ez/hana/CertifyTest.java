package com.ez.hana;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ez.hana.vo.CertHistoryVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring/*.xml"})
public class CertifyTest {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Test
	public void 맵퍼테스트() {
		CertHistoryVO vo = new CertHistoryVO();
		
		vo.setApplicant("aaa");
		vo.setCertId("bbb");
		vo.setRegFid("ccc");
		vo.setStatus("aaa");
		
		sqlSession.insert("certifyMapper.insertHistory", vo);
		
	}

	
	
}
