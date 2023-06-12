package com.poly.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.DAO.AccountDAO;
import com.poly.DAO.CategoryDAO;
import com.poly.DAO.OrderDAO;
import com.poly.DAO.OrderDetailDAO;
import com.poly.DAO.ProductDAO;
import com.poly.bean.SessionService;
import com.poly.model.Account;
import com.poly.model.Category;
import com.poly.model.Order;
import com.poly.model.OrderDetail;
import com.poly.model.Product;

import jakarta.mail.Session;
import jakarta.servlet.ServletContext;


@Controller
public class AdminOrderController {
	
	
	@Autowired
	OrderDAO oDao;	
	
	@Autowired
	ServletContext app;
	
	@Autowired
	SessionService session;
	


	// don hang---------------------------
	@RequestMapping("/admin/order/order")
	public String OrderList(Model model, @ModelAttribute("otherItem") Order o) {		
		model.addAttribute("OrderItems", oDao.findAll());
		return "Admin/order/order";
	}
	
	
//	@PostMapping("/admin/order/update")
//	public String OrderUpdate(Model model,@Validated @ModelAttribute("ortherItem") Order o, BindingResult result) {
//		if (!result.hasErrors()) {
//			if(oDao.findById(o.getId()).isEmpty())
//				model.addAttribute("error_product", "Id không tồn tại!");
//			else {
//			oDao.save(o);
//			model.addAttribute("success_product", "Update success!");
//			}
//		}	
//		return "Admin/order/order";
//	}
	
	
//	@GetMapping("/admin/order/edit")
//	public String OrderEdit(Model model, @RequestParam("id") Long id, @ModelAttribute("ortherItem") Order o) {
//		if(oDao.findById(o.getId()).isEmpty())
//			return "redirect:/admin/order/order";
//		else {
//			Order order = oDao.findById(id).get();
//			o.setId(order.getId());
//			o.setStatus(order.getStatus().toString());
//			
//			
//		}
//		model.addAttribute("ortherItems", oDao.findAll());
//		return "Admin/order/order";
//	}
	
	
	
	

}
