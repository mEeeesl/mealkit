package com.my.notice.dao.map;

import java.time.LocalDate;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.my.notice.domain.Notice;

public interface NoticeMap {
	List<Notice> selectNotices();
	void insertNotice(
			@Param("title")String title,
			@Param("noticeContent")String noticeContent,
			@Param("writeDate")LocalDate regDate);
	void updateNotice(Notice notice);
	void deleteNotice(int noticeNumber);
}
