package com.icia.member.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberDTO {
	private String mid;
	private String mpassword;
	private String mname;
	private String mphone;
	private String memail;
	private Date mbirth;
}
