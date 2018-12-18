package com.donut.web.service.impl;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.donut.web.dao.ProjectDAO;
import com.donut.web.dto.FavoriteDTO;
import com.donut.web.dto.ItemDTO;
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
			throw new Exception("����Ʈ ����");
		}
		return list;
	}

	@Override
	public ProjectDTO projectSelectByNo(int projectNo) throws Exception {
		ProjectDTO projectDTO = projectDAO.projectSelectByNo(projectNo);
		
		if(projectDTO == null) {
			throw new Exception("�󼼺��� ����");
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
		return projectDAO.projectFavoriteSelectByNo(favoriteDTO);
	}

	@Override
	public int ItemInsert(ProjectDTO projectDTO) throws Exception {
		
		if(projectDAO.itemInsert(projectDTO) == 0 ) {
			throw new Exception("item insert �����߻�");
		}
		
		Iterator<ItemDTO> iter = projectDTO.getItem().iterator();
		while(iter.hasNext()) {
			if(projectDAO.itemListInsert(iter.next()) == 0) {
				throw new Exception("item ��ǰ ��Ͻ� ���� �߻�");
			}
		}
		return 1;
	}

	@Override
	public int MoneyInsert(ProjectDTO projectDTO) throws Exception {
		return projectDAO.moneyInsert(projectDTO);
	}

	@Override
	public int projectUpdate(ProjectDTO projectDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int projectFavoriteInsert(FavoriteDTO favoriteDTO) throws Exception {
		  int result =projectDAO.projectFavoriteInsert(favoriteDTO);
          if(result==0) throw new Exception("��ϵ��� �ʾҽ��ϴ�.");
          return result; 
	}

	@Override
	public int projectFavoriteDelete(FavoriteDTO favoriteDTO) throws Exception {
		int result=projectDAO.projectFavoriteDelete(favoriteDTO);
        if(result==0) throw new Exception("�������� �ʾҽ��ϴ�.");
        return result;
	}

	@Override
	public boolean projectDuplicatedById(int ProjectNo,String id) throws Exception {
		return projectDAO.projectDuplicatedById(ProjectNo,id);
	}

	
}
