package com.donut.web.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.donut.web.dao.ProjectDAO;
import com.donut.web.dto.FavoriteDTO;
import com.donut.web.dto.ItemDTO;
import com.donut.web.dto.ProjectDTO;

@Repository
public class ProjectDAOImpl implements ProjectDAO{
	
	@Autowired
	SqlSession session;
	
	@Override
	public List<ProjectDTO> projectSelectAll() throws Exception {
		return session.selectList("projectMapper.projectSelectAll");
	}

	@Override
	public ProjectDTO projectSelectByNo(int projectNo) throws Exception {
		return session.selectOne("projectMapper.projectSelectByNo", projectNo);
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
		  FavoriteDTO favoritedbDTO = session.selectOne("projectMapper.selectFavoriteByNo",favoriteDTO);
	    	if(favoritedbDTO==null)return false;
	    	else return true;
	}

	@Override
	public int itemInsert(ProjectDTO projectDTO) throws Exception {
		int result= session.insert("projectMapper.itemInsert", projectDTO);
		return result;
	}
	
	@Override
	public int itemListInsert(ItemDTO itemDTO) throws Exception {
		int result= session.insert("projectMapper.itemListInsert", itemDTO);
		return result;
	}
	

	@Override
	public int moneyInsert(ProjectDTO projectDTO) throws Exception {
		int result= session.insert("projectMapper.moneyInsert", projectDTO);
		if(result == 0) {
			throw new Exception("금액 기부 프로젝트 등록실패 ");
		}
		return result;
	}

	
	
	@Override
	public int projectUpdate(ProjectDTO projectDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int projectFavoriteInsert(FavoriteDTO favoriteDTO) throws Exception {
		return session.insert("projectMapper.insertFavorite", favoriteDTO);
	}

	@Override
	public int projectFavoriteDelete(FavoriteDTO favoriteDTO) throws Exception {
		return session.delete("projectMapper.deleteFavorite", favoriteDTO);
	}

	@Override
	public boolean projectDuplicatedById(int ProjectNo) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	
}
