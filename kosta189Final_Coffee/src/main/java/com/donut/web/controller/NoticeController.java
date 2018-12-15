package com.donut.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("notice")
public class NoticeController {

	@RequestMapping("noticeInsertForm")
	public String noticeInsertForm() {
		System.out.println("noticeInsertForm ���");
		return "notice/noticeInsertForm";
	}
	
	@RequestMapping("noticeInsert")
	public String noticeInsert() {
		System.out.println("noticeInsert ���");
		return "notice/noticeInsert";
	}
	
	@RequestMapping("noticeUpdateForm")
	public String noticeUpdateForm() {
		System.out.println("noticeUpdateForm ���");
		return "notice/noticeUpdateForm";
	}
	
	@RequestMapping("noticeUpdate")
	public String noticeUpdate() {
		System.out.println("noticeUpdate ���");
		return "notice/noticeUpdate";
	}
	
	@RequestMapping("noticeList")
	public String noticeList() {
		System.out.println("noticeList ���");
		return "notice/noticeList";
	}
	
	@RequestMapping("noticeRead")
	public String noticeRead() {
		System.out.println("noticeRead ���");
		return "notice/noticeRead";
	}
	
	@RequestMapping("noticeDelete")
	public String noticeDelete() {
		System.out.println("noticeDelete ���");
		return "notice/noticeDelete";
	}
	
	@RequestMapping("noticeCheck")
	public String noticeCheck() {
		System.out.println("noticeCheck ���");
		return "notice/noticeCheck";
	}
	
}
