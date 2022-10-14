package com.my.notice.dao;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.notice.dao.map.NoticeMap;
import com.my.notice.domain.Notice;

@Repository
public class NoticeDaoImpl implements NoticeDao{
	@Autowired private NoticeMap noticeMap;
	
	@Override
	public List<Notice> selectNotices() {
		return noticeMap.selectNotices();
	}
	
	@Override
	public void insertNotice(String title, String noticeContent, LocalDate regDate) {
		noticeMap.insertNotice(title, noticeContent, regDate);
	}
	
	@Override
	public void updateNotice(Notice notice) {
		noticeMap.updateNotice(notice);
	}
	
	@Override
	public void deleteNotice(int noticeNumber) {
		noticeMap.deleteNotice(noticeNumber);
	}
}
