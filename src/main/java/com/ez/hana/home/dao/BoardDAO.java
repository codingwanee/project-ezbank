package com.ez.hana.home.dao;

import java.util.List;

import com.ez.hana.vo.BoardVO;

public interface BoardDAO {
	
	/**
	 * 게시판 목록 불러오기
	 */
	public List<BoardVO> selectAll(String boardType);
	
	public List<BoardVO> selectAllNotices();
	
	/**
	 * 상세글 조회
	 * @param postId 게시물번호
	 */
	public BoardVO selectOne(int postId);
	
	/**
	 * 새글등록
	 */
	public void insert(BoardVO boardVO);
	
	/**
	 * 답글등록
	 * @param boardVO 게시물 객체
	 */
	public void insertReply(BoardVO boardVO);
	
	/**
	 * 글 수정
	 * @param boardVO 게시물 객체
	 */
	public void update(BoardVO boardVO);
	
	/**
	 * 글 삭제
	 * @param postId 게시물번호
	 */
	public void delete(int postId);
}
