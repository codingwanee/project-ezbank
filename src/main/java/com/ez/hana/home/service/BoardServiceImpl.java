package com.ez.hana.home.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ez.hana.home.dao.BoardDAO;
import com.ez.hana.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO boardDAO;	
	
	/*
	@Override
	public List<BoardVO> selectAllPostings(String boardType) {
		List<BoardVO> boardList = boardDAO.selectAll(boardType);
		return boardList;
	}
	*/
	
	@Override
	public List<BoardVO> selectAllPostings() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<BoardVO> selectAllNotices() {
		List<BoardVO> noticeList = boardDAO.selectAllNotices();
		return noticeList;
	}

	@Override
	public BoardVO selectOnePosting() {
		// TODO Auto-generated method stub
		return null;
	}



}
