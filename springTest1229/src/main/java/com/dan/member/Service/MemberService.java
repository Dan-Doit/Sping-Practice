package com.dan.member.Service;

import java.util.Comparator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.dan.member.dao.DataAccessObject;
import com.dan.member.dto.DataTranseformObject;

@Service
public class MemberService {

	private ModelAndView mav;

	@Autowired
	private DataAccessObject dao;

	@Autowired
	private HttpSession ss;

	public ModelAndView regMember(DataTranseformObject dto) {

		int result = dao.regMember(dto);

		mav = new ModelAndView();

		if(result>0) {
			mav.addObject("is","회원가입이 성공하였습니다.");
			mav.setViewName("result");
		}else {
			mav.addObject("is","회원가입이 성공하였습니다.");
			mav.setViewName("result");
		}

		return mav;

	}

	public ModelAndView Gologin(DataTranseformObject dto) {

		int result = dao.Access(dto);
		mav = new ModelAndView();

		if(result > 0) {
			DataTranseformObject mm = dao.Gologin(dto);
			ss.setAttribute("mid", mm.getMid());
			mav.addObject("is", mm.getMid()+"님 환영합니다.");
			mav.setViewName("result");
		}else {
			mav.addObject("is","로그인 실패");
			mav.setViewName("result");
		}

		return mav;
	}

	public ModelAndView getMembers() {
		mav = new ModelAndView();

		List<DataTranseformObject> memberList;

		memberList = dao.getMembers(); 

		memberList.sort(new Comparator<DataTranseformObject>() {

			@Override
			public int compare(DataTranseformObject o1, DataTranseformObject o2) {

				if(o2.getMid().equals("ADMIN"))return 1;
				else if (o1.getMid().equals("ADMIN"))return -1;
				else return Integer.parseInt(o1.getMid()) - Integer.parseInt(o2.getMid());

			}

		});

		mav.addObject("memberList", memberList);
		mav.setViewName("members");

		return mav;
	}

	public ModelAndView getUser(int reqV , String uid) {

		DataTranseformObject dto;

		dto = dao.getUser(uid);
		
		if(reqV == 1) {
			mav = new ModelAndView();
			mav.addObject("userInfo",dto);
			mav.setViewName("UserInfo");
		}else if(reqV==2) {
			mav = new ModelAndView();
			mav.addObject("userInfo",dto);
			mav.setViewName("modify");
		}
		return mav;
	}

	public ModelAndView delUser(String uid) {

		int result = dao.delUser(uid);

		if(result > 0) {
			// 리다이렉트 하기
			mav.setViewName("redirect:/members");
		}else {
			mav.addObject("is", "삭제실패!");
			mav.setViewName("result");
		}

		return mav;
	}

	public ModelAndView modUser(DataTranseformObject dto) {
			
			dao.modUser(dto);
			
			mav.setViewName("redirect:/members");
		
		return mav;
	}

}
