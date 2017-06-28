package com.niit.shoppingfront.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingfront.DAO.CustomerDAO;
import com.niit.shoppingfront.Service.CustomerService;
import com.niit.shoppingfront.model.Customer;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerDAO customerDAO;

	public CustomerServiceImpl() {
		System.out.println("CREATING INSTANCE FOR PRODUCTSERVICEIMPL");

	}

	@Transactional
	public void saveCust(Customer cust) {
		customerDAO.saveCust(cust);

	}

	@Transactional
	public Customer getUsersById(String username) {
		// TODO Auto-generated method stub
		return customerDAO.getCustById(username);
	}

	@Transactional
	public Customer getUsersByEmail(String email) {
		// TODO Auto-generated method stub
		return customerDAO.getByEmailId(email);
	}

	/*
	 * @Transactional public boolean UserAlreadyExist(String email, boolean b) {
	 * // TODO Auto-generated method stub return
	 * usersDao.UserAlreadyExist(email, b); }
	 */
}