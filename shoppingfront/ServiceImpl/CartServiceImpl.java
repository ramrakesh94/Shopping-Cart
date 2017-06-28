package com.niit.shoppingfront.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingfront.DAO.CartDAO;
import com.niit.shoppingfront.Service.CartService;
import com.niit.shoppingfront.model.Cart;
@Service
public class CartServiceImpl implements CartService{
	
	@Autowired
	private CartDAO cartdao;

	public List<Cart> list(int id) {
		// TODO Auto-generated method stub
		return cartdao.list();
	}

	public Cart get(int cartId) {
		// TODO Auto-generated method stub
		return cartdao.get(cartId);
	}

	/*public List<Cart> getCartByuserName(String userName) {
		// TODO Auto-generated method stub
		return cartdao.getCartByuserName(userName);
	}*/

	public void saveOrUpdate(Cart cart) {
		// TODO Auto-generated method stub
		cartdao.saveOrUpdate(cart);
		
	}

	public Long getTotalAmount(int id) {
		// TODO Auto-generated method stub
	 return cartdao.getTotalAmount(id);
	}

	public void delete(int cartId) {
		// TODO Auto-generated method stub
		cartdao.delete(cartId);
		
	}

	public List<Cart> getByEmailId(String customerEmail) {
		// TODO Auto-generated method stub
		return cartdao.getByEmailId(customerEmail);
	}

	public boolean itemAlreadyExist(String customerEmail, int productId) {
		// TODO Auto-generated method stub
		return cartdao.itemAlreadyExist(customerEmail, productId);
	}

	public Cart getByUserandProduct(String customerEmail, int productId) {
		// TODO Auto-generated method stub
		return cartdao.getByUserandProduct(customerEmail, productId);
	}
}
	