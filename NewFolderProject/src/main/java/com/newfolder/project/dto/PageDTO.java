package com.newfolder.project.dto;

import lombok.Data;

@Data
public class PageDTO {
	int page;
	int maxPage;
	int startPage;
	int endPage;
	int listCount;
	int boardNum;
}
