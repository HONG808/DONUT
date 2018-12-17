package com.donut.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberController {

	//랄라라랄랄라라
	
	
	//회원가입
	@RequestMapping("/signUp")
	public String signUp() {
		System.out.println("signUp 실행");
		return "member/signUp";
	}

	//회원가입폼
	@RequestMapping("signUpForm")
	public String signUpForm() {
		System.out.println("signUpform 실행");
		return "member/signUpForm";
	}

	//아이디 중복체크
	@RequestMapping("idCheck")
	public String idCheck() {
		System.out.println("idCheck 실행");
		return "member/idCheck";
	}

	//로그인
	@RequestMapping("/login")
	public String login() {
		System.out.println("login 실행");
		return "member/login";
	}

	//API로 로그인
	@RequestMapping("/loginAPI")
	public String loginAPI() {
		System.out.println("loginAPI 실행");
		return "member/loginAPI";
	}

	//로그아웃
	@RequestMapping("/logOut")
	public String logOut() {
		System.out.println("logOut 실행");
		return "member/logOut";
	}

	//회원탈퇴
	@RequestMapping("/memberDelete")
	public String memberDelete() {
		System.out.println("memberDelete 실행");
		return "member/memberDelete";
	}
	
	//회원탈퇴 전 비밀번호 확인
	@RequestMapping("/pwdCheck")
	public String pwdCheck() {
		System.out.println("pwdCheck 실행");
		return "member/pwdCheck";
	}

	//기부자 마이페이지
	@RequestMapping("/memberMypage")
	public String memberMypage() {
		System.out.println("memberMypage 실행");
		return "member/memberMypage";
	}

	//기부자 마이페이지 응원댓글
	@RequestMapping("/memberCheer")
	public String memberCheer() {
		System.out.println("memberCheer 실행");
		return "member/memberCheer";
	}

	//기부자 마이페이지 QnA
	@RequestMapping("/memberQnA")
	public String memberQnA() {
		System.out.println("memberQnA 실행");
		return "member/memberQnA";
	}

	//기부자 마이페이지 회원정보 수정폼
	@RequestMapping("/memberUpdateForm")
	public String memberUpdateForm() {
		System.out.println("memberQnA 실행");
		return "member/memberUpdateForm";
	}
	
	//기부자 마이페이지 회원정보 수정진행
	@RequestMapping("/memberUpdate")
	public String memberUpdate() {
		System.out.println("memberUpdate 실행");
		return "member/memberUpdate";
	}

	//기부자 마이페이지 즐겨찾기
	@RequestMapping("/memberFavorite")
	public String memberFavorite() {
		System.out.println("memberFavorite 실행");
		return "member/memberFavorite";
	}
	
	//기부자 마이페이지 즐겨찾기 삭제
	@RequestMapping("/memberFavoriteDelete")
	public String memberFavoriteDelete() {
		System.out.println("memberFavoriteDelete 실행");
		return "member/memberFavoriteDelete";
	}

	//기부자 마이페이지 영수증
	@RequestMapping("/memberReceipt")
	public String memberReceipt() {
		System.out.println("memberReceipt 실행");
		return "member/memberReceipt";
	}

	//기부자 마이페이지 기부현황
	@RequestMapping("/memberGive")
	public String memberGive() {
		System.out.println("memberGive 실행");
		return "member/memberGive";
	}

}
