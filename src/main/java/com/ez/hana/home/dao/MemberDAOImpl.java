package com.ez.hana.home.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ez.hana.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public MemberVO login(MemberVO memberVO) {
		MemberVO loginVO = sqlSession.selectOne("home.dao.MemberDAO.login", memberVO);
		return loginVO;
	}
	
	@Override
	public MemberVO selectOne(MemberVO loginVO) {
		MemberVO memberVO = sqlSession.selectOne("home.dao.MemberDAO.selectOne", loginVO);
		return memberVO;
	}
}
