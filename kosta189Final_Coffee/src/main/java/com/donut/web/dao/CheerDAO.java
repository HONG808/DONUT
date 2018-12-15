package com.donut.web.dao;

import java.util.List;

import com.donut.web.dto.CheerDTO;

public interface CheerDAO {

public List<CheerDTO> selectByAll() throws Exception;
	
	public int cheerInsert(CheerDTO cheerDTO) throws Exception;
	
	public int cheerReplyInsert(CheerDTO cheerDTO) throws Exception;
	
	//수정을 위한 검색
	public CheerDTO cheerSelectByNo(int cheerNo) throws Exception;
	
	public int cheerUpdate(CheerDTO cheerDTO) throws Exception;
	
	public int cheerDelete(int CheerNo) throws Exception;
	
	public boolean cheerDuplicatedById(int cheerNo) throws Exception;
}
