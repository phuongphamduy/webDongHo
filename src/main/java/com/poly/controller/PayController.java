package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.DAO.AccountDAO;
import com.poly.DAO.OrderDAO;
import com.poly.DAO.OrderDetailDAO;
import com.poly.bean.SessionService;
import com.poly.model.Account;
import com.poly.model.Order;
import com.poly.model.OrderDetail;

@Controller
public class PayController {

	@Autowired
	SessionService sessionse;
	@Autowired
	OrderDetailDAO ddao;
	@Autowired
	AccountDAO adao;
	@Autowired
	OrderDAO odao;

	@RequestMapping("/pay")
	public String form(Model model) {

		Account acc = sessionse.get("user");
		double oldSum = 0;
		double newSum = 0;
		if (acc != null) {
			List<OrderDetail> listOrder = ddao.findAllByUsernameA(acc.getUsername());
			model.addAttribute("items", listOrder);

			for (OrderDetail od : listOrder) {
				oldSum += od.getProduct().getPrice() * od.getQuantity();
				newSum += od.getPrice() * od.getQuantity();

			}
			double discount;
			model.addAttribute("oldSum", oldSum);
			model.addAttribute("newSum", newSum);
			model.addAttribute("discount", oldSum - newSum);

		}

		model.addAttribute("user", acc);
		if (acc == null) {
			model.addAttribute("sign", "Đăng nhập");
			model.addAttribute("link", "in");
			model.addAttribute("count", 0);
		} else {
			model.addAttribute("sign", "Đăng xuất");
			model.addAttribute("link", "out");
			int count = 0;
			for (OrderDetail od : ddao.findAllByUsernameA(acc.getUsername())) {
				count++;
			}
			model.addAttribute("count", count);
		}

		return "form";
	}

	@RequestMapping("/success")
	public String success(Model model, @RequestParam("fullname") String fullname, @RequestParam("email") String email, @RequestParam("phone") String phone, @RequestParam("address") String address) {
		Account acc = sessionse.get("user");
		
		Order order = odao.findByAddressU(acc.getUsername());
		order.setFullname(fullname);
		order.setEmail(email);
		order.setAddress(address);
		order.setPhone(phone);
		order.setStatus(false);
		odao.save(order);
		
		if (acc == null) {
			model.addAttribute("sign", "Đăng nhập");
			model.addAttribute("link", "in");
			model.addAttribute("count", 0);
		} else {
			model.addAttribute("sign", "Đăng xuất");
			model.addAttribute("link", "out");
			int count = 0;
			for (OrderDetail od : ddao.findAllByUsernameA(acc.getUsername())) {
				count++;
			}
			model.addAttribute("count", count);
		}
		return "thanhcong";
	}
}
