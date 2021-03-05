package com.icia.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.icia.spring.dto.CommentDTO;
import com.icia.spring.service.CommentService;


@Controller
@RequestMapping("/comment/*")
public class CommentController {
	
	@Autowired
	private CommentService cs;

	@RequestMapping(value="commentwrite")
	public @ResponseBody List<CommentDTO> commentWrite(@ModelAttribute CommentDTO comment){
			List<CommentDTO> commentList = cs.commentWrite(comment);
			
		return commentList;
	}
	
	@RequestMapping(value="getComments")
	public @ResponseBody List<CommentDTO> getComments(@RequestParam("cbnumber") int cbnumber){
			List<CommentDTO> commentList = cs.getComments(cbnumber);
			
		return commentList;
	}
}
