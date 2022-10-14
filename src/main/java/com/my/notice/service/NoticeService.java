package com.my.notice.service;

import java.time.LocalDate;
import java.util.List;

import com.my.notice.domain.Notice;

public interface NoticeService {
	List<Notice> getNotices();
	void addNotice(String title, String noticeContent, LocalDate regDate);
	void fixNotice(Notice review);
	void delNotice(int noticeNumber);
}
