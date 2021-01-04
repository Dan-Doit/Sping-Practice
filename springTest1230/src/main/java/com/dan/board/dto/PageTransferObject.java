package com.dan.board.dto;

import lombok.Data;

@Data
public class PageTransferObject {
	private int Page;
	private int maxPage;
	private int startPage;
	private int endPage;
	private int startRow;
	private int endRow;
}
