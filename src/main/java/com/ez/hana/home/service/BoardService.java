package com.ez.hana.home.service;

import java.util.List;

import com.ez.hana.vo.BoardVO;

public interface BoardService {
	
	/**
	 * 전체 게시글 조회
	 * @return
	 */
	public List<BoardVO> selectAllPostings();
	
	/**
	 * 공지 게시글 전체조회
	 */
	public List<BoardVO> selectAllNotices();
	
	
	/**
	 * 상세게시글 조회
	 */
	public BoardVO selectOnePosting();
	
	/**
	 * 게시글 수정
	 */
	
	
	/**
	 * 게시글 삭제
	 */
	
	/**
	 * 
	 */

}
