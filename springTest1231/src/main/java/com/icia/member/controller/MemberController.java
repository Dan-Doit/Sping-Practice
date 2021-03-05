package com.icia.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.member.dto.MemberDTO;
import com.icia.member.service.MemberService;

@Controller
public class MemberController {
	private ModelAndView mav;
	@Autowired
	private MemberService ms;
	
	@Autowired 
	private HttpSession session;
	
	// 회원가입 폼 출력 
	@RequestMapping(value="/memberjoinform")
	public String joinForm() {
		return "MemberJoin";
	}
	
	// 로그인 폼 출력 
	@RequestMapping(value="/memberloginform")
	public String loginForm() {
		return "MemberLogin";
	}
	
	// 회원가입 처리 
//	@RequestMapping(value="/memberjoin")
//	public ModelAndView memberJoin(@ModelAttribute MemberDTO member) {
//		mav = ms.memberJoin(member);
//		return mav;
//	}
	
	@RequestMapping(value="/memberjoin")
	public String memberJoin(@ModelAttribute MemberDTO member) {
		String resultPage = ms.memberJoin(member);
		return resultPage;
	}
	
	// 로그인, 회원목록, 상세조회, 정보수정, 삭제, 로그아웃, ajax(아이디 중복확인)
	
	// 로그인 
	@RequestMapping(value="/memberlogin")
	public ModelAndView memberLogin(
//			@RequestParam("mid") String mid, @RequestParam("mpassword") String mpassword
			@ModelAttribute MemberDTO member) {
		mav = ms.memberLogin(member);
		return mav;
	}
	
	// 회원목록 처리 
	@RequestMapping(value="/memberlist")
	public ModelAndView memberList() {
		mav = ms.memberList();
		return mav;
	}
	
	// 회원조회 처리 
	@RequestMapping(value="/memberview")
	public ModelAndView memberView(@RequestParam("mid") String mid) {
		mav = ms.memberView(mid);
		return mav;
	}
	
	// 회원삭제 처리 
	@RequestMapping(value="/memberdelete")
	public ModelAndView memberDelete(@RequestParam("mid") String mid) {
		mav = ms.memberDelete(mid);
		return mav;
	}
	
	// 회원정보 수정 요청 
	@RequestMapping(value="/memberupdate")
	public ModelAndView memberUpdate() {
		mav = ms.memberUpdate();
		return mav;
	}
	
	// 회원정보 수정 처리 
	@RequestMapping(value="/memberupdateprocess")
	public ModelAndView memberUpdateProcess(@ModelAttribute MemberDTO member) {
		mav = ms.memberUpdateProcess(member);
		return mav;
	}
	
	// 로그아웃 
	@RequestMapping(value="/logout")
	public String memberLogout() {
		session.invalidate();
		return "MemberLogin";
	}
	
	// 아이디 중복확인 
	@RequestMapping(value="/idoverlap")
	public @ResponseBody String idOverlap(@RequestParam("mid") String mid) {
		System.out.println("ajax로 넘어온 값 확인"+mid);
		String resultMsg = ms.idOverlap(mid);
		return resultMsg;
		/*
		 * 그냥 String 리턴 ok => ok.jsp or no.jsp
		 */
	}
	
	// ajax이용한 상세조회
	@RequestMapping(value="/memberviewajax")
	public @ResponseBody MemberDTO memberViewAjax(@RequestParam("mid") String mid) {
		System.out.println("컨트롤러"+mid);
		MemberDTO memberView = ms.memberViewAjax(mid);
		System.out.println(memberView);
		return memberView;
	}
	
}














