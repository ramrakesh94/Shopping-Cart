package com.niit.shoppingfront.Service;

import com.niit.shoppingfront.model.Customer;

public interface CustomerService {

	public void saveCust(Customer cust);

	Customer getUsersById(String username);

	Customer getUsersByEmail(String email);

	
	// public boolean UserAlreadyExist(String email, boolean b);
}