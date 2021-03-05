package com.icia.spring.service;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.spring.dao.MemberDAO;
import com.icia.spring.dto.MemberDTO;


@Service
public class MemberService {
	
	ModelAndView mav;
	
	@Autowired
	private MemberDAO dao;
	
	@Autowired
	private HttpSession session;

	public String idoverlap(String mid) {
		// TODO Auto-generated method stub
		
			int result=dao.idoverlap(mid);
			String canuse=null;
			if(result==0) {
				canuse="ok";
			}else {
				canuse="no";
			}
			
			return canuse;
		}

	public ModelAndView signup(MemberDTO member) {
	
		int result = dao.signup(member);
		mav = new ModelAndView();
		System.out.println(result);
		if(result>0) {
            mav.addObject("alert", "<script>alert('회원가입 성공:)')</script>");
			mav.setViewName("home");
		}
		else {
			
			mav.setViewName("home");
		}
		return mav;
	}

	public ModelAndView logIn(MemberDTO member) {

		mav = new ModelAndView();
		member = dao.checkMember(member);
		String result="";
		
		//로그인 성공(세션에 아이디 저장, MemberMain.jsp화면 출력)
		if(member!=null) {
			session.setAttribute("mname", member.getMname());
			session.setAttribute("mid",member.getMid());
			System.out.println(session.getAttribute("mname"));
			mav.addObject("msg", "로그인 성공:)");
			mav.setViewName("index");
			
		}
		else {//로그인 실패
			
			mav.addObject("msg", "로그인 실패:)");
			mav.setViewName("home");
		} 
	
		return mav;
	
	}
}


