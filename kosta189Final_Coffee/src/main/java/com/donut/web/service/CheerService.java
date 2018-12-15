package com.donut.web.service;

import java.util.List;

import com.donut.web.dto.CheerDTO;

public interface CheerService {

	public List<CheerDTO> selectByAll() throws Exception;
	
	public int cheerInsert(CheerDTO cheerDTO) throws Exception;
	
	public int cheerReplyInsert(CheerDTO cheerDTO) throws Exception;
	
	//수정을 위한 검색
	public CheerDTO cheerSelectByNo(int cheerNo) throws Exception;
	
	public int cheerUpdate(CheerDTO cheerDTO) throws Exception;
	
	public int cheerDelete(int cheerNo) throws Exception;
	
	public boolean cheerDuplicatedById(int cheerNo) throws Exception;
}
