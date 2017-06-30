package com.niit.shoppingfront.model;

import java.sql.Time;

import javax.persistence.*;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "cart")
@Component
public class Cart {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int cartId;

	private int productId;
	
	private String customerId;

	private int cartQuantity;

	private String productName;
	
	private int productPrice;
	private String cartStatus;

	private float cartTotalprice;

	private String customerEmail;
	
	private float carttDays;
	

	private String cartTime;
	
	private int shipId;
	

	



	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public int getShipId() {
		return shipId;
	}

	public void setShipId(int shipId) {
		this.shipId = shipId;
	}

	public String getCartTime() {
		return cartTime;
	}

	public void setCartTime(String cartTime) {
		this.cartTime = cartTime;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getCartQuantity() {
		return cartQuantity;
	}

	public void setCartQuantity(int cartQuantity) {
		this.cartQuantity = cartQuantity;
	}

	public String getCartStatus() {
		return cartStatus;
	}

	public void setCartStatus(String cartStatus) {
		this.cartStatus = cartStatus;
	}

	public float getCartTotalprice() {
		return cartTotalprice;
	}

	public void setCartTotalprice(float cartTotalprice) {
		this.cartTotalprice = cartTotalprice;
	}

	public float getCarttDays() {
		return carttDays;
	}

	public void setCarttDays(float carttDays) {
		this.carttDays = carttDays;
	}

	

	

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}
	

}
