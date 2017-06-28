package com.niit.shoppingfront.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "customer")
@Component
public class Customer {
	
	@Id
	@GeneratedValue
	private int customerId;

	private String customerName;

	private String customerAddress;

	private String customerPhone;

	private String customerEmail;
	
	private String customerPass;
	
	private String customerZIP;
	
	private boolean enabled;
	
	@OneToOne(cascade= CascadeType.ALL)
    @JoinColumn(name="customerId")
	private Role role;
	
	public int getCustomerId() {
		return customerId;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
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

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public String getCustomerPass() {
		return customerPass;
	}

	public void setCustomerPass(String customerPass) {
		this.customerPass = customerPass;
	}

	public String getCustomerZIP() {
		return customerZIP;
	}

	public void setCustomerZIP(String customerZIP) {
		this.customerZIP = customerZIP;
	}

}
