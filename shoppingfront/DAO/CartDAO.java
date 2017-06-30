package com.niit.shoppingfront.DAO;

import java.util.List;

import com.niit.shoppingfront.model.Cart;

public interface CartDAO {
	
	
	public List<Cart> list();
	
	public Cart get(int cartId);
	
	public void saveOrUpdate(Cart cart);
	
	public void delete(int cartId);

	public Double getTotalAmount(String customerEmail);
	
	public List<Cart> getByEmailId(String customerEmail);
	
	// public List<Cart> getCartByuserName(String userName);
		
	public boolean itemAlreadyExist(String customerEmail, int productId);

	public Cart getByUserandProduct(String customerEmail, int productId);

}


