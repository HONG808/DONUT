package com.donut.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.donut.web.dto.CheerDTO;
import com.donut.web.dto.ItemDTO;
import com.donut.web.dto.ProjectDTO;
import com.donut.web.dto.QnADTO;
import com.donut.web.service.CheerService;
import com.donut.web.service.ProjectService;
import com.donut.web.service.QnAService;

@Controller
@RequestMapping("/project")
public class ProjectController {
	
	@Autowired
	ProjectService projectService;
	@Autowired
	private CheerService cheerService;
	@Autowired
	private QnAService qnaService;
	
	@RequestMapping("/projectList")
	public String projectList(Model model) {
		try {
			List<ProjectDTO> list = projectService.projectSelectAll();
			model.addAttribute("list",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "project/projectList";
	}
	
	@RequestMapping("/projectRead")
	public String projectRead(Model model,@RequestParam("projectNo") int projectNo) {
		
		List<CheerDTO> list;
		List<QnADTO> qnaList;
		try {
			ProjectDTO projectDTO = projectService.projectSelectByNo(projectNo);
			model.addAttribute("projectDTO",projectDTO);

			int cheerprojectNo = projectDTO.getProjectNo();
			list = cheerService.selectByAll(cheerprojectNo);
			model.addAttribute("list", list);
			
			qnaList = qnaService.qnaSelectAll(cheerprojectNo);
			model.addAttribute("qnaList", qnaList);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "project/projectRead";
	}
	
	@RequestMapping("/categoryList")
	public String categoryList() {
		System.out.println("categoryList 출력");
		return "project/categoryList";
	}
	
	@RequestMapping("/categoryList2")
	public String categoryList2() {
		System.out.println("categoryList2 출력");
		return "project/categoryList2";
	}
	
	@RequestMapping("/catagoryList3")
	public String catagoryList3() {
		System.out.println("catagoryList3 출력");
		return "project/catagoryList3";
	}
	
	@RequestMapping("/projectFavorite")
	public String projectFavorite() {
		System.out.println("projectFavorite 출력");
		return "project/projectFavorite";
	}
	
	@RequestMapping("/projectInsertForm")
	public String projectInsert() {
		return "project/projectInsertForm";
	}
	
	@RequestMapping("/ItemInsert")
	public String ItemInsert(ProjectDTO projectDTO, String category) {
		//category 분류
		String [] categorys = category.split(">");
		projectDTO.setCategory1(categorys[0]);
		projectDTO.setCategory2(categorys[1]);

		
		
		return "redirect:projectList";
	}
	
	@RequestMapping("/MoneyInsert")
	public String MoneyInsert(ProjectDTO projectDTO, String category) {
		String [] categorys = category.split(">");
		projectDTO.setCategory1(categorys[0]);
		projectDTO.setCategory2(categorys[1]);
		
		projectDTO.setId("company1");
		try { 
		projectService.MoneyInsert(projectDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:projectList";
	}
	
	@RequestMapping("/projectUpdateForm")
	public String projectUpdateForm() {
		System.out.println("projectUpdateForm 출력");
		return "project/projectUpdateForm";
	}
	
	@RequestMapping("/projectUpdate")
	public String projectUpdate() {
		System.out.println("projectUpdate 출력");
		return "project/projectUpdate";
	}
	
	@RequestMapping("/projectCheck")
	public String projectCheck() {
		System.out.println("projectCheck 출력");
		return "project/projectCheck";
	}
	
}
