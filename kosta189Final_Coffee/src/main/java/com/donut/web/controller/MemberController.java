package com.donut.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberController {

	//�����������
	
	
	//ȸ������
	@RequestMapping("/signUp")
	public String signUp() {
		System.out.println("signUp ����");
		return "member/signUp";
	}

	//ȸ��������
	@RequestMapping("signUpForm")
	public String signUpForm() {
		System.out.println("signUpform ����");
		return "member/signUpForm";
	}

	//���̵� �ߺ�üũ
	@RequestMapping("idCheck")
	public String idCheck() {
		System.out.println("idCheck ����");
		return "member/idCheck";
	}

	//�α���
	@RequestMapping("/login")
	public String login() {
		System.out.println("login ����");
		return "member/login";
	}

	//API�� �α���
	@RequestMapping("/loginAPI")
	public String loginAPI() {
		System.out.println("loginAPI ����");
		return "member/loginAPI";
	}

	//�α׾ƿ�
	@RequestMapping("/logOut")
	public String logOut() {
		System.out.println("logOut ����");
		return "member/logOut";
	}

	//ȸ��Ż��
	@RequestMapping("/memberDelete")
	public String memberDelete() {
		System.out.println("memberDelete ����");
		return "member/memberDelete";
	}
	
	//ȸ��Ż�� �� ��й�ȣ Ȯ��
	@RequestMapping("/pwdCheck")
	public String pwdCheck() {
		System.out.println("pwdCheck ����");
		return "member/pwdCheck";
	}

	//����� ����������
	@RequestMapping("/memberMypage")
	public String memberMypage() {
		System.out.println("memberMypage ����");
		return "member/memberMypage";
	}

	//����� ���������� �������
	@RequestMapping("/memberCheer")
	public String memberCheer() {
		System.out.println("memberCheer ����");
		return "member/memberCheer";
	}

	//����� ���������� QnA
	@RequestMapping("/memberQnA")
	public String memberQnA() {
		System.out.println("memberQnA ����");
		return "member/memberQnA";
	}

	//����� ���������� ȸ������ ������
	@RequestMapping("/memberUpdateForm")
	public String memberUpdateForm() {
		System.out.println("memberQnA ����");
		return "member/memberUpdateForm";
	}
	
	//����� ���������� ȸ������ ��������
	@RequestMapping("/memberUpdate")
	public String memberUpdate() {
		System.out.println("memberUpdate ����");
		return "member/memberUpdate";
	}

	//����� ���������� ���ã��
	@RequestMapping("/memberFavorite")
	public String memberFavorite() {
		System.out.println("memberFavorite ����");
		return "member/memberFavorite";
	}
	
	//����� ���������� ���ã�� ����
	@RequestMapping("/memberFavoriteDelete")
	public String memberFavoriteDelete() {
		System.out.println("memberFavoriteDelete ����");
		return "member/memberFavoriteDelete";
	}

	//����� ���������� ������
	@RequestMapping("/memberReceipt")
	public String memberReceipt() {
		System.out.println("memberReceipt ����");
		return "member/memberReceipt";
	}

	//����� ���������� �����Ȳ
	@RequestMapping("/memberGive")
	public String memberGive() {
		System.out.println("memberGive ����");
		return "member/memberGive";
	}

}
