package com.donut.web.dao;

import java.util.List;

import com.donut.web.dto.DataDTO;

public interface DataDAO {

	public List<DataDTO> dataSelectAll() throws Exception;

}
