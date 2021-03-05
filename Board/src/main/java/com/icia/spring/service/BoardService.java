package com.icia.spring.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.icia.spring.dao.BoardDAO;
import com.icia.spring.dto.BoardDTO;
import com.icia.spring.dto.PageDTO;

@Service
public class BoardService {

	ModelAndView mav;
	
	@Autowired
	private BoardDAO dao;
	
	@Autowired
	private HttpSession session;
	
	//페이징 처리용 상수 선언
	private static final int PAGE_LIMIT=10; //한 페이지에 보여질 글 갯수
	private static final int BLOCK_LIMIT=5; //한 화면에 보여질 페이지 숫자 갯수
	
	public ModelAndView boardlistpaging(int page) {
		mav=new ModelAndView();
		int listCount = dao.listCount();
		//현재 페이지에 보여줘야할 글 범위 지정
		int startRow = (page-1)*PAGE_LIMIT;
		int endRow = page*PAGE_LIMIT-1;
		
		PageDTO paging=new PageDTO();
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);
		List<BoardDTO> boardList = dao.boardListPaging(paging);
		
		int maxPage= (int)(Math.ceil((double)listCount/PAGE_LIMIT));
		int startPage= (((int)(Math.ceil((double)page/BLOCK_LIMIT)))-1)*BLOCK_LIMIT+1;
		int endPage= startPage+BLOCK_LIMIT-1;
		
		if(endPage>maxPage) {
			endPage=maxPage;
		}
		
		paging.setPage(page);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		paging.setMaxPage(maxPage);
		
		mav.addObject("paging", paging);
		mav.addObject("boardlist",boardList);
		mav.setViewName("BoardList");
		
		return mav;
	}

	public ModelAndView getBoardDetail(int bnumber, int page, int section) {
		mav= new ModelAndView();
		BoardDTO bview = dao.getBoardDetail(bnumber);
		
		mav.addObject("page",page);
		mav.addObject("board", bview);
		
		if(section==1) {
			mav.setViewName("BoardDetail");
		} else {
			mav.setViewName("BoardUpdate");
		}
		
		
		return mav;
	}

	public int BoardUpdate(BoardDTO board) {
		int result = dao.BoardUpdate(board);

		
		return result;
	}

	public ModelAndView BoardWrite(BoardDTO board) throws IllegalStateException, IOException {
		// TODO Auto-generated method stub
		mav = new ModelAndView();
		
		MultipartFile bfile=board.getBfile();
		
		String bfilename=bfile.getOriginalFilename();
		bfilename=System.currentTimeMillis()+"_"+bfilename;
		
		String savePath="D:\\SPRING\\Soyun_spring\\src\\main\\webapp\\resources\\uploadFile\\"+bfilename;
	
		
		if(!bfile.isEmpty()) {
			bfile.transferTo(new File(savePath));			
		}
		
		board.setBfilename(bfilename);
		
		int result=dao.writeBoard(board);
		
		if(result>0) {
			mav.addObject("msg", "작성 성공 :)");
			System.out.println(board.getBnumber());
			System.out.println("service 보드넘버 : " + board.getBnumber());
			mav.setViewName("redirect:/boardlistpaging");
		} else {
			mav.addObject("msg", "작성 실패:(");
			mav.setViewName("boardwrite");
		}
		
		return mav;
	}

	public ModelAndView BoardDelete(int bnumber) {
		mav=new ModelAndView();
		int result = dao.boardDelete(bnumber);
		
		if(result>0) {
			mav.addObject("msg", "삭제성공");
			mav.setViewName("redirect:/boardlistpaging");
		}
		else {
			mav.addObject("msg", "삭제실패");
			mav.setViewName("redirect:/boardlistpaging");
		}
		return mav;
	}

	public int BoardListUpdate(int bnumber) {
		 mav=new ModelAndView();
		 BoardDTO board = new BoardDTO();
		 board = dao.getBoardDetail(bnumber);
				 
		 return dao.BoardUpdate(board);
	}

}
