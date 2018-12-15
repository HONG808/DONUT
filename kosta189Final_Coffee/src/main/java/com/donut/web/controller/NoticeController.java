package com.donut.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("notice")
public class NoticeController {

	@RequestMapping("noticeInsertForm")
	public String noticeInsertForm() {
		System.out.println("noticeInsertForm 출력");
		return "notice/noticeInsertForm";
	}
	
	@RequestMapping("noticeInsert")
	public String noticeInsert() {
		System.out.println("noticeInsert 출력");
		return "notice/noticeInsert";
	}
	
	@RequestMapping("noticeUpdateForm")
	public String noticeUpdateForm() {
		System.out.println("noticeUpdateForm 출력");
		return "notice/noticeUpdateForm";
	}
	
	@RequestMapping("noticeUpdate")
	public String noticeUpdate() {
		System.out.println("noticeUpdate 출력");
		return "notice/noticeUpdate";
	}
	
	@RequestMapping("noticeList")
	public String noticeList() {
		System.out.println("noticeList 출력");
		return "notice/noticeList";
	}
	
	@RequestMapping("noticeRead")
	public String noticeRead() {
		System.out.println("noticeRead 출력");
		return "notice/noticeRead";
	}
	
	@RequestMapping("noticeDelete")
	public String noticeDelete() {
		System.out.println("noticeDelete 출력");
		return "notice/noticeDelete";
	}
	
	@RequestMapping("noticeCheck")
	public String noticeCheck() {
		System.out.println("noticeCheck 출력");
		return "notice/noticeCheck";
	}
	
}
