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
	
	private String path = "C:\\Edu\\finalPhoto\\member"; // �����
	
	//��üȸ������
		@RequestMapping("/companyInsert")
		public String companyInsert(HttpSession session, MemberDTO memberDTO) throws Exception {
			System.out.println("companyInsert ����");
			System.out.println("memberDTO.getId()"+memberDTO.getId());
			System.out.println("companyDTO.getId()"+memberDTO.getCompany().getId());
			System.out.println("��ü��"+memberDTO.getCompany().getCompanyName());
			System.out.println("��ȭ��ȣ"+memberDTO.getCompany().getCompanyCall());
			System.out.println("�ּ�"+memberDTO.getCompany().getCompanyAddr());
			System.out.println("����"+memberDTO.getCompany().getAccount());
			System.out.println("����"+memberDTO.getCompany().getBank());
			System.out.println("�̸���"+memberDTO.getEmail());
			
			System.out.println("ȸ�������÷���"+memberDTO.getStatusFlag());
			

			//memberDTO.setId(memberDTO.getCompany().getId());
			memberDTO.setStatusFlag(2);	//��δ�ü �����÷���

			System.out.println("memberDTO.getId()"+memberDTO.getId());
			System.out.println("companyDTO.getId()"+memberDTO.getCompany().getId());

			System.out.println("ȸ�������÷���"+memberDTO.getStatusFlag());
			
			if (memberService.memberDuplicatedById(memberDTO.getId())) {

				//����÷��
				MultipartFile file = memberDTO.getFile();
				
				if (file.getSize() > 0) {
					String fileName = file.getOriginalFilename();

					memberDTO.setPicture(fileName);
					file.transferTo(new File(path + "/" + fileName));
				}

				memberService.MemberInsert(memberDTO);//�� ���⼭ status�÷��װ� 1�� �Ǵ°���
				System.out.println("ȸ�������÷���Ȯ��!!!"+memberDTO.getStatusFlag());//���⵵2�ε�...�֤ФФ�
				companyService.companyInsert(memberDTO);

				System.out.println("��δ�ü "+memberDTO.getId() + "�� ������ ���ϵ帳�ϴ�.");

			} else {
				System.out.println("ȸ�����Կ� �����Ͽ����ϴ�.");
			}
			
			
			return "redirect:/member/login";
		}
	
	//ȸ��������
	@RequestMapping("/companyInsertForm")
	public String companyInsertForm(HttpSession session) {
		
		return "member/company/companyInsertForm";
	}
	
	///////////////////////////////////////////////////////
	
	@RequestMapping("/companyMypage")
	public String companyMypage() {
		System.out.println("companyMypage ����");
		return "member/company/companyMypage";
	}
	
	@RequestMapping("/companyUpdateForm")
	public String companyUpdateForm() {
		System.out.println("companyUpdateForm ����");
		return "member/company/companyUpdateForm";
	}
	
	@RequestMapping("/companyUpdate")
	public String companyUpdate() {
		System.out.println("companyUpdate ����");
		return "member/company/companyUpdate";
	}
	
	@RequestMapping("/companyProject")
	public String companyProject() {
		System.out.println("companyProject ����");
		return "member/company/companyProject";
	}
	
}

	