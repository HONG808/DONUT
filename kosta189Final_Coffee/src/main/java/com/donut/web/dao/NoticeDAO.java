package com.donut.web.dao;

import java.util.List;

import com.donut.web.dto.NoticeDTO;

public interface NoticeDAO {

	public int noticeInsert(NoticeDTO noticeDTO) throws Exception;
	//������Ʈ���� ������ �������� ���� �޼���
	public NoticeDTO noticeSelectByNo(int noticeNo) throws Exception;
	
	public int noticeUpdate(NoticeDTO noticeDTO) throws Exception;
	
	public List<NoticeDTO> noticeSelectAll() throws Exception;
	
	public NoticeDTO noticeRead(int noticeNo) throws Exception;
	
	public int noticeDelete(int noticeNo) throws Exception;
	
	public boolean noticeDuplicatedById(int noticeNo) throws Exception;
}
