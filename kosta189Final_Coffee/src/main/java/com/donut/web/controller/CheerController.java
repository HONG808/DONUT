package com.donut.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cheer")
public class CheerController {

	@RequestMapping("cheerList")
	public String cheerList() {
		System.out.println("cheerList 호출");
		return "cheer/cheerList";
	}
	
	@RequestMapping("cheerInsert")
	public String cheerInsert() {
		System.out.println("cheerInsert 호출");
		return "cheer/cheerInsert";
	}	
	
	@RequestMapping("cheerReplyInsert")
	public String cheerReplyInsert() {
		System.out.println("cheerReplyInsert 호출");
		return "cheer/cheerReplyInsert";
	}	
	
	@RequestMapping("cheerUpdateForm")
	public String cheerUpdateForm() {
		System.out.println("cheerUpdateForm 호출");
		return "cheer/cheerUpdateForm";
	}
	
	@RequestMapping("cheerUpdate")
	public String cheerUpdate() {
		System.out.println("cheerUpdate 호출");
		return "cheer/cheerUpdate";
	}
	
	@RequestMapping("cheerDelete")
	public String cheerDelete() {
		System.out.println("cheerDelete 호출");
		return "cheer/cheerDelete";
	}

	//수정 삭제 전 체크
	@RequestMapping("cheerCheck")
	public String cheerCheck() {
		System.out.println("cheerCheck 호출");
		return "cheer/cheerCheck";
	}
	
}
