package com.my.notice.web;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.my.notice.domain.Notice;
import com.my.notice.service.NoticeService;

@RestController
@RequestMapping("notice")
public class NoticeController {
	@Autowired private NoticeService noticeService;
	
	@GetMapping
	public ModelAndView main(ModelAndView mv) {
		mv.setViewName("notice/noticeMain");
		return mv;
	}
	
	@GetMapping("getNotices")
	public List<Notice> getNotices() {
		return noticeService.getNotices();
	}
	
	@PostMapping("addNotice")
	public void addReview(String title, 
			String noticeContent,
			@DateTimeFormat(pattern="yyyy-MM-dd") LocalDate regDate) {
		noticeService.addNotice(title, noticeContent, regDate);
	}
	
	@PutMapping("fixNotice")
	public void fixNotice(@RequestBody Notice notice) {
		noticeService.fixNotice(notice);
	}
	
	@DeleteMapping("delNotice/{noticeNumber}")
	public void delNotice(@PathVariable int noticeNumber) {
		noticeService.delNotice(noticeNumber);
	}
}
