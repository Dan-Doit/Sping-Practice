package com.icia.member.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.member.dto.MemberDTO;

@Repository
public class MemberDAO {
	@Autowired
	private SqlSessionTemplate sql;
	
	public int memberJoin(MemberDTO member) {
		return sql.insert("Member.memberJoin", member);
	}

	public String memberLogin(MemberDTO member) {
		return sql.selectOne("Member.memberLogin", member);
	}

	public MemberDTO memberLogin2(MemberDTO member) {
		return sql.selectOne("Member.memberLogin2", member);
	}

	public List<MemberDTO> memberList() {
		return sql.selectList("Member.memberList");
	}

	public MemberDTO memberView(String mid) {
		return sql.selectOne("Member.memberView", mid);
	}

	public int memberDelete(String mid) {
		return sql.delete("Member.memberDelete", mid);
	}

	public int memberUpdate(MemberDTO member) {
		return sql.update("Member.memberUpdate", member);
	}

	public String idOverlap(String mid) {
		return sql.selectOne("Member.idOverlap", mid);
	}

}










