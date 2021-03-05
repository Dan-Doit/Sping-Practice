package com.newfolder.project.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.newfolder.project.dao.TotalDAO;
import com.newfolder.project.dto.TotalDTO;

@Service
public class LoadService {

	ModelAndView mav;
	
	@Autowired
	private TotalDAO dao;
	
	@Autowired
	private HttpSession session;
	
	public void getTotalData(TotalDTO total) {
		dao.getTotalLogin(total);
		dao.getTotalGames(total);
		dao.getTotalStores(total);
		dao.getTotalReviews(total);
		
	}

}
