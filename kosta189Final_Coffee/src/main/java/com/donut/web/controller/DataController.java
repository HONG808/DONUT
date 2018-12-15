package com.donut.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/data")
public class DataController {

	@RequestMapping("/dataSelectAll")
	public String dataSelectAll() {
		System.out.println("dataSelectAll");
		return "data/dataSelectAll";
	}
	
	
}
