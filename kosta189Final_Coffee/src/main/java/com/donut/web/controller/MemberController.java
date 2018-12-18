package com.donut.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.donut.web.dto.MemberDTO;
import com.donut.web.dto.ProjectDTO;
import com.donut.web.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	MemberService memberService;
	
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
	public String login(HttpSession session) {
		session.setAttribute("id", "company1");
		return "redirect:memberUpdateForm";
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
	public String memberUpdateForm(HttpSession session,String pwd, Model model) {
		try {
			MemberDTO memberDTO= memberService.memberSelectByIdPwd((String)session.getAttribute("id"), "1234");
			model.addAttribute("member", memberDTO);
			System.out.println(memberDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/memberUpdateForm";
	}
	
	//����� ���������� ȸ������ ��������
	@RequestMapping("/memberUpdate")
	public String memberUpdate(HttpSession session, MemberDTO memberDTO) {

		try {
			memberService.memberUpdate(memberDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "member/memberUpdateForm";
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
	public String memberGive(Model model,HttpSession session) {
		try {
			List<ProjectDTO>projectList = memberService.memberGiveList((String)session.getAttribute("id"));
			model.addAttribute("projectList", projectList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "member/memberGive";
	}

}
