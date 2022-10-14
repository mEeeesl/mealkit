package com.my.notice.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.notice.dao.NoticeDao;
import com.my.notice.domain.Notice;

@Service
public class NoticeServiceImpl implements NoticeService{
	@Autowired private NoticeDao noticeDao;
	
	@Override
	public List<Notice> getNotices() {
		return noticeDao.selectNotices();
	}
	
	@Override
	public void addNotice(String title, String noticeContent, LocalDate regDate) {
		noticeDao.insertNotice(title, noticeContent, regDate);
	}
	
	@Override
	public void fixNotice(Notice notice) {
		noticeDao.updateNotice(notice);
	}
	
	@Override
	public void delNotice(int noticeNumber) {
		noticeDao.deleteNotice(noticeNumber);
	}
}
