package com.springcrud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springcrud.entity.Product;
import com.springcrud.service.ProductService;

@Controller
public class HomeController {
	@Autowired
	private ProductService service;

	@RequestMapping({"/","/home"})
	public String home(Model model) {
		List<Product> product=service.listall();
		model.addAttribute("product" , product);
		return "home";
	}
	@RequestMapping("/save")
	public String save(Product product)
	{
		service.save(product);
		return "redirect:/home";	
	}
	@GetMapping("/register")
	public String register()
	{
		return "register";
		
	}
	
	@RequestMapping("/updateUser")
	public String update(@RequestParam int id,Model model)
	{
		Product prod= service.returnByID(id);
		model.addAttribute("product",prod);
		return "update";
	}
	@RequestMapping("deleteUser")
	public String delete(@RequestParam int id)
	{
		service.delete(id);
		return "redirect:/home";
	}
}
