package com.niit.shoppingfront.controller;

import java.security.Principal;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingfront.DAO.ShipDAO;
import com.niit.shoppingfront.Service.CartService;
import com.niit.shoppingfront.Service.CustomerService;
import com.niit.shoppingfront.Service.ProductService;
import com.niit.shoppingfront.Service.ShipService;
import com.niit.shoppingfront.model.Cart;
import com.niit.shoppingfront.model.Product;
import com.niit.shoppingfront.model.Ship;

@Controller
public class CartController {

	@Autowired
	CartService cartService;

	@Autowired
	CustomerService custtomerService;

	@Autowired
	ProductService productService;

	@Autowired
	Cart cart;

	@Autowired
	ShipService shipService;
	
	public CartController() {
		System.out.println("INSTANTIATING CATEGORYCONTROLLER");
	}

	/*
	 * @RequestMapping("newCart") public String newCart(@ModelAttribute Cart
	 * cart) { cartService.saveOrUpdate(cart); return "home";
	 */
	@RequestMapping("mycart")
	public String mycart(Principal p,Model m) {
		
		List<Cart> cartList = cartService.getByEmailId(p.getName());
		m.addAttribute("cartList", cartList);
		m.addAttribute("isUserClickedmyCart", "true");
		return "User";

	}
	
	/*@RequestMapping("removeCart")
	public String removecart(@RequestParam(value = "cartId") int cid){
		Cart nct = cartService.get(cid);
		Product pro = productService.getProductById(nct.getProductId());
		int qty = pro.getProductStock() + nct.getCartQuantity();
		pro.setProductStock(qty);
		productService.saveorupdateProduct(pro);
		cartService.delete(cid);
		return"redirect:mycart";
		}*/
	
	@RequestMapping("removeCart")
	public String removeCart(@RequestParam("cartId") int cartId, Model model){
		Cart cart = cartService.get(cartId);
		Product product = productService.getProductById(cartId);
		
		int qty = product.getProductStock() + cart.getCartQuantity();
		
		product.setProductStock(qty);
		productService.saveorupdateProduct(product);
		
		cartService.delete(cartId);
		return "redirect:mycart";
	}
	
	

	@RequestMapping("addTocart")
	public String Mycart(Model model, Principal p, @RequestParam(value = "productId") int productId) {

		String emailid = p.getName();

		Product product = productService.getProductById(productId);
		Cart crt = cartService.getByUserandProduct(emailid, productId);
		if (product.getProductStock() > 0) {

			Random t = new Random();
			int day = 2 + t.nextInt(7);
			Date today = new Date(); 
			String t1 = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
			System.out.println(t1);

			if (cartService.itemAlreadyExist(emailid, productId)) {

				int qty = crt.getCartQuantity() + 1;
				crt.setCartQuantity(qty);
				crt.setCartTotalprice(qty * product.getProductPrice());
				cartService.saveOrUpdate(crt);
			} else {
				cart.setProductId(productId);
				cart.setProductName(product.getProductName());
				cart.setCartQuantity(1);
				cart.setCartStatus("Ready");
				cart.setProductPrice(product.getProductPrice());
				cart.setCarttDays(day);
				cart.setCartTime(t1);
				cart.setCartTotalprice(product.getProductPrice());
				cart.setCustomerEmail(emailid);

				cartService.saveOrUpdate(cart);
			}

			product.setProductStock(product.getProductStock() - 1);
			productService.saveorupdateProduct(product);

			return "redirect:mycart";
		} else {
			model.addAttribute("message", "Out of Stock");
			return "home";
		}

		// model.addAttribute("myCartClicked", true);

	}
	
	@RequestMapping("proceed")
	public String proceed(Principal p, Model model){
		
		List<Ship> shippingList = shipService.getByEmail(p.getName());
		model.addAttribute("shippingList", shippingList);
		model.addAttribute("isUserClickedProceed", "true");
		return "User";
		
	}
	@RequestMapping("NewDelivery")
	public String NewDelivery(Model m){
		m.addAttribute("isUserClickedNewDelivery", "true");
		return "User";
	}
	
	@RequestMapping("deliverytofriend")
	public String dtf(@ModelAttribute Ship ship, Principal p)
	{
		ship.setCustomerEmail(p.getName());
		shipService.saveOrUpdate(ship);
		return"redirect:proceed";
	}
}