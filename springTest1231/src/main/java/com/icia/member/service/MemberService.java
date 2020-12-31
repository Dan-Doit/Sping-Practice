package com.icia.member.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.member.dao.MemberDAO;
import com.icia.member.dto.MemberDTO;

@Service
public class MemberService {
	private ModelAndView mav;
	@Autowired
	private MemberDAO mdao;
	
	@Autowired 
	private HttpSession session;

//	public ModelAndView memberJoin(MemberDTO member) {
//		mav = new ModelAndView();
//		int result = mdao.memberJoin(member);
//		if(result>0)
//			mav.setViewName("MemberLogin");
//		else
//			mav.setViewName("JoinFail");
//		return mav;
//	}
	
	public String memberJoin(MemberDTO member) {
		int result = mdao.memberJoin(member);
		String resultPage = "";
		if(result>0)
			resultPage = "MemberLogin";
		else
			resultPage = "JoinFail";
		return resultPage;
	}

	public ModelAndView memberLogin(MemberDTO member) {
		mav = new ModelAndView();
//		String loginId = mdao.memberLogin(member);
		
		MemberDTO loginId = mdao.memberLogin2(member);
		
		if(loginId != null) {
			// 로그인 가능 (세션에 아이디 저장, MemberMain.jsp화면 출력)
//			session.setAttribute("loginId", loginId);
			session.setAttribute("loginId", member.getMid());
			mav.setViewName("MemberMain");
		} else {
			// loginId가 없기 때문에 로그인 불가
			mav.setViewName("MemberLogin");
		}
		return mav;
	}

	public ModelAndView memberList() {
		mav = new ModelAndView();
		List<MemberDTO> memberList = mdao.memberList();
		mav.addObject("memberList", memberList);
		mav.setViewName("MemberList");
		return mav;
	}

	public ModelAndView memberView(String mid) {
		mav = new ModelAndView();
		MemberDTO memberView = mdao.memberView(mid);
		mav.addObject("memberView", memberView);
		mav.setViewName("MemberView");
		return mav;
	}

	public ModelAndView memberDelete(String mid) {
		mav = new ModelAndView();
		int deleteResult = mdao.memberDelete(mid);
		
		if(deleteResult>0) 
			mav.setViewName("redirect:/memberlist");// redirect:/주소값
		else 
			mav.setViewName("MemberDeleteFail");
		return mav;
	}

	public ModelAndView memberUpdate() {
		mav = new ModelAndView();
		String mid = (String) session.getAttribute("loginId");
		MemberDTO updateView = mdao.memberView(mid);
		mav.addObject("updateView", updateView);
		mav.setViewName("MemberUpdate");
		return mav;
	}

	public ModelAndView memberUpdateProcess(MemberDTO member) {
		mav = new ModelAndView();
		int updateResult = mdao.memberUpdate(member);
		if(updateResult>0)
			mav.setViewName("MemberMain");
		else
			mav.setViewName("UpdateFail");
		return mav;
	}

	public String idOverlap(String mid) {
		String checkResult = mdao.idOverlap(mid);
		String resultMsg = null;
		/*
		 * checkResult에 값이 있다면 중복. 없다면 사용가능 
		 */
		if(checkResult==null)
			resultMsg = "ok";
		else
			resultMsg = "no";
		return resultMsg;
	}

	public MemberDTO memberViewAjax(String mid) {
		MemberDTO memberView = mdao.memberView(mid);
		return memberView;
	}

}





















