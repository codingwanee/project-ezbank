package com.ez.hana.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ez.hana.vo.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<BoardVO> selectAll(String boardType) {
		List<BoardVO> boardList = sqlSession.selectList("home.dao.BoardDAO.selectAll", boardType);
		return boardList;
	}
	
	@Override
	public List<BoardVO> selectAllNotices() {
		List<BoardVO> boardList = sqlSession.selectList("home.dao.BoardDAO.selectAllNotices");
		return boardList;
	}

	@Override
	public BoardVO selectOne(int postId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insert(BoardVO boardVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertReply(BoardVO boardVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(BoardVO boardVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int postId) {
		// TODO Auto-generated method stub
		
	}
	
	

}
