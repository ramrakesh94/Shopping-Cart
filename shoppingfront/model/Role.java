package com.niit.shoppingfront.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;
import org.springframework.stereotype.Component;

@Entity
@Table(name = "Role")
@Component
public class Role {

	@Id
	@GeneratedValue(generator = "newGenerator")
	@GenericGenerator(name = "newGenerator", strategy = "foreign", parameters = {
			@Parameter(value = "customer", name = "property") })
	private int customerId;
	private String customerEmail;

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	private String role;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "customerId")
	private Customer customer;

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

}
