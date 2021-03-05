package com.newfolder.project.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.newfolder.project.dto.TotalDTO;

@Repository
public class TotalDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	public void getTotalLogin(TotalDTO total) {
		int result = sql.selectOne("Total.TodayLogin");
		total.setTodayLogin(result);
	}
	public void getTotalGames(TotalDTO total) {
		int result = sql.selectOne("Total.TodayGames");
		total.setTodayGames(result);
	}
	public void getTotalStores(TotalDTO total) {
		int result = sql.selectOne("Total.TodayStores");
		total.setTotalStores(result);
	}
	public void getTotalReviews(TotalDTO total) {
		int result = sql.selectOne("Total.TodayReviews");
		total.setTotalReviews(result);
	}
}
