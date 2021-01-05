package com.dan.board;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dan.board.dto.DataTransferObject;
import com.dan.board.service.BoardService;


@Controller
public class HomeController {
	
	@Autowired
	private BoardService bs;
	
	ModelAndView mav;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/Bwrite", method = RequestMethod.GET)
	public String Bwrite() {
		
		return "Board/Bwrite";
	}
	
	@RequestMapping(value = "/regBoard", method = RequestMethod.POST)
	public ModelAndView regBoard(@ModelAttribute DataTransferObject dto) throws IllegalStateException, IOException {
		
			mav = bs.regBoard(dto);
		
		return mav;
	}
	
	@RequestMapping(value = "/Blist", method = RequestMethod.GET)
	public ModelAndView Blist() {
		
			mav = bs.getBoardList();
		
		return mav;
	}
	
	@RequestMapping(value = "/getBoard", method = RequestMethod.GET)
	public ModelAndView getBoard(@ModelAttribute DataTransferObject dto, 
								 @RequestParam(value="page", required=false, defaultValue = "1") int page) {
			
			mav = bs.getBoard(dto,page);

		return mav;
	}
	
	@RequestMapping(value = "/getModBoard", method = RequestMethod.GET)
	public ModelAndView getBoard(@RequestParam("bnum") String bnum) {
		
			mav = bs.getModBoard(bnum);
		
		return mav;
	}
	
	@RequestMapping(value = "/modBoard", method = RequestMethod.POST)
	public ModelAndView modBoard(@ModelAttribute DataTransferObject dto) {
		
			mav = bs.modBoard(dto);
		
		return mav;
	}
	
	@RequestMapping(value = "/delBoard", method = RequestMethod.GET)
	public ModelAndView delBoard(@RequestParam("bnum") String bnum) {

			mav = bs.delBoard(bnum);
		
		return mav;
	}
	
	@RequestMapping(value = "/getReply", method = RequestMethod.POST)
	public @ResponseBody List<DataTransferObject> getReply(@ModelAttribute DataTransferObject dto) {
		
		return bs.getReply(dto);
	}
	
	@RequestMapping(value = "/insReply", method = RequestMethod.POST)
	public @ResponseBody List<DataTransferObject> insReply(@ModelAttribute DataTransferObject dto) {
		
		return bs.insReply(dto);
	}
	
	// Bpagelist 페이징 처리
	@RequestMapping(value = "/Bpagelist", method = RequestMethod.GET)
												// param이라는 값이 없으면(false) 기본값은 1이다. required = 필수인지 아닌지;
	public ModelAndView Bpagelist(@RequestParam(value="page", required=false, defaultValue = "1") int page) {
		
		mav = bs.getPageList(page);
		
		return mav;
	}
	
	
	// 검색 처리
	@RequestMapping(value="/search")
	public ModelAndView search(@RequestParam("searchtype") String searchtype,
							   @RequestParam("keyword") String keyword) {
								
		mav = bs.search(searchtype,keyword);
		
		return mav;
	}
	
	
}




















