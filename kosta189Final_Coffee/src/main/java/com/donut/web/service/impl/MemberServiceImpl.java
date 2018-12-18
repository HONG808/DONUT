package com.donut.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.donut.web.dao.MemberDAO;
import com.donut.web.dto.CheerDTO;
import com.donut.web.dto.FavoriteDTO;
import com.donut.web.dto.GiveDTO;
import com.donut.web.dto.MemberDTO;
import com.donut.web.dto.ProjectDTO;
import com.donut.web.dto.QnADTO;
import com.donut.web.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberDAO;

	@Override
	public int MemberInsert(MemberDTO memberDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean memberDuplicatedById(String id) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public MemberDTO memberSelectByIdPwd(String id, String pwd) throws Exception {
		return memberDAO.memberSelectByIdPwd(id, pwd);
	}

	@Override
	public void loginAPI() throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public int memberDelete() throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean memberDuplicatedByPwd(String pwd) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public MemberDTO memberSelectAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CheerDTO> memberSelectByCheer() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<QnADTO> memberSelectByQnA() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberDTO memberSelectById() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int memberUpdate(MemberDTO memberDTO) throws Exception {
		int result = memberDAO.memberUpdate(memberDTO);
		if(result == 0 ) {
			throw new Exception("수정 실패");
		}
		return result;
	}

	@Override
	public List<FavoriteDTO> memberFavoriteList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int memberFavoriteDelete(int favoriteNo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<GiveDTO> memberReceiptList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProjectDTO> memberGiveList(String id) throws Exception {
		List<ProjectDTO> list = memberDAO.memberGiveList(id);
		
		if(list == null || list.isEmpty()) {
			throw new Exception("멤버 기부 정보 조회 실패");
		}
		return list;
	}



}
