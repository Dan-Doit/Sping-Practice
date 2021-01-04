package com.dan.member;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

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

import com.dan.member.Service.MemberService;
import com.dan.member.dto.DataTranseformObject;


@Controller
public class HomeController {
	
	private ModelAndView mav;
	
	@Autowired
	private MemberService ms;
	
	@Autowired
	private HttpSession ss;
	
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
	
	@RequestMapping(value = "/Goregistration", method = RequestMethod.GET)
	public String Goregistration() {
		
		return "registration";
	}
	
	
	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public ModelAndView registration(@ModelAttribute DataTranseformObject dto) {
		
			mav = ms.regMember(dto);
		
		return mav;
	}
	
	@RequestMapping(value = "/Gologin", method = RequestMethod.POST)
	public ModelAndView Gologin(@ModelAttribute DataTranseformObject dto) {
		
			mav = ms.Gologin(dto);
		
		return mav;
	}
	
	@RequestMapping(value = "/members", method = RequestMethod.GET)
	public ModelAndView members() {
		
			mav = ms.getMembers();
		
		return mav;
	}
	
	@RequestMapping(value = "/getUser", method = RequestMethod.GET)
	public ModelAndView getUser(@RequestParam("uid") String uid) {
			
			mav = ms.getUser(1,uid);
		
		return mav;
	}
	
	
	@RequestMapping(value = "/delUser", method = RequestMethod.GET)
	public ModelAndView delUser(@RequestParam("uid") String uid) {
			
			mav = ms.delUser(uid);
		
		return mav;
	}
	
	@RequestMapping(value = "/Gomodify", method = RequestMethod.GET)
	public ModelAndView Gomodify(@RequestParam("uid") String uid) {
			
			mav = ms.getUser(2,uid);

		return mav;
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public ModelAndView modify(@ModelAttribute DataTranseformObject dto) {
			
			mav = ms.modUser(dto);

		return mav;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(@RequestParam("uid") String uid) {
			
			ss.invalidate();
		
		return "home";
	}
	
	@RequestMapping(value = "/checkid", method = RequestMethod.POST)
	public @ResponseBody String checkid(@RequestParam("mid") String mid) {

		return ms.checkUser(mid);
	}
	
	@RequestMapping(value = "/getUserAjax", method = RequestMethod.POST)
	public @ResponseBody DataTranseformObject getUserAjax(@RequestParam("mid") String mid) {

		return ms.getUserAjax(mid);
	}
}
