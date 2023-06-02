package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PayController {
	@RequestMapping("/pay")
	public String form() {
		return "form";
	}
	
	@RequestMapping("/success")
	public String success() {
		return "thanhcong";
	}
}
