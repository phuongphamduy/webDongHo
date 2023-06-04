package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.DAO.OrderDAO;
import com.poly.DAO.OrderDetailDAO;
import com.poly.bean.SessionService;
import com.poly.model.Account;
import com.poly.model.Order;
import com.poly.model.OrderDetail;

@Controller
public class HoaDonController {
	
	@Autowired
	SessionService sessionse;
	@Autowired
	OrderDetailDAO ddao;
	@Autowired
	OrderDAO odao;
	
	@RequestMapping("/hoadon")
	public String hoadon(Model model) {
		
		Account acc = sessionse.get("user");
		
		List<Order> list = odao.findAll();
		model.addAttribute("items", list);
		
		
		if(acc == null) {
			model.addAttribute("sign", "Đăng nhập");
			model.addAttribute("link", "in");
			model.addAttribute("count", 0);
		}else {
			model.addAttribute("sign", "Đăng xuất"); 
			model.addAttribute("link", "out");
			int count = 0;
			for(OrderDetail od : ddao.findAllByUsernameA(acc.getUsername())) {
				count++;
			}
			model.addAttribute("count", count);
		}
		return "hoadon";
	}
}
