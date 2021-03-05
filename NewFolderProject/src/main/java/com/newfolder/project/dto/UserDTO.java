package com.newfolder.project.dto;

import lombok.Data;

@Data
public class UserDTO {
	private int userLevel;
	private String userId;
	private String userPwd;
	private String userNickname;
	private String userAdd;
	private String userPhone;
	private String requestValue;
}
