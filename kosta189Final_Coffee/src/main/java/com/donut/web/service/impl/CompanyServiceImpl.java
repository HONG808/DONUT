package com.donut.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.donut.web.dao.CompanyDAO;
import com.donut.web.dto.MemberDTO;
import com.donut.web.dto.ProjectDTO;
import com.donut.web.service.CompanyService;

@Service
public class CompanyServiceImpl implements CompanyService {
	
	@Autowired
	private CompanyDAO companyDAO;

	@Override
	public int companyInsert(MemberDTO memberDTO) throws Exception {
		System.out.println("companyInsertServiceImpl¿”" + memberDTO.getId());
		return companyDAO.companyInsert(memberDTO);
	}

	@Override
	public List<MemberDTO> companySelectAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberDTO companySelectByid() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int companyUpdate(MemberDTO memberDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ProjectDTO> companyProjectSelectAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
