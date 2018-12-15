package com.donut.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/company")
public class CompanyController {
	
	@RequestMapping("/companyInsertForm")
	public String companyInsertForm() {
		System.out.println("companyInsertForm ����");
		return "member/company/companyInsertForm";
	}
	
	@RequestMapping("/companyInsert")
	public String companyInsert() {
		System.out.println("companyInsert ����");
		return "member/company/companyInsert";
	}
	
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

	