package com.donut.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

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
	public String projectRead(HttpSession session, Model model,@RequestParam("projectNo") int projectNo) {
		
		try {
			ProjectDTO projectDTO = projectService.projectSelectByNo(projectNo);
			
			//즐겨찾기 값 세팅
			FavoriteDTO favoriteDTO = new FavoriteDTO();
			favoriteDTO.setProjectNo(projectNo);
			favoriteDTO.setId("test2");
			//즐겨찾기 상태 체크
			boolean flag = projectService.projectFavoriteSelectByNo(favoriteDTO);
			boolean updateFlag = projectService.projectDuplicatedById(projectNo,(String)session.getAttribute("id"));
			
			model.addAttribute("projectDTO",projectDTO);
			model.addAttribute("favoriteDTO", favoriteDTO);
			model.addAttribute("flag", flag);
			model.addAttribute("updateFlag", updateFlag);
			//조건문으로 itemOrMoney 체크할 것

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "project/projectRead";
	}
	
	@RequestMapping("/categoryList")
	public String categoryList() {
		return "project/categoryList";
	}
	
	@RequestMapping("/categoryList2")
	public String categoryList2() {
		return "project/categoryList2";
	}
	
	@RequestMapping("/catagoryList3")
	public String catagoryList3() {
		return "project/catagoryList3";
	}
	
	@RequestMapping("/projectFavorite")
	public String projectFavorite() {
		return "project/projectFavorite";
	}
	
	@RequestMapping("/projectInsertForm")
	public String projectInsert() {
		return "project/projectInsertForm";
	}
	
	@RequestMapping("/itemInsert")
	public String itemInsert(ProjectDTO projectDTO, String category) {
		//category 분류
		String [] categorys = category.split(">");
		projectDTO.setCategory1(categorys[0]);
		projectDTO.setCategory2(categorys[1]);
		
		try{
			projectService.ItemInsert(projectDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:projectList";
	}
	
	@RequestMapping("/moneyInsert")
	public String moneyInsert(ProjectDTO projectDTO, String category) {
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
		return "project/projectUpdateForm";
	}
	
	@RequestMapping("/projectUpdate")
	public String projectUpdate() {
		return "project/projectUpdate";
	}
	
	@RequestMapping("/projectCheck")
	public String projectCheck() {
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
