package com.donut.web.controller;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.donut.web.dto.MemberDTO;
import com.donut.web.service.CompanyService;
import com.donut.web.service.MemberService;

@Controller
@RequestMapping("/company")
public class CompanyController {

	@Autowired
	private CompanyService companyService;
	
	@Autowired
	private MemberService memberService;
	
	private String path = "C:\\Edu\\finalPhoto\\member"; // 저장소
	
	//단체회원가입
		@RequestMapping("/companyInsert")
		public String companyInsert(HttpSession session, MemberDTO memberDTO) throws Exception {
			System.out.println("companyInsert 실행");
			System.out.println("memberDTO.getId()"+memberDTO.getId());
			System.out.println("companyDTO.getId()"+memberDTO.getCompany().getId());
			System.out.println("단체명"+memberDTO.getCompany().getCompanyName());
			System.out.println("전화번호"+memberDTO.getCompany().getCompanyCall());
			System.out.println("주소"+memberDTO.getCompany().getCompanyAddr());
			System.out.println("계좌"+memberDTO.getCompany().getAccount());
			System.out.println("은행"+memberDTO.getCompany().getBank());
			System.out.println("이메일"+memberDTO.getEmail());
			
			System.out.println("회원상태플래그"+memberDTO.getStatusFlag());
			

			//memberDTO.setId(memberDTO.getCompany().getId());
			memberDTO.setStatusFlag(2);	//기부단체 상태플래그

			System.out.println("memberDTO.getId()"+memberDTO.getId());
			System.out.println("companyDTO.getId()"+memberDTO.getCompany().getId());

			System.out.println("회원상태플래그"+memberDTO.getStatusFlag());
			
			if (memberService.memberDuplicatedById(memberDTO.getId())) {

				//파일첨부
				MultipartFile file = memberDTO.getFile();
				
				if (file.getSize() > 0) {
					String fileName = file.getOriginalFilename();

					memberDTO.setPicture(fileName);
					file.transferTo(new File(path + "/" + fileName));
				}

				memberService.MemberInsert(memberDTO);//왜 여기서 status플래그가 1로 되는거지
				System.out.println("회원상태플래그확인!!!"+memberDTO.getStatusFlag());//여기도2인데...왜ㅠㅠㅠ
				companyService.companyInsert(memberDTO);

				System.out.println("기부단체 "+memberDTO.getId() + "님 가입을 축하드립니다.");

			} else {
				System.out.println("회원가입에 실패하였습니다.");
			}
			
			
			return "redirect:/member/login";
		}
	
	//회원가입폼
	@RequestMapping("/companyInsertForm")
	public String companyInsertForm(HttpSession session) {
		
		return "member/company/companyInsertForm";
	}
	
	///////////////////////////////////////////////////////
	
	@RequestMapping("/companyMypage")
	public String companyMypage() {
		System.out.println("companyMypage 실행");
		return "member/company/companyMypage";
	}
	
	@RequestMapping("/companyUpdateForm")
	public String companyUpdateForm() {
		System.out.println("companyUpdateForm 실행");
		return "member/company/companyUpdateForm";
	}
	
	@RequestMapping("/companyUpdate")
	public String companyUpdate() {
		System.out.println("companyUpdate 실행");
		return "member/company/companyUpdate";
	}
	
	@RequestMapping("/companyProject")
	public String companyProject() {
		System.out.println("companyProject 실행");
		return "member/company/companyProject";
	}
	
}

	