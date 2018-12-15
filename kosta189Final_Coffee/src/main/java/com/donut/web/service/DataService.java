package com.donut.web.service;

import java.util.List;

import com.donut.web.dto.DataDTO;

public interface DataService {

	public List<DataDTO> dataSelectAll() throws Exception;
	
}
