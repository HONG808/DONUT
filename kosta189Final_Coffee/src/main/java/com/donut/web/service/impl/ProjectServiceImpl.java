package com.donut.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.donut.web.dao.ProjectDAO;
import com.donut.web.dto.FavoriteDTO;
import com.donut.web.dto.ProjectDTO;
import com.donut.web.service.ProjectService;

@Service
public class ProjectServiceImpl implements ProjectService{

	@Autowired
	ProjectDAO projectDAO;
	
	@Override
	public List<ProjectDTO> projectSelectAll() throws Exception {
		List<ProjectDTO> list = projectDAO.projectSelectAll();
		if(list == null || list.isEmpty()) {
			throw new Exception("리스트 실패");
		}
		return list;
	}

	@Override
	public ProjectDTO projectSelectByNo(int projectNo) throws Exception {
		ProjectDTO projectDTO = projectDAO.projectSelectByNo(projectNo);
		
		if(projectDTO == null) {
			throw new Exception("상세보기 실패");
		}
		
		return projectDTO;
	}

	@Override
	public List<ProjectDTO> projectSelectByCategory1() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProjectDTO> projectSelectByCategory2() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProjectDTO> projectSelectByCategory3() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean projectFavoriteSelectByNo(FavoriteDTO favoriteDTO) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int ItemInsert(ProjectDTO projectDTO) throws Exception {
		return projectDAO.ItemInsert(projectDTO);
	}

	@Override
	public int MoneyInsert(ProjectDTO projectDTO) throws Exception {
		return projectDAO.MoneyInsert(projectDTO);
	}

	@Override
	public int projectUpdate(ProjectDTO projectDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int projectFavoriteInsert(FavoriteDTO favoriteDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int projectFavoriteDelete(FavoriteDTO favoriteDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean projectDuplicatedById(int ProjectNo) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	
}
