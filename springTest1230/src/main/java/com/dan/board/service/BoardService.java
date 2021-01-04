package com.dan.board.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dan.board.dao.DataAccessObject;
import com.dan.board.dto.DataTransferObject;
import com.dan.board.dto.PageTransferObject;

@Service
public class BoardService {
	
	@Autowired
	private DataAccessObject dao;
	
	ModelAndView mav;
	
	public ModelAndView regBoard(DataTransferObject dto) throws IllegalStateException, IOException {
		
		mav = new ModelAndView();
		// 파일 가져오기
		MultipartFile bfile = dto.getBfile();
		// 파일 이름 가져오기
		String bfilename = bfile.getOriginalFilename();
		// 파일 이름 중복처리 (밀리세컨드로 뽑기)
		bfilename = System.currentTimeMillis() + "_" + bfilename;
		// 저장 경로 입력 + (내 파일이름)
		String savePath = "C:\\Users\\zmffh\\OneDrive\\Desktop\\Spring\\springTest1230\\src\\main\\webapp\\resources\\upload\\"+bfilename;
			
		System.out.println(bfilename);
		
		if(!bfile.isEmpty()) {
			// throws 로 바로 에러처리
			bfile.transferTo(new File(savePath));
		}
		
		dto.setBfilename(bfilename);
		
		if(dao.regBoard(dto)>0) {
				mav.setViewName("redirect:/Blist");
			}else {
				mav.addObject("is","실패하였습니다.");
				mav.setViewName("Board/result");
			}
		
		return mav;
	}

	public ModelAndView getBoardList() {
		
		mav = new ModelAndView();
			
		List<DataTransferObject> list = dao.getBoardList();
		mav.addObject("list",list);	
		mav.setViewName("Board/List");	
		
		return mav;
	}

	public ModelAndView getBoard(DataTransferObject dto, int page) {
			
			mav =  new ModelAndView();
			dto = dao.getBoard(dto);
			mav.addObject("page",page);
			mav.addObject("board",dto);
			mav.setViewName("Board/View");
		
		return mav;
	}

	public ModelAndView getModBoard(String bnum) {
		
			mav = new ModelAndView();
			mav.addObject("board",dao.getModBoard(bnum));
			mav.setViewName("Board/mod");
		
		return mav;
	}

	public ModelAndView modBoard(DataTransferObject dto) {
			
			mav = new ModelAndView();
			if(dao.modBoard(dto)>0) mav.setViewName("redirect:/Blist");
			else {
				mav.addObject("is","수정 실패");
				mav.setViewName("Board/result");};
			
			
		return mav;
	}

	public ModelAndView delBoard(String bnum) {
			mav = new ModelAndView();
			if(dao.delBoard(bnum)>0) mav.setViewName("redirect:/Blist");
			else {
				mav.addObject("is","삭제 실패");
				mav.setViewName("Board/result");};
			
		return mav;
	}

	public List<DataTransferObject> insReply(DataTransferObject dto) {
		
		return dao.insReply(dto);
	}

	public List<DataTransferObject> getReply(DataTransferObject dto) {
		
		
		return dao.getReply(dto);
	}
	
	
	// 페이징 처리용 상수 선언
	private static final int PAGE_LIMIT = 5; // 한 페이지에 보여질 글 갯수
	private static final int BLOCK_LIMIT = 5; // 한 화면에 보여질 페이지 숫자 갯수

	
	public ModelAndView getPageList(int page) {
		
		mav = new ModelAndView();
		
		// 전체 글 갯수 가져오기 (#check)
		int listCount = dao.countList();
		// 한페이지에 보여줘야할 글 범위 지정
		int startRow = (page - 1) * PAGE_LIMIT + 1;
		int endRow = page * PAGE_LIMIT;
		
		PageTransferObject paging = new PageTransferObject();
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);
		// 원하는 만큼 리스트 가져오기 (#check)
		List<DataTransferObject> list = dao.getPageList(paging);
		
		int maxPage = (int)(Math.ceil((double)listCount/PAGE_LIMIT));
		int startPage = (((int)(Math.ceil((double)page/BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
		int endPage = startPage + BLOCK_LIMIT - 1;

		if(endPage > maxPage) endPage = maxPage;
		
		paging.setPage(page);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		paging.setMaxPage(maxPage);
		
		mav.addObject("paging",paging);
		mav.addObject("list",list);
		mav.setViewName("Board/pageList");
		
		return mav;
	}
	
	// 페이징 처리
	
	

}
