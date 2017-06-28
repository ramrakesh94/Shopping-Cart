package com.niit.shoppingfront.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.shoppingfront.Service.SupplierService;
import com.niit.shoppingfront.model.Category;
import com.niit.shoppingfront.model.Product;
import com.niit.shoppingfront.model.Supplier;

@Controller
public class SupplierController {

	@Autowired
	SupplierService supplierService;

	public SupplierController() {
		System.out.println("INSTANTIATING SUPPLIER CONTROLLER");
	}

	@RequestMapping("supadd")
	public String Suppview(Model model) {
		model.addAttribute("isSupClicked", "true");
		return "Admin";
	}

	@RequestMapping("supview")
	public String supview(Model model) {
	List<Supplier> supplierlist = supplierService.list();
		model.addAttribute("listofSup",supplierlist);
		model.addAttribute("isSupView", "true");
		return "Admin";
	}

	@RequestMapping("newSupplier")
	public String viewsup(@ModelAttribute Supplier sup) {
		supplierService.saveOrUpdate(sup);
		return "Admin";
	}
	
	@RequestMapping("deleteSupplier")
	public String deleteSupplier(@RequestParam(value = "supplierId") String sId){
		supplierService.delete(sId);
		return "redirect:supview";}
		
		@RequestMapping("editSupplier") // passing id to get all details of product 
		public String editSupplier(@RequestParam(value = "supplierId") String sId, Model model){
			Supplier supplier = supplierService.get(sId);
			model.addAttribute("supplier", supplier);
			model.addAttribute("isAdminClickedEditSupp", "true");
			return "Admin";
			
		}
		@RequestMapping("afterEditSupplier")
		public String afterEditSupplier(@ModelAttribute Supplier sup){
			supplierService.saveOrUpdate(sup);
			return "redirect:supview";
}
	@ModelAttribute
	public void adminSupplier(Model model){
		model.addAttribute("isAdminLoggedIn", "true");
	}
}
