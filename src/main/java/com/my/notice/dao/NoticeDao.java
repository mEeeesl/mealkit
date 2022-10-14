package com.my.notice.dao;

import java.time.LocalDate;
import java.util.List;

import com.my.notice.domain.Notice;

public interface NoticeDao {
	List<Notice> selectNotices();
	void insertNotice(String title, String noticeContent, LocalDate regDate);
	void updateNotice(Notice notice);
	void deleteNotice(int noticeNumber);
}
