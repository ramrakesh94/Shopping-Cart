package com.niit.shoppingfront.Service;

import java.util.List;

import com.niit.shoppingfront.model.Ship;

public interface ShipService {

	public List<Ship> list(int id);

	public List<Ship> getByEmail(String email);

	public Ship getUser(String username);

	public Ship getByShipId(int ShipId);

	public void saveOrUpdate(Ship shipAddress);

	public void delete(int billingId);

	// public void editBillingAddress(BillingAddress billingAddress);

}
