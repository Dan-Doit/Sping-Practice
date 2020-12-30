package com.dan.member.dao;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dan.member.dto.DataTranseformObject;

@Repository
public class DataAccessObject {
	
	@Autowired
	private SqlSessionTemplate sql;

	public int regMember(DataTranseformObject dto) {
	
		int result = sql.insert("Member.regMember", dto);
		
		return result;
	}
	
	public int Access(DataTranseformObject dto) {
		
		int result = sql.selectOne("Member.Access", dto);
		return result;
		
	}

	public DataTranseformObject Gologin(DataTranseformObject dto) {
		
		return sql.selectOne("Member.isAccess", dto);
		
	}

	public List<DataTranseformObject> getMembers() {
		
		return sql.selectList("Member.members");
		
	}

	public DataTranseformObject getUser(String uid) {
		
		return sql.selectOne("Member.getUser", uid);
	}

	public int delUser(String uid) {

		return sql.delete("Member.delUser",uid);
	}

	public int modUser(DataTranseformObject dto) {
		
		return sql.update("Member.modUser",dto); 
	}

}
