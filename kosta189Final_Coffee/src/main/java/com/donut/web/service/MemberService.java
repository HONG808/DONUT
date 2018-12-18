package com.donut.web.service;

import java.util.List;

import com.donut.web.dto.CheerDTO;
import com.donut.web.dto.FavoriteDTO;
import com.donut.web.dto.GiveDTO;
import com.donut.web.dto.MemberDTO;
import com.donut.web.dto.ProjectDTO;
import com.donut.web.dto.QnADTO;

public interface MemberService {

	//ȸ������ 
	public int MemberInsert(MemberDTO memberDTO) throws Exception;

	//id �ߺ�üũ
	public boolean memberDuplicatedById(String id) throws Exception;

	//id �α��� - id,���
	public MemberDTO memberSelectByIdPwd(String id, String pwd) throws Exception;

	//API�� �α���[����]
	public void loginAPI() throws Exception;

	//ȸ��Ż��
	public int memberDelete() throws Exception;

	//ȸ��Ż�� �� ���� �� ��й�ȣ Ȯ��
	public boolean memberDuplicatedByPwd(String pwd) throws Exception;

	//����� ���������� - service���� ���� �����ֱ�
	public MemberDTO memberSelectAll() throws Exception;

	//����� ���������� ������� - service���� ���� �����ֱ�
	public List<CheerDTO> memberSelectByCheer() throws Exception;

	//����� ���������� QnA - service���� ���� �����ֱ�
	public List<QnADTO> memberSelectByQnA() throws Exception;

	//ȸ������ ���� �� - service ���Ǻ����ֱ�
	public MemberDTO memberSelectById() throws Exception;

	//����� ���������� ȸ������ �������� - view���� ���� ������������
	public int memberUpdate(MemberDTO memberDTO) throws Exception;

	//����� ���������� ���ã�� ����Ʈ - service ���Ǻ����ֱ�
	public List<FavoriteDTO> memberFavoriteList() throws Exception;

	//����� ���������� ���ã�� ���� - favoriteNo �信�� �������� , service ���� ���̵� �����ֱ�
	public int memberFavoriteDelete(int favoriteNo) throws Exception;

	//����� ���������� ������ 
	public List<GiveDTO> memberReceiptList() throws Exception;

	//����� ������Ʈ ��� ��Ȳ
	public List<ProjectDTO> memberGiveList(String id) throws Exception;
}
