package com.icia.spring.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.spring.dto.BoardDTO;
import com.icia.spring.service.BoardService;


@Controller
public class BoardController {
	
	ModelAndView mav;

	@Autowired
	private HttpSession session;
	
	@Autowired
	private BoardService service;

	@RequestMapping(value="/boardlistpaging")
	public ModelAndView boardlistpaging(@RequestParam(value="page", required=false, defaultValue="1") int page) {
		
		mav = service.boardlistpaging(page);
		
		return mav;
	}
	
	@RequestMapping(value="/BoardView")
	public ModelAndView boardList(@RequestParam("bnumber") int bnumber, @RequestParam("page") int page) {
		System.out.println("controller : "+bnumber);
		
		mav = service.getBoardDetail(bnumber, page,1);
		return mav;
	}
	
	@RequestMapping(value="/getBUF")
	public ModelAndView boardUpdateForm(@ModelAttribute BoardDTO board, int page) {
		mav.addObject("board",board);
		mav.addObject("page",page);
		mav.setViewName("BoardUpdate");
		return mav;
	}
	
	@RequestMapping(value = "/BoardUpdate")
	public ModelAndView BoardUpdate(@ModelAttribute BoardDTO board, int page) {
		mav = new ModelAndView();
		int result = service.BoardUpdate(board);
		
		if(result==1) {
			mav.setViewName("redirect:/BoardView?bnumber="+board.getBnumber()+"&&page="+page);
		}
		System.out.println("Update controller : "+mav);
		return mav;
	}
	
	@RequestMapping(value = "/boardWrite")
	public ModelAndView BoardWrite(@ModelAttribute BoardDTO board) throws IllegalStateException, IOException {
		
		mav = service.BoardWrite(board);
		return mav;
	}
	
	@RequestMapping(value = "/BoardDelete")
	public ModelAndView BoardDelete(@RequestParam("bnumber") int bnumber) {
		
		mav = service.BoardDelete(bnumber);
		return mav;
	}
	
	@RequestMapping(value = "/BoardListUpdate")
	public ModelAndView BoardListUpdate(@RequestParam("bnumber") int bnumber, @RequestParam("page") int page) {
		
		mav=service.getBoardDetail(bnumber, page,2);
				
		return mav;
	}
}
