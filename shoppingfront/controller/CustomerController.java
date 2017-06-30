
package com.niit.shoppingfront.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.shoppingfront.DAO.CustomerDAO;
import com.niit.shoppingfront.DAO.RoleDAO;
import com.niit.shoppingfront.Service.CustomerService;
import com.niit.shoppingfront.Service.ProductService;
import com.niit.shoppingfront.Service.RoleService;
import com.niit.shoppingfront.Service.ShipService;
import com.niit.shoppingfront.model.Customer;
import com.niit.shoppingfront.model.Product;
import com.niit.shoppingfront.model.Role;
import com.niit.shoppingfront.model.Ship;

@Controller
public class CustomerController {

	@Autowired
	CustomerService customerService;

	@Autowired
	ShipService shipService;
	
	@Autowired
	private RoleDAO roleDAO;

	@Autowired
	Role role;

	@Autowired
	RoleService roleService;

	@Autowired
	private CustomerDAO customerdao;
	@Autowired
	ProductService productService;

	public CustomerController() {
		System.out.println("INSTANTIATING CUSTOMER CONTROLLER");
	}

	@RequestMapping("newCustomer")
	public String newCust(@ModelAttribute Customer cust, @ModelAttribute Ship ship, Model model) {

		cust.setEnabled(true);
		role.setCustomerEmail(cust.getCustomerEmail());
		role.setRole("ROLE_USER");

		cust.setRole(role);
		role.setCustomer(cust);

		customerService.saveCust(cust);
		roleService.saveOrUpdateRole(role);
		
		ship.setCustomerId(cust.getCustomerId());
		shipService.saveOrUpdate(ship);
		model.addAttribute("message", "You have Registered Successfully ");
		model.addAttribute("isUserClickedSignSuccess", "true");
		
		return "home";
	}

	@RequestMapping("/afterlogin")
	public String afterLogin(Principal p, Model model,String cust) {
		String emailid = p.getName();

		// Customer customer = customerdao.getByEmailId(emailid);

		Role role = roleDAO.getByEmailId(emailid);// cid

		String r = role.getRole();

		if (r.equals("ROLE_ADMIN")) {
			model.addAttribute("isAdminLoggedIn", "true");
			return "Admin";
		} else if (r.equals("ROLE_USER")) {
			List<Product> productList = productService.getAllProducts();
			/*List <Customer> Custlist = (List<Customer>) customerdao.getCustById(cust);*/
        	model.addAttribute("listofprod", productList);
			model.addAttribute("isUserLoggedIn", "true");
			return "User";
		} else {
			model.addAttribute("message", "Invalid email and password");
			return "home";
		}

	}
}
