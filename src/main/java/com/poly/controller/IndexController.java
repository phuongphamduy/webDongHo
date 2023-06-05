package com.poly.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.DAO.CategoryDAO;
import com.poly.DAO.OrderDetailDAO;
import com.poly.DAO.ProductDAO;
import com.poly.bean.SessionService;
import com.poly.model.Account;
import com.poly.model.OrderDetail;
import com.poly.model.Product;

@Controller
public class IndexController {
	
	@Autowired
	ProductDAO pdao;
	@Autowired
	CategoryDAO cdao;
	@Autowired
	OrderDetailDAO ddao;
	@Autowired
	SessionService sessionse;
	
	@RequestMapping("/")
	public String index(Model model, @RequestParam(required=false, value="p") Optional<Integer> p, @RequestParam(required=false, value="id") Optional<String> id) {
		Pageable pager = PageRequest.of(0, 6);
		Pageable pageProduct = PageRequest.of(p.orElse(0), 8);
		model.addAttribute("page", pdao.findByCategoryId(id.orElse("1"), pageProduct));
		model.addAttribute("categories", cdao.findAll());
		model.addAttribute("newProducts", pdao.findOrderByDate(pager));
		model.addAttribute("categories", cdao.findAll());
		Account acc = sessionse.get("user");
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
		return "index";
	}
	
//	@RequestMapping("/{id}")
//	public String apple(Model model, @PathVariable("id") String id) {
//		model.addAttribute("products", pdao.findByCategoryId(id));
//		
//		Pageable pager = PageRequest.of(0, 6);
//		model.addAttribute("newProducts", pdao.findOrderByDate(pager));
//		Account acc = sessionse.get("user");
//		if(acc == null) {
//			model.addAttribute("sign", "Đăng nhập");
//			model.addAttribute("link", "in");
//			model.addAttribute("count", 0);
//		}else {
//			model.addAttribute("sign", "Đăng xuất"); 
//			model.addAttribute("link", "out");
//			int count = 0;
//			for(OrderDetail od : ddao.findAllByUsernameA(acc.getUsername())) {
//				count++;
//			}
//			model.addAttribute("count", count);
//		}
//		return "index";
//	}
	
	
}
