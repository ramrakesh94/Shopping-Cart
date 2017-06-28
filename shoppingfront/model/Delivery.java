package com.niit.shoppingfront.model;

public class Delivery {
	
	private int deliveryID;
	
	private int customerID;
	
	private String shipAdress;
	
	private String shipName;

	private String shipPhone;

	private String shipEmail;

	public int getDeliveryID() {
		return deliveryID;
	}

	public void setDeliveryID(int deliveryID) {
		this.deliveryID = deliveryID;
	}

	public int getCustomerID() {
		return customerID;
	}

	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}

	public String getShipAdress() {
		return shipAdress;
	}

	public void setShipAdress(String shipAdress) {
		this.shipAdress = shipAdress;
	}

	public String getShipName() {
		return shipName;
	}

	public void setShipName(String shipName) {
		this.shipName = shipName;
	}

	public String getShipPhone() {
		return shipPhone;
	}

	public void setShipPhone(String shipPhone) {
		this.shipPhone = shipPhone;
	}

	public String getShipEmail() {
		return shipEmail;
	}

	public void setShipEmail(String shipEmail) {
		this.shipEmail = shipEmail;
	}
	

}
