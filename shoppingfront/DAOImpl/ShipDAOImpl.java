package com.niit.shoppingfront.DAOImpl;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingfront.DAO.ShipDAO;
import com.niit.shoppingfront.model.Ship;
@Repository
public class ShipDAOImpl implements ShipDAO {


@Autowired
private SessionFactory sessionFactory;

@Transactional
public List<Ship> list(int id) {
	String hql = "from Ship where shipId='" + id + "'";
	Query query = sessionFactory.getCurrentSession().createQuery(hql);
	@SuppressWarnings("unchecked")
	List<Ship> list = (List<Ship>) query.list();
	
	return list;
	// TODO Auto-generated method stub
	
}

@Transactional
public Ship get(String username) {
	String hql = "from Ship where customerName ='"+ username+"'";
	Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
	@SuppressWarnings("unchecked")
	List<Ship> listShip = (List<Ship>) (query).list();
	
	if (listShip != null && !listShip.isEmpty()){
		return listShip.get(0);
	}
	return null;
	// TODO Auto-generated method stub
}

@Transactional
public Ship getByshipId(int ShipId) {
	String hql = "from Ship where shipId ='"+ ShipId+"'";
	Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
	@SuppressWarnings("unchecked")
	List<Ship> listShip = (List<Ship>) (query).list();
	
	if (listShip != null && !listShip.isEmpty()){
		return listShip.get(0);
	}
	return null;
	// TODO Auto-generated method stub
	
}

@Transactional
public void saveOrUpdate(Ship shipAddress) {
	sessionFactory.getCurrentSession().saveOrUpdate(shipAddress);
	// TODO Auto-generated method stub
	
}

@Transactional
public void delete(int shipId) {
	Ship shippingAddressToDelete = new Ship();
	shippingAddressToDelete.setShipId(shipId);
	sessionFactory.getCurrentSession().delete(shippingAddressToDelete);
	// TODO Auto-generated method stub
	
}

/*@Override
public void editShippingAddress(ShippingAddress shippingAddress) {
	sessionFactory.getCurrentSession().saveOrUpdate(shippingAddress);
	// TODO Auto-generated method stub
	
}
*/
public SessionFactory getSessionFactory() {
	return sessionFactory;
}

public void setSessionFactory(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}
@Transactional
public List<Ship> getByEmail(String email) {
	String hql = "from Ship where customerEmail='" + email + "'";
	Query query = sessionFactory.getCurrentSession().createQuery(hql);
	@SuppressWarnings("unchecked")
	List<Ship> list = (List<Ship>) query.list();
	
	return list;}



}