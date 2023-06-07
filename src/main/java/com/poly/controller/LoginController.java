package com.poly.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.DAO.AccountDAO;
import com.poly.bean.CookieService;
import com.poly.bean.ParamService;
import com.poly.bean.SessionService;
import com.poly.model.Account;

import jakarta.validation.Valid;

@Controller
public class LoginController {

	@Autowired
	AccountDAO adao;
	@Autowired
	CookieService cookiese;
	@Autowired
	ParamService paramse;
	@Autowired
	SessionService sessionse;

	@RequestMapping(value = "/form/in")	
	public String form(@CookieValue(required = false, name = "username") String username,
			@CookieValue(required = false, name = "password") String password, Model model,
			@RequestAttribute(required = false, name = "message") String message) {
		model.addAttribute("username", username);
		model.addAttribute("pass", password);
		model.addAttribute("message", message);
		return "sign-in";
	}
	
	@RequestMapping("/signUp")
	public String signIn(@ModelAttribute("account") Account acc) {
		return "signUp";
	}
	
	@PostMapping("/SignUp")
	public String doSignUp(@Valid @ModelAttribute("account") Account acc,BindingResult result, @RequestParam("rePass") String rePass, Model model) {
		Optional<Account> account = adao.findById(acc.getUsername());
		if(account.isPresent()) {
			System.out.println("hello");
			model.addAttribute("isHave", true);
			return "signUp";
		}else {
			model.addAttribute("isHave", false);
		}
		if(acc.getPassword().equals(rePass) && !result.hasErrors()) {
			adao.save(acc);
		}else {
			model.addAttribute("re", true);
		}
		
		return "redirect:/form/in";
	}
	
	

	@PostMapping("/login")
	public String login(@RequestParam("username") String un, @RequestParam("password") String pw,
			@RequestParam(required = false, name = "remember") String rm, Model model) {
		String username = paramse.getString(un, "");
		String password = paramse.getString(pw, "");
		Boolean remember = paramse.getBoolean(rm, false);
		try {
			Account acc = adao.getOne(un);
			if (acc != null) {
				if (acc.getUsername().equals(username) && acc.getPassword().equals(password)) {
					sessionse.set("user", acc);
					if (remember) {
						cookiese.add("username", username, 24);
						cookiese.add("password", password, 24);
					}
				} else {
					model.addAttribute("message", "Chưa nhập đúng thông tin tài khoản");
					return "forward:/form";
				}
			}
		} catch (Exception e) {
			model.addAttribute("message", "Nhập sai tên đăng nhập");
			return "forward:/form";
		}

		return "forward:/";

	}

	@RequestMapping("/form/out")
	public String out() {
		sessionse.remove("user");
		return "redirect:/";
	}
}
