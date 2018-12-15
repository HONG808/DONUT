package com.donut.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/match")
public class MatchController {

	// �����Ŀ� ����
	@RequestMapping("/matchStart")
	public String matchStart() {
		System.out.println("matchStart ����");
		return "match/matchStart";
	}
	
	// �����Ŀ� ī�װ�1
	@RequestMapping("/matchCategory1")
	public String matchCategory1() {
		System.out.println("matchCategory1 ����");
		return "match/matchCategory1";
	}
	
	// �����Ŀ� ī�װ�2
	@RequestMapping("/matchCategory2")
	public String matchCategory2() {
		System.out.println("matchCategory2 ����");
		return "match/matchCategory2";
	}
	
	// �����Ŀ� ī�װ�3
	@RequestMapping("/matchCategory3")
	public String matchCategory3() {
		System.out.println("matchCategory3 ����");
		return "match/matchCategory3";
	}
	
}
