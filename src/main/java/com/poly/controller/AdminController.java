package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	@RequestMapping("/admin/index")
	public String Admin() {
		return "Admin/index";
	}

	// user------------------------------
	@RequestMapping("/admin/user/formuser")
	public String FormUser() {
		return "Admin/user/formUser";
	}

	@RequestMapping("/admin/user/listuser")
	public String ListUser() {
		return "Admin/user/list-user";
	}

	// don hang---------------------------
	@RequestMapping("/admin/order/order")
	public String OrderList() {
		return "Admin/order/order";
	}

	@RequestMapping("/admin/order/detailorder")
	public String DetailOrder() {
		return "Admin/order/detail-order";
	}

	@RequestMapping("/admin/order/delivered")
	public String orderDelivered() {
		return "Admin/order/order-delivered-list";
	}

	// san pam--------------------------------
	@RequestMapping("/admin/product/formproduct")
	public String FormProduct() {
		return "Admin/product/form-product";
	}

	@RequestMapping("/admin/form/danhmuc")
	public String Danhmuc() {
		return "Admin/danhmuc/danhmuc";
	}

	@RequestMapping("/admin/product/formsize")
	public String FormSize() {
		return "Admin/product/form-size";
	}

	@RequestMapping("/admin/thongke/tkproduct")
	public String ThongkeProduct() {
		return "Admin/thongke/thongke-product";
	}

	@RequestMapping("/admin/thongke/tkorder")
	public String ThongkeOrder() {
		return "Admin/thongke/thongke-order";
	}

}
