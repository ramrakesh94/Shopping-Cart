package com.niit.shoppingfront.DAOImpl;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingfront.DAO.CustomerDAO;
import com.niit.shoppingfront.model.Customer;


@Repository
public class CustomerDAOImpl implements CustomerDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	
	public CustomerDAOImpl() {
		System.out.println("CREATING INSTANCE FOR USERSDAOIMPL");
	}

	@Transactional
	public void saveCust(Customer cust) {
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(cust);
		session.flush();
		session.close();
		
	}

	public Customer getCustById(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	public Customer getByEmailId(String emailid) {
		String hql = "from Customer where customerEmail ='" + emailid + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Customer> listCustomer = (List<Customer>) (query).list();

		if (listCustomer != null && !listCustomer.isEmpty()) {
			return listCustomer.get(0);
		
	}
		return null;
	}
}
