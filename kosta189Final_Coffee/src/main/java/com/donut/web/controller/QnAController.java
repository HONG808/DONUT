package com.donut.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/qna")
public class QnAController {

	//QnA ����Ʈ
	@RequestMapping("qnaList")
	public String qnaList() {
		System.out.println("qnaList ȣ��");
		return "qna/qnaList";
	}
	
	//����� QnA ���
	@RequestMapping("qnaInsert")
	public String qnaInsert() {
		System.out.println("qnaInsert ȣ��");
		return "qna/qnaInsert";
	}

	//��δ�ü QnA ��� ��� 
	@RequestMapping("qnaReplyInsert")
	public String qnaReplyInsert() {
		System.out.println("qnaReplyInsert ȣ��");
		return "qna/qnaReplyInsert";
	}

	//QnA �󼼺���
	@RequestMapping("qnaUpdateForm")
	public String qnaUpdateForm() {
		System.out.println("qnaUpdateForm ȣ��");
		return "qna/qnaUpdateForm";
	}
	
	//QnA ����
	@RequestMapping("qnaUpdate")
	public String qnaUpdate() {
		System.out.println("qnaUpdate ȣ��");
		return "qna/qnaUpdate";
	}

	//QnA ����
	@RequestMapping("qnaDelete")
	public String qnaDelete() {
		System.out.println("qnaDelete ȣ��");
		return "qna/qnaDelete";
	}

	//���� ���� �� üũ
	@RequestMapping("qnaCheck")
	public String qnaCheck() {
		System.out.println("qnaCheck ȣ��");
		return "qna/qnaCheck";
	}

}
