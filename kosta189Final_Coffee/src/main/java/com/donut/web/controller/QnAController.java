package com.donut.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/qna")
public class QnAController {

	//QnA 리스트
	@RequestMapping("qnaList")
	public String qnaList() {
		System.out.println("qnaList 호출");
		return "qna/qnaList";
	}
	
	//기부자 QnA 등록
	@RequestMapping("qnaInsert")
	public String qnaInsert() {
		System.out.println("qnaInsert 호출");
		return "qna/qnaInsert";
	}

	//기부단체 QnA 답글 등록 
	@RequestMapping("qnaReplyInsert")
	public String qnaReplyInsert() {
		System.out.println("qnaReplyInsert 호출");
		return "qna/qnaReplyInsert";
	}

	//QnA 상세보기
	@RequestMapping("qnaUpdateForm")
	public String qnaUpdateForm() {
		System.out.println("qnaUpdateForm 호출");
		return "qna/qnaUpdateForm";
	}
	
	//QnA 수정
	@RequestMapping("qnaUpdate")
	public String qnaUpdate() {
		System.out.println("qnaUpdate 호출");
		return "qna/qnaUpdate";
	}

	//QnA 삭제
	@RequestMapping("qnaDelete")
	public String qnaDelete() {
		System.out.println("qnaDelete 호출");
		return "qna/qnaDelete";
	}

	//수정 삭제 전 체크
	@RequestMapping("qnaCheck")
	public String qnaCheck() {
		System.out.println("qnaCheck 호출");
		return "qna/qnaCheck";
	}

}
