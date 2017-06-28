package com.niit.shoppingfront.DAOImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingfront.DAO.CartDAO;
import com.niit.shoppingfront.model.Cart;
import com.niit.shoppingfront.model.Customer;

@Repository
public class CartDAOImpl implements CartDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public List<Cart> list(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public List<Cart> list() {
		@SuppressWarnings({ "unchecked" })
		List<Cart> listCart = (List<Cart>) sessionFactory.getCurrentSession().createCriteria(Cart.class);
		// TODO Auto-generated method stub
		return listCart;
	}

	@Transactional
	public Cart get(int cartId) {
		
		String hql = "from Cart where CartId ='" + cartId +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) query.list();
		
		return null;
	}

	@Transactional
	public void saveOrUpdate(Cart cart) {
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(cart);
		session.flush();
		session.close();

	}

	@Transactional
	public void delete(int cartId) {
		Session session = sessionFactory.openSession();
		Cart cart = (Cart) session.get(Cart.class, cartId);
		session.delete(cart);
		session.flush();
		session.close();
	}

	
	/*
	 * public List<Cart> getCartByuserName(String userName) { // TODO
	 * Auto-generated method stub Criteria criteria =
	 * sessionFactory.getCurrentSession().createCriteria(Cart.class);
	 * criteria.add(Restrictions.eq("userName", userName)); return
	 * criteria.list(); }
	 * 
	 * @Transactional public boolean itemAlreadyExist(int userId, int productId,
	 * boolean b) { // TODO Auto-generated method stub String hql =
	 * "from Cart where userId= '" + userId + "' and " + " productId ='" +
	 * productId+"'"; org.hibernate.Query query =
	 * sessionFactory.getCurrentSession().createQuery(hql);
	 * 
	 * @SuppressWarnings("unchecked") List<Cart> list = (List<Cart>)
	 * query.list(); if (list != null && !list.isEmpty()) { return true; }
	 * return false; }
	 */

	/*
	 * @Transactional public Cart getByUserandProduct(int userId, int productId)
	 * { // TODO Auto-generated method stub String hql =
	 * "from Cart where userId= '" + userId + "' and " + " productId ='" +
	 * productId+"'"; org.hibernate.Query query =
	 * sessionFactory.getCurrentSession().createQuery(hql);
	 * 
	 * @SuppressWarnings("unchecked") List<Cart> listCart = (List<Cart>)
	 * query.list();
	 * 
	 * if (listCart != null && !listCart.isEmpty()){ return listCart.get(0); }
	 * return null; }
	 */

	
	
	@SuppressWarnings("unchecked")
	@Transactional
	public Long getTotalAmount(int id) {
		String hql = "select sum(total) from Cart where userId = " + "'" + id + "'" + "and status = '" + "Pending"
				+ "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		Long sum = (Long) query.uniqueResult();
		return sum;
	}
	@Transactional
	public List<Cart> getByEmailId(String customerEmail) {
		String hql = "from Cart where customerEmail ='" + customerEmail + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> listCart = (List<Cart>) (query).list();

		
		return listCart;
	
	}
	@Transactional
	public boolean itemAlreadyExist(String customerEmail, int productId) {
		String hql = "from Cart where customerEmail= '" + customerEmail + "' and " + " productId ='" + productId+"'";
		org.hibernate.Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) query.list();
		if (list != null && !list.isEmpty()) {
			return true;
		}
		return false;
	}
	@Transactional
	public Cart getByUserandProduct(String customerEmail, int productId) {
		String hql = "from Cart where customerEmail= '" + customerEmail + "' and " + " productId ='" + productId+"'";
		org.hibernate.Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> listCart = (List<Cart>) query.list();
		
		if (listCart != null && !listCart.isEmpty()){
			return listCart.get(0);
		}
		return null;
	}

}
