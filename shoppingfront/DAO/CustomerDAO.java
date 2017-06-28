package com.niit.shoppingfront.DAO;

import com.niit.shoppingfront.model.Customer;
import com.niit.shoppingfront.model.Role;

public interface CustomerDAO {

	public void saveCust(Customer cust);

	public Customer getCustById(String username);
	
	public Customer getByEmailId(String emailid);

	// public boolean CustAlreadyExist(String email,boolean b);

}
