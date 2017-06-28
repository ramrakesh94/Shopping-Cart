package com.niit.shoppingfront.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingfront.DAO.ShipDAO;
import com.niit.shoppingfront.Service.ShipService;
import com.niit.shoppingfront.model.Ship;

@Service
public class ShipServiceImpl implements ShipService {
	
	
	@Autowired
	private ShipDAO shipDao;

	@Transactional
	public List<Ship> list(int id) {
		// TODO Auto-generated method stub
		return shipDao.list(id) ;
	}

	@Transactional
	public Ship getUser(String username) {
		// TODO Auto-generated method stub
		return shipDao.get(username);
	}

	@Transactional
	public Ship getByShipId(int ShipId) {
		// TODO Auto-generated method stub
		return shipDao.getByshipId(ShipId);
	}

	@Transactional
	public void saveOrUpdate(Ship ShipAddress) {
		shipDao.saveOrUpdate(ShipAddress);
		
		// TODO Auto-generated method stub
		
	}

	@Transactional
	public void delete(int shipId) {
		shipDao.delete(shipId);
		// TODO Auto-generated method stub
		
	}
	@Transactional
	public List<Ship> getByEmail(String email) {
		// TODO Auto-generated method stub
		return shipDao.getByEmail(email);
	}

/*	@Transactional
	public void editBillingAddress(BillingAddress shippingAddress) {
		// TODO Auto-generated method stub
		
	}*/
	

}



