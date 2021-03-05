package com.icia.spring.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.spring.dao.CommentDAO;
import com.icia.spring.dto.CommentDTO;


@Service
public class CommentService {

	@Autowired
	private CommentDAO dao;
	
	public List<CommentDTO> commentWrite(CommentDTO comment) {
		// TODO Auto-generated method stub
		
		int result=dao.commentWrite(comment);
		System.out.println(result);
		List<CommentDTO> clist= new ArrayList<CommentDTO>();
		if(result>0) {
			clist=dao.commentList(comment.getCbnumber());
			System.out.println(clist);
		}else {
			clist=null;					
		}
		return clist;
	}

	public List<CommentDTO> getComments(int cbnumber) {
		// TODO Auto-generated method stub
		List<CommentDTO> clist= new ArrayList<CommentDTO>();
		clist=dao.commentList(cbnumber);
		return clist;
	}

}
