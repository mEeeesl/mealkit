package com.my.notice.domain;

import java.time.LocalDate;

import lombok.Data;

@Data
public class Notice {
	private int noticeNumber;
	private String title;
	private String noticeContent;
	private LocalDate regDate;
}
