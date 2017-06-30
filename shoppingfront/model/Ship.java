package com.niit.shoppingfront.model;

import javax.persistence.*;

import org.springframework.stereotype.Component;
@Entity
@Table(name="Shipping")
@Component

public class Ship {

	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int shipId;

	private int customerId;
	
	private String customerName;
	
	private String customerEmail;
	
	private String customerAddress;
	
	private String customerPhone;

	private String customerZIP;
	
	private String customerfeed;

	public String getCustomerfeed() {
		return customerfeed;
	}

	public void setCustomerfeed(String customerfeed) {
		this.customerfeed = customerfeed;
	}

	public int getShipId() {
		return shipId;
	}

	public void setShipId(int shipId) {
		this.shipId = shipId;
	}

	

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public String getCustomerAddress() {
		return customerAddress;
	}

	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}

	public String getCustomerPhone() {
		return customerPhone;
	}

	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}

	public String getCustomerZIP() {
		return customerZIP;
	}

	public void setCustomerZIP(String customerZIP) {
		this.customerZIP = customerZIP;
	}


}