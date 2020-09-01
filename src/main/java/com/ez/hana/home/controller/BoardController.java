package com.ez.hana.home.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ez.hana.home.service.BoardService;
import com.ez.hana.vo.BoardVO;
import com.ez.hana.vo.NoticeVO;

@RequestMapping("/board")
@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping
	public ModelAndView boardList() {	
		List<BoardVO> boardList = boardService.selectAllPostings();
		ModelAndView mav = new ModelAndView("board/list"); // viewName을 인자로 넘겼다
		mav.addObject("boardList", boardList); // 공유영역에 올리기
		
		return mav;		
	}
	
	@GetMapping("/notice")
	public String noticeList() {
		NoticeVO noticeVO = new NoticeVO();
		
		return "board/notice";
	}

}
