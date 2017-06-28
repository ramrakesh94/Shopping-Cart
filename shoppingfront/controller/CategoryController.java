package com.niit.shoppingfront.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.shoppingfront.DAO.CategoryDAO;
import com.niit.shoppingfront.Service.CategoryService;
import com.niit.shoppingfront.model.Category;

@Controller
public class CategoryController {

	@Autowired
	CategoryService categoryService;

	public CategoryController() {
		System.out.println("INSTANTIATING CATEGORYCONTROLLER");
	}

	@RequestMapping("catadd")
	public String Catadd(Model model) {
		model.addAttribute("isCatClicked", "true");
		
		return "Admin";
	}

	@RequestMapping("newCategory")
	public String newCategory(@ModelAttribute Category cat) {
		categoryService.saveOrUpdate(cat);
		return "redirect:catview";
	}

	@RequestMapping("catview")
	public String catview(Model model) {
		List<Category> categoryList = categoryService.list();
		model.addAttribute("asdf", categoryList);
		model.addAttribute("isCatView", "true");
		return "Admin";
	}
	@RequestMapping("deleteCategory")
	public String deleteCategory(@RequestParam(value = "categoryId") int cId){
		categoryService.deleteCategory(cId);
		return "redirect:catview";
		
	}
	@RequestMapping("editCategory") // passing id to get all details of product 
	public String editCategory(@RequestParam(value = "categoryId") int cId, Model model){
		Category category = categoryService.getById(cId);
		model.addAttribute("category", category);
		model.addAttribute("isAdminClickedEditCat", "true");
		return "Admin";
		
	}
	@RequestMapping("afterEditCategory")
	public String afterEditCategory(@ModelAttribute Category cat){
		categoryService.saveOrUpdate(cat);
		return "redirect:catview";
	}
	@ModelAttribute // common 4 all methods 
	public void adminCategory(Model model){
		model.addAttribute("isAdminLoggedIn", "true");
	}
}
