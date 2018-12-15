package com.donut.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/match")
public class MatchController {

	// 맞춤후원 시작
	@RequestMapping("/matchStart")
	public String matchStart() {
		System.out.println("matchStart 실행");
		return "match/matchStart";
	}
	
	// 맞춤후원 카테고리1
	@RequestMapping("/matchCategory1")
	public String matchCategory1() {
		System.out.println("matchCategory1 실행");
		return "match/matchCategory1";
	}
	
	// 맞춤후원 카테고리2
	@RequestMapping("/matchCategory2")
	public String matchCategory2() {
		System.out.println("matchCategory2 실행");
		return "match/matchCategory2";
	}
	
	// 맞춤후원 카테고리3
	@RequestMapping("/matchCategory3")
	public String matchCategory3() {
		System.out.println("matchCategory3 실행");
		return "match/matchCategory3";
	}
	
}
