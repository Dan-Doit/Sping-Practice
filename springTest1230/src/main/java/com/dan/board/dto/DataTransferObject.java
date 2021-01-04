package com.dan.board.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class DataTransferObject {
	
	private String bnum;
	private String bwriter;
	private String bpwd;
	private String btitle;
	private String bcontents;
	private String bdate;
	private String bhits;
	private String breply;
	
	private MultipartFile bfile;
	private String bfilename;
}
