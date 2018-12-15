package com.donut.web.service;

import java.util.List;

import com.donut.web.dto.PaymentDTO;

public interface PaymentService {

	public int paymentInsert(PaymentDTO paymentDTO) throws Exception;
	
	public List<PaymentDTO> paymentSelectAll() throws Exception;
	
	public PaymentDTO paymentSelectByGiveNo(int giveNo) throws Exception;
}
