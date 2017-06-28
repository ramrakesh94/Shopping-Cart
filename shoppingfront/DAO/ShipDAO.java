package com.niit.shoppingfront.DAO;

import java.util.List;

import com.niit.shoppingfront.model.Ship;

public interface ShipDAO {

	public List<Ship> list(int id);

	public Ship get(String username);

	public List<Ship> getByEmail(String email);

	public Ship getByshipId(int shipId);

	public void saveOrUpdate(Ship shipAddress);

	public void delete(int shipId);

	// public void editBillingAddress(BillingAddress billingAddress);

}