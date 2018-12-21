package com.donut.web.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.donut.web.dto.MemberDTO;
import com.donut.web.dto.ProjectDTO;
import com.donut.web.service.FacebookService;
import com.donut.web.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	MemberService memberService;
	@Autowired
	private FacebookService facebookService;
	
	private String path = "C:\\Edu\\finalPhoto\\member";

	// 회원가입
	@RequestMapping("/write")
	public String signUp(HttpSession session, MemberDTO memberDTO) throws Exception {
		System.out.println("member의 회원가입 write실행");
		System.out.println("id는 " + memberDTO.getId());
		System.out.println("pwd는 " + memberDTO.getPwd());
		System.out.println("이름은 " + memberDTO.getName());
		System.out.println("signUp 실행");

		if (memberService.memberDuplicatedById(memberDTO.getId())) {

			//파일첨부
			MultipartFile file = memberDTO.getFile();

			if (file.getSize() > 0) {
				String fileName = file.getOriginalFilename();

				memberDTO.setPicture(fileName);
				file.transferTo(new File(path + "/" + fileName));
			}

			memberDTO.setStatusFlag(1);//개인회원 상태플래그

			memberService.MemberInsert(memberDTO);

			System.out.println(memberDTO.getId() + "님 가입을 축하드립니다.");

		} else {
			System.out.println("회원가입에 실패하였습니다.");
		}

		return "redirect:/member/login";
	}

	// 회원가입폼
	@RequestMapping("/signUp")
	public void signUpForm(HttpSession session) {
	}

	// 아이디 중복체크
	@RequestMapping("/idCheck")
	@ResponseBody
	public Object idCheck(String id) throws Exception {
		String result;
		System.out.println(id);
		if (memberService.memberDuplicatedById(id)) {
			result = "success";
		} else {
			result = "nope";
		}

		System.out.println("idCheck 실행");

		return result;
	}

	// 로그인폼
	@RequestMapping("/login")
	public String loginForm() {
		return "member/login";
	}

	// 로그인
	@RequestMapping("/loginCheck")
	public String login(MemberDTO memberDTO, HttpSession session) throws Exception {

		MemberDTO dbDTO = memberService.memberSelectByIdPwd(memberDTO.getId(), memberDTO.getPwd());
		
		if (session != null) {
			session.setAttribute("userDTO", dbDTO);// jsp에서 확인하고싶으면 ${userDTO}하면됨
		}
		System.out.println("login 실행");

		return "redirect:/";
	}

	// API로 로그인 카카오톡
		@RequestMapping("/loginAPI")
		@ResponseBody
		public Object loginAPI(MemberDTO memberDTO,HttpSession session) {
			System.out.println(memberDTO);
			Map <String, Object> result = new HashMap<>();
			result.put("status","fail");

			try {
			//true면 아이디값이 이미 있다. 
			// 아이디가 없다면 가입실행 => status = signUp
			if(memberService.memberDuplicatedById(memberDTO.getId())) {
				memberService.MemberInsert(memberDTO);
				session.setAttribute("userDTO",memberDTO);
				result.put("status","login");
			} else {
				//아이디가 있다면 로그인실행 => status = login
				//
				MemberDTO dbDTO = memberService.memberSelectById(memberDTO.getId());
				System.out.println(dbDTO);
				if(dbDTO != null) {
					session.setAttribute("userDTO",dbDTO);
					result.put("status","login");
				} else if (session.getAttribute("userDTO") != null) {
					result.put("status","alreadyLogin");
				}
			}
			
			}catch (Exception e) {
				e.printStackTrace();
			}
			// 모든 상태를 지나갔다면 status - fail
			return result;
		}
		
		//페이스북 로그인
		
		 @RequestMapping("/facebookLogin")
		 @ResponseBody
		    public Object facebookLogin(String accessToken,HttpSession session,Model model) {
		        System.out.println("페이스북 로그인 시도");
		        try {
		            Map userInfo = facebookService.me(accessToken, Map.class);
		            MemberDTO memberDTO = memberService.memberSelectById((String)userInfo.get("id"));
		            System.out.println("facebook login=>"+memberDTO );
		            
		            if (memberDTO == null) {
		            	memberDTO = new MemberDTO();
		            	memberDTO.setId((String)userInfo.get("id"));
		            	memberDTO.setEmail((String)userInfo.get("email"));
		            	memberDTO.setName((String)userInfo.get("name"));
		                memberService.MemberInsert(memberDTO);
		            }
		            // 회원 정보를 세션에 저장하여 자동 로그인 처리를 한다.
		            session.setAttribute("userDTO",memberDTO);
		            HashMap<String,Object> result = new HashMap<>();
		            result.put("status", "login");
		            return result;
		        } catch (Exception e) {
		            HashMap<String,Object> result = new HashMap<>();
		            result.put("status", "fail");
		            return result;
		        }
		    }
	// 로그아웃
	@RequestMapping("/logOut")
	public String logOut(HttpSession session) {
		System.out.println("logOut 실행");
		session.invalidate();
		return "redirect:/";
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

	//기부자 마이페이지 회원정보 수정진행
	@RequestMapping("/memberUpdate")
	public String memberUpdate(HttpSession session, MemberDTO memberDTO) {

		try {
			memberService.memberUpdate(memberDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "member/memberUpdateForm";
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
