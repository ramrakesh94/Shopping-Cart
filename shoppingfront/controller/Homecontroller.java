package com.niit.shoppingfront.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingfront.Service.ProductService;
import com.niit.shoppingfront.model.Product;

@Controller
public class Homecontroller {

	@Autowired
	ProductService productService;

	@RequestMapping("/")
	public String homePage(Model model) {
		List<Product> productList = productService.getAllProducts();

		model.addAttribute("listofprod", productList);
		return "home";
	}
	
	@RequestMapping("Home")
	public String commonPage(Model model) {
		List<Product> productList = productService.getAllProducts();

		model.addAttribute("listofprod", productList);
		return "home";
	}

	@RequestMapping("SignUp")
	public String SignUpPage(Model model) {
		model.addAttribute("isUserClickedSignUp", "true");
		return "home";
	}
	
	
	@RequestMapping("store")
	public String StorePage(Model model) {
		model.addAttribute("isUserClickedStore", "true");
		return "index";
	}
	
	@RequestMapping("about")
	public String AboutPage(Model model) {
		model.addAttribute("isUserClickedAboutUs", "true");
		return "index";
	}



	@RequestMapping("SignIn")
	public String SigninPage(Model model) {
		model.addAttribute("isUserClickedSignIn", "true");
		return "home";
	}
	
	@RequestMapping("prodInfo")
	public String ProdInfo(@RequestParam(value ="productId") int pId,Model model ) {
		Product product = productService.getProductById(pId);
		model.addAttribute("product", product);
		model.addAttribute("isUserClickedProdInfo", "true");
		return "home";
	}
	
	
	@RequestMapping("/loginpage")
	public ModelAndView loginpage(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		ModelAndView mv = new ModelAndView("home");

		if (error != null) {
			model.addAttribute("error", "Username or Password Incorrect");
		}

		if (logout != null) {
			model.addAttribute("logout", "Logged out Successfully");
		}

		mv.addObject("loginButtonClicked", true);
		return mv;
	}
}
