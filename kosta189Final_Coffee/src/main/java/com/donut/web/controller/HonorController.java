package com.donut.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("honor")
public class HonorController {

	@RequestMapping("/honorList")
	public String honorList() {
		System.out.println("honorList ���");
		return "honor/honorList";
	}
	
	@RequestMapping("/honorInsertForm")
	public String honorInsertForm() {
		System.out.println("honorInsertForm ���");
		return "honor/honorInsertForm";
	}
	
}
