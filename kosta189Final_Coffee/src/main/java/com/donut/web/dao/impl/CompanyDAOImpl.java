package com.donut.web.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.donut.web.dao.CompanyDAO;
import com.donut.web.dto.MemberDTO;
import com.donut.web.dto.ProjectDTO;

@Repository
public class CompanyDAOImpl implements CompanyDAO {
	
	@Autowired
	private SqlSession session;

	@Override
	public int companyInsert(MemberDTO memberDTO) throws Exception {
		return session.insert("companyMapper.companyInsert", memberDTO);
	}

	@Override
	public List<MemberDTO> companySelectAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberDTO companySelectByid(String id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int companyUpdate(MemberDTO memberDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ProjectDTO> companyProjectSelectAll(String id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
