package com.ez.hana.home.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ez.hana.home.dao.MemberDAO;
import com.ez.hana.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public MemberVO login(MemberVO memberVO) {		
		return memberDAO.login(memberVO);
	}

	@Override
	public MemberVO mypage(MemberVO loginVO) {
		return memberDAO.selectOne(loginVO);
	}
}