package com.donut.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cheer")
public class CheerController {

	@RequestMapping("cheerList")
	public String cheerList() {
		System.out.println("cheerList ȣ��");
		return "cheer/cheerList";
	}
	
	@RequestMapping("cheerInsert")
	public String cheerInsert() {
		System.out.println("cheerInsert ȣ��");
		return "cheer/cheerInsert";
	}	
	
	@RequestMapping("cheerReplyInsert")
	public String cheerReplyInsert() {
		System.out.println("cheerReplyInsert ȣ��");
		return "cheer/cheerReplyInsert";
	}	
	
	@RequestMapping("cheerUpdateForm")
	public String cheerUpdateForm() {
		System.out.println("cheerUpdateForm ȣ��");
		return "cheer/cheerUpdateForm";
	}
	
	@RequestMapping("cheerUpdate")
	public String cheerUpdate() {
		System.out.println("cheerUpdate ȣ��");
		return "cheer/cheerUpdate";
	}
	
	@RequestMapping("cheerDelete")
	public String cheerDelete() {
		System.out.println("cheerDelete ȣ��");
		return "cheer/cheerDelete";
	}

	//���� ���� �� üũ
	@RequestMapping("cheerCheck")
	public String cheerCheck() {
		System.out.println("cheerCheck ȣ��");
		return "cheer/cheerCheck";
	}
	
}
