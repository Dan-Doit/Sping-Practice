package com.company.main.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.company.main.DAO.DAO;
import com.company.main.DTO.DTO;

@Service
public class TestService {
	
	@Autowired
	private DAO dao;

	private ModelAndView mav;
	
	public void insertDB(String data) {
		dao.insertDB(data);
		
	}

	public ModelAndView selectDB() {
		String result = dao.selectDB();
		
		mav = new ModelAndView();
		mav.addObject("result",result);
		mav.setViewName("result");
		return mav;
	}

	public ModelAndView insertDB2(DTO test) {
		dao.insertDB2(test);
		return null;
	}

}
