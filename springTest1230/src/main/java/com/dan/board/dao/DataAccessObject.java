package com.dan.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dan.board.dto.DataTransferObject;
import com.dan.board.dto.PageTransferObject;

@Repository
public class DataAccessObject {
	
	@Autowired
	private SqlSessionTemplate sql;

	public int regBoard(DataTransferObject dto) {
			
		
		return sql.insert("Board.regBoard",dto);
	}

	public List<DataTransferObject> getBoardList() {

		return sql.selectList("Board.getBoardList");
		
	}

	public DataTransferObject getBoard(DataTransferObject dto) {
			
			sql.update("Board.getBoard",dto);
		
		return dto;
	}

	public DataTransferObject getModBoard(String bnum) {
		
		return sql.selectOne("Board.getModBoard",bnum);
	}

	public int modBoard(DataTransferObject dto) {
		
		return sql.update("Board.modBoard",dto);
	}

	public int delBoard(String bnum) {
			
		return sql.delete("Board.delBoard",bnum);
	}

	public List<DataTransferObject> insReply(DataTransferObject dto) {
		
			sql.insert("Board.insReply",dto);
		
		return sql.selectList("Board.getReply",dto);
	}

	public List<DataTransferObject> getReply(DataTransferObject dto) {
		
		return sql.selectList("Board.getReply",dto);
	}

	public int countList() {
			
		return sql.selectOne("Board.countList");
	}

	public List<DataTransferObject> getPageList(PageTransferObject paging) {
		
		return sql.selectList("Board.getPageList",paging);
	}

	public List<DataTransferObject> search(String searchtype, String keyword) {
		
			Map<String, String> searchMap = new HashMap<String,String>();
			
			searchMap.put("type", searchtype);
			searchMap.put("word", keyword);
			
		return sql.selectList("Board.search",searchMap);
	}

}


















