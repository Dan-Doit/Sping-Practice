package com.icia.spring.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.spring.dto.BoardDTO;
import com.icia.spring.dto.PageDTO;

@Repository
public class BoardDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	public int listCount() {
		return sql.selectOne("Board.boardListCount");
	}

	public List<BoardDTO> boardListPaging(PageDTO paging) {
		return sql.selectList("Board.boardListPaging", paging);
	}

	public BoardDTO getBoardDetail(int bnumber) {
		return sql.selectOne("Board.boardview", bnumber);
	}

	public int BoardUpdate(BoardDTO board) {
		return sql.update("Board.boardupdate",board);
	}
	
	public int boardDelete(int bnumber) {
		// TODO Auto-generated method stub
		return sql.delete("Board.boardDelete", bnumber);
	}
	
	public int writeBoard(BoardDTO board) {
		// TODO Auto-generated method stub		
		System.out.println("dao : "+board);
		
		int result = sql.insert("Board.writeBoard",board);
		
		return result;
	}
}
