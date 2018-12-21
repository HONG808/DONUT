package com.donut.web.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.donut.web.dao.MemberDAO;
import com.donut.web.dto.CheerDTO;
import com.donut.web.dto.FavoriteDTO;
import com.donut.web.dto.GiveDTO;
import com.donut.web.dto.MemberDTO;
import com.donut.web.dto.ProjectDTO;
import com.donut.web.dto.QnADTO;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Autowired
	SqlSession session;
	
	@Override
	public int memberInsert(MemberDTO memberDTO) throws Exception {
		return session.insert("memberMapper.memberInsert", memberDTO);
	}

	@Override
	public boolean memberDuplicatedById(String id) throws Exception {
		if(session.selectOne("memberMapper.memberIdcheck", id)==null) {	//사용가능
			return true;	
		}
		else {
			return false;
		}
	}
	/* 지성 아이디비번 체크
	@Override
	public MemberDTO memberSelectByIdPwd(String id, String pwd) throws Exception {
		Map<String,Object> map = new HashMap<>();
		map.put("id", id);
		map.put("pwd", pwd);
		return session.selectOne("memberMapper.memberSelectByIdAndPwd",map);
	}
	*/

	@Override
	public MemberDTO memberSelectByIdPwd(String id, String pwd) throws Exception {
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("pwd", pwd);
		
		return session.selectOne("memberMapper.memberIdPwdCheck", map);
	}
	
	@Override
	public void loginAPI() throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int memberDelete(MemberDTO memberDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean memberDuplicatedByPwd(String id, String pwd) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public MemberDTO memberSelectAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CheerDTO> memberSelectByCheer(String id) throws Exception {
		return session.selectList("memberMapper.memberSelectByCheer", id);
	}

	@Override
	public List<QnADTO> memberSelectByQnA(String id) throws Exception {
		return session.selectList("memberMapper.memberSelectByQnA", id);
	}


	@Override
	public MemberDTO memberSelectById(String id) throws Exception {
		return session.selectOne("memberMapper.memberIdCheck",id);
	}

	@Override
	public int memberUpdate(MemberDTO memberDTO) throws Exception {
		return session.update("memberMapper.memberUpdate",memberDTO);
	}

	@Override
	public List<FavoriteDTO> memberFavoriteList(String id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int memberFavoriteDelete(int favoriteNo, String id) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<GiveDTO> memberReceiptList(String id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProjectDTO> memberGiveList(String id) throws Exception {
		return session.selectList("memberMapper.memberGiveList",id);
	}
	

}
