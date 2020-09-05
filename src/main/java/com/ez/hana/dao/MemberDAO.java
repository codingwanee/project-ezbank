package com.ez.hana.dao;

import org.springframework.web.servlet.ModelAndView;

import com.ez.hana.vo.MemberVO;

public interface MemberDAO {
	
	/**
	 * 로그인
	 * @param memberVO 회원 객체
	 */
	public MemberVO login(MemberVO memberVO);
	
	
	/**
	 * 회원가입
	 * 
	 */
	
	
	/**
	 * 회원 상세조회(마이페이지)
	 */
	public MemberVO selectOne(MemberVO loginVO);

}
