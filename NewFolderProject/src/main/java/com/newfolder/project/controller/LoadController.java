package com.newfolder.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.newfolder.project.dto.TotalDTO;
import com.newfolder.project.service.LoadService;

@Controller
public class LoadController {
	ModelAndView mav;

	@Autowired
	private HttpSession session;
	
	@Autowired
	private LoadService service;

	@RequestMapping(value="/LoadControll")
	public @ResponseBody TotalDTO getTotalData() {
		TotalDTO total = new TotalDTO();
		service.getTotalData(total);
		
		return total;
	}

}
