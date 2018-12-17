package com.donut.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/review")
public class ReviewController {
	
	@RequestMapping("/reviewRead")
	public String reviewRead() {
		System.out.println("reviewRead ���");
		return "review/reviewRead";
	}
	
	@RequestMapping("/reviewInsertForm")
	public String reviewInsertForm() {
		System.out.println("reviewInsertForm ���");
		return "review/reviewInsertForm";
	}
	
	@RequestMapping("/reviewInsert")
	public String reviewInsert() {
		System.out.println("reviewInsert ���");
		return "review/reviewInsert";
	}
	
	@RequestMapping("/reviewUpdateForm")
	public String reviewUpdateForm() {
		System.out.println("reviewUpdateForm ���");
		return "review/reviewUpdateForm";
	}
	
	@RequestMapping("/reviewUpdate")
	public String reviewUpdate() {
		System.out.println("reviewUpdate ���");
		return "review/reviewUpdate";
	}
	
	@RequestMapping("/reviewDelete")
	public String reviewDelete() {
		System.out.println("reviewDelete ���");
		return "review/reviewDelete";
	}
	
	@RequestMapping("/reviewCheck")
	public String reviewCheck() {
		System.out.println("reviewCheck ��� �ȳ�");
		return "review/reviewCheck";
		
	}
	
}
