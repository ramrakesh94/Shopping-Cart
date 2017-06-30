package com.niit.shoppingfront.Service;

import java.util.List;

import com.niit.shoppingfront.model.Cart;



public interface CartService {

	public List<Cart> list(int id);
	
	
	public Cart get(int cartId);
	
	public List<Cart> getByEmailId(String customerEmail);
	
	public void saveOrUpdate(Cart cart);
	
	public Double getTotalAmount(String customerEmail);
	
	public void delete(int cartId);
	
	public boolean itemAlreadyExist(String customerEmail, int productId);

	public Cart getByUserandProduct(String customerEmail, int productId);


}


	