package com.company.main;

import java.text.DateFormat;
import java.util.Date;
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
import org.springframework.web.servlet.ModelAndView;

import com.company.main.DTO.DTO;
import com.company.main.service.TestService;

@Controller
public class HomeController {

	// controller에서 값을 담아 화면으로 가져가기
	// 화면에 값을 출력하려면 어떤방식으로 이동을 하나요?
	// dispatch, redirect
	// 어떤화면으로 어떤데이터를 출력하고자 할때 사용하는 클래스 많이 쓰여서 전역변수
	ModelAndView mav;

	// 스프링에서 제공하는 주입 기능 활용 (injection) => 변수를 더이상 new하지 않기 위함
	@Autowired
	private TestService testService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/*
	 * @RequestMapping 어떤 주소에 대하여 처리를 할 건지 지정함.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate );

		return "home";
	}

	// request 방식 : get, post (링크로 타고 가는건 무조건 GET방식이다.)
	// rest api 방식 : get, post, put(patch), delete 
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(Locale locale, Model model) {

		return "test";
	}

	// method를 안쓰면 get, post 모두 받을수있음
	@RequestMapping(value = "/home")
	public String home2(Locale locale, Model model) {

		return "home";
	}
	
//	// input값을 받을때는 파라미터에 RequestParam을 사용한다.
//	@RequestMapping(value = "/param", method = RequestMethod.POST)
//	public ModelAndView paramTest(@RequestParam("param1") String param1,
//			@RequestParam("param2") String param2) {
//		System.out.println(param1+","+param2);
//		
//		// param1,param2 를 가지고 test2.jsp 로 이동하기
//		mav = new ModelAndView();
//		mav.addObject("pa1", param1);
//		mav.addObject("pa2", param2);
//		
//		// mav에 목적지 (출략할 jsp) 지정
//		mav.setViewName("test2");
//		
//		// modelandview타입을 리턴해줘야 파람값을 가지고감
//		return mav;
//	}
	
	// form값을 한번에 받기
	@RequestMapping(value = "/param", method = RequestMethod.POST)
	public ModelAndView paramTest(@ModelAttribute DTO test) {
		
		System.out.println("paramTest");
		System.out.println(test.getParam1());
		System.out.println(test.getParam2());
		
		mav = testService.insertDB2(test);
		
		return mav;
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String paramTest(@RequestParam("data1") String data) {
		
		testService.insertDB(data);
		
		return "home";
	}
	
	@RequestMapping(value = "/select", method = RequestMethod.GET)
	public ModelAndView selectTest() {
		
		mav = testService.selectDB();
		
		return mav;
	}

}
