package com.donut.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/review")
public class ReviewController {
	
	@RequestMapping("/reviewRead")
	public String reviewRead() {
		System.out.println("reviewRead 출력");
		return "review/reviewRead";
	}
	
	@RequestMapping("/reviewInsertForm")
	public String reviewInsertForm() {
		System.out.println("reviewInsertForm 출력");
		return "review/reviewInsertForm";
	}
	
	@RequestMapping("/reviewInsert")
	public String reviewInsert() {
		System.out.println("reviewInsert 출력");
		return "review/reviewInsert";
	}
	
	@RequestMapping("/reviewUpdateForm")
	public String reviewUpdateForm() {
		System.out.println("reviewUpdateForm 출력");
		return "review/reviewUpdateForm";
	}
	
	@RequestMapping("/reviewUpdate")
	public String reviewUpdate() {
		System.out.println("reviewUpdate 출력");
		return "review/reviewUpdate";
	}
	
	@RequestMapping("/reviewDelete")
	public String reviewDelete() {
		System.out.println("reviewDelete 출력");
		return "review/reviewDelete";
	}
	
	@RequestMapping("/reviewCheck")
	public String reviewCheck() {
		System.out.println("reviewCheck 출력 안녕");
		return "review/reviewCheck";
		
	}
	
}
