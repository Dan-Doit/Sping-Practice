package com.company.main.DAO;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.main.DTO.DTO;

@Repository
public class DAO {
	// 마이바티스에서 제공하는 클래스인데 쿼리를 보낼때 특화됨
	@Autowired
	private SqlSessionTemplate sql;
	
	public void insertDB(String data) {
		
		sql.insert("Test.insertDB", data);
		
	}

	public String selectDB() {
		
		return sql.selectOne("Test.selectDB");
	}

	public void insertDB2(DTO test) {
		sql.insert("Test.insertDB2",test);
		
	}

}
