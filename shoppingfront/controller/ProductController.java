package com.niit.shoppingfront.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.shoppingfront.DAO.CategoryDAO;
import com.niit.shoppingfront.DAO.SupplierDAO;
import com.niit.shoppingfront.Service.ProductService;
import com.niit.shoppingfront.model.Category;
import com.niit.shoppingfront.model.Product;
import com.niit.shoppingfront.model.Supplier;
import com.niit.shoppingfront.util.FileUtil;

@Controller
public class ProductController {

	@Autowired
	ProductService productService;
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private SupplierDAO supplierDAO;

	public ProductController() {
		System.out.println("INSTANTIATING CATEGORYCONTROLLER");
	}

	@RequestMapping("prodadd")
	public String Prodadd(Model model) {
		List<Category> categoryList = categoryDAO.list();
		List<Supplier> supplierList = supplierDAO.list();
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("supplierList", supplierList);
		model.addAttribute("isProdClicked", "true");
		return "Admin";
	}

	@RequestMapping("prodview")
	public String Prodview(Model model) {	
		List<Product> productList = productService.getAllProducts();
		
		model.addAttribute("listofprod", productList);
		model.addAttribute("isProdView", "true");
		
		return "Admin";
	}

	@RequestMapping("newProduct")
	public String newProd(@ModelAttribute Product prod,@RequestParam("image") MultipartFile file, Model model) {
		productService.saveorupdateProduct(prod);
		String path="C://Users/ramv/workspace/ShoppingFront/src/main/webapp/WEB-INF/resources/images/productImages/";
		FileUtil.upload(path, file, prod.getProductId()+".jpg");
		return "redirect:prodview";
	}
		
		@RequestMapping("deleteProduct")
		public String deleteProduct(@RequestParam(value = "productId") int pId){
			productService.deleteProduct(pId);
			return "redirect:prodview";
	}
		@RequestMapping("editProduct")
		public String editProduct(@RequestParam(value = "productId") int pId,Model model ){
			Product product = productService.getProductById(pId);
			model.addAttribute("product", product);
			model.addAttribute("isAdminClickedEditProd","true");
			return "Admin";}
			
			@RequestMapping("afterEditProduct")
			public String afterEditProduct(@ModelAttribute Product prod){
				productService.saveorupdateProduct(prod);
				return "redirect:prodview";
	}
	@ModelAttribute
	public void adminProduct(Model model){
		model.addAttribute("isAdminLoggedIn", "true");
	}
}
