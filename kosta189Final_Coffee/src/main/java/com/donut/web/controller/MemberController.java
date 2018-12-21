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

	// ȸ������
	@RequestMapping("/write")
	public String signUp(HttpSession session, MemberDTO memberDTO) throws Exception {
		System.out.println("member�� ȸ������ write����");
		System.out.println("id�� " + memberDTO.getId());
		System.out.println("pwd�� " + memberDTO.getPwd());
		System.out.println("�̸��� " + memberDTO.getName());
		System.out.println("signUp ����");

		if (memberService.memberDuplicatedById(memberDTO.getId())) {

			//����÷��
			MultipartFile file = memberDTO.getFile();

			if (file.getSize() > 0) {
				String fileName = file.getOriginalFilename();

				memberDTO.setPicture(fileName);
				file.transferTo(new File(path + "/" + fileName));
			}

			memberDTO.setStatusFlag(1);//����ȸ�� �����÷���

			memberService.MemberInsert(memberDTO);

			System.out.println(memberDTO.getId() + "�� ������ ���ϵ帳�ϴ�.");

		} else {
			System.out.println("ȸ�����Կ� �����Ͽ����ϴ�.");
		}

		return "redirect:/member/login";
	}

	// ȸ��������
	@RequestMapping("/signUp")
	public void signUpForm(HttpSession session) {
	}

	// ���̵� �ߺ�üũ
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

		System.out.println("idCheck ����");

		return result;
	}

	// �α�����
	@RequestMapping("/login")
	public String loginForm() {
		return "member/login";
	}

	// �α���
	@RequestMapping("/loginCheck")
	public String login(MemberDTO memberDTO, HttpSession session) throws Exception {

		MemberDTO dbDTO = memberService.memberSelectByIdPwd(memberDTO.getId(), memberDTO.getPwd());
		
		if (session != null) {
			session.setAttribute("userDTO", dbDTO);// jsp���� Ȯ���ϰ������ ${userDTO}�ϸ��
		}
		System.out.println("login ����");

		return "redirect:/";
	}

	// API�� �α��� īī����
		@RequestMapping("/loginAPI")
		@ResponseBody
		public Object loginAPI(MemberDTO memberDTO,HttpSession session) {
			System.out.println(memberDTO);
			Map <String, Object> result = new HashMap<>();
			result.put("status","fail");

			try {
			//true�� ���̵��� �̹� �ִ�. 
			// ���̵� ���ٸ� ���Խ��� => status = signUp
			if(memberService.memberDuplicatedById(memberDTO.getId())) {
				memberService.MemberInsert(memberDTO);
				session.setAttribute("userDTO",memberDTO);
				result.put("status","login");
			} else {
				//���̵� �ִٸ� �α��ν��� => status = login
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
			// ��� ���¸� �������ٸ� status - fail
			return result;
		}
		
		//���̽��� �α���
		
		 @RequestMapping("/facebookLogin")
		 @ResponseBody
		    public Object facebookLogin(String accessToken,HttpSession session,Model model) {
		        System.out.println("���̽��� �α��� �õ�");
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
		            // ȸ�� ������ ���ǿ� �����Ͽ� �ڵ� �α��� ó���� �Ѵ�.
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
	// �α׾ƿ�
	@RequestMapping("/logOut")
	public String logOut(HttpSession session) {
		System.out.println("logOut ����");
		session.invalidate();
		return "redirect:/";
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
