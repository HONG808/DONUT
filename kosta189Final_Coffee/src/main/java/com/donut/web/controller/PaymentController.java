package com.donut.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/payment")
public class PaymentController {

	@RequestMapping("/paymentGive")
	public String paymentGive() {
		System.out.println("paymentGive 출력");
		return "payment/paymentGive";
	}
	
	@RequestMapping("/paymentComplete")
	public String paymentComplete() {
		System.out.println("paymentComplete 출력");
		return "payment/paymentComplete";
	}
	
	
}
