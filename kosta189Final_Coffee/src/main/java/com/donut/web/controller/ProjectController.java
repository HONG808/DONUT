package com.donut.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.donut.web.dto.FavoriteDTO;
import com.donut.web.dto.ProjectDTO;
import com.donut.web.service.ProjectService;

@Controller
@RequestMapping("/project")
public class ProjectController {
	
	@Autowired
	ProjectService projectService;
	
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
		
		try {
			ProjectDTO projectDTO = projectService.projectSelectByNo(projectNo);
			
			//즐겨찾기 값 세팅
			FavoriteDTO favoriteDTO = new FavoriteDTO();
			favoriteDTO.setProjectNo(projectNo);
			favoriteDTO.setId("test2");
			//즐겨찾기 상태 체크
			boolean flag = projectService.projectFavoriteSelectByNo(favoriteDTO);
			
			
			model.addAttribute("projectDTO",projectDTO);
			model.addAttribute("favoriteDTO", favoriteDTO);
			model.addAttribute("flag", flag);

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
	
	//즐겨찾기 추가,삭제
	@RequestMapping(value = "/insertFavorite", method = RequestMethod.POST)
	@ResponseBody
	public int insertFavorite(FavoriteDTO favoriteDTO) {
		int result = 0;
		try {
			result = projectService.projectFavoriteInsert(favoriteDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@RequestMapping(value = "/deleteFavorite", method = RequestMethod.POST)
	@ResponseBody
	public int deleteFavorite(FavoriteDTO favoriteDTO) {
		int result = 0;

		try {

			result = projectService.projectFavoriteDelete(favoriteDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
}
