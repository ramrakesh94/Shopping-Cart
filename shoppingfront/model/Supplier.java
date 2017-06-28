package com.niit.shoppingfront.model;

import javax.persistence.*;

import org.springframework.stereotype.Component;
@Entity
@Table(name="Supplier")
@Component
public class Supplier {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	

	private String supplierId;

	private String supplierName;
	
	private String supplierAddress;
	
	private String supplierPhone;
	
	private String supplierZIP;
	
	private String supplierEmail;

	public String getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(String supplierId) {
		this.supplierId = supplierId;
	}

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	public String getSupplierAddress() {
		return supplierAddress;
	}

	public void setSupplierAddress(String supplierAddress) {
		this.supplierAddress = supplierAddress;
	}

	public String getSupplierPhone() {
		return supplierPhone;
	}

	public void setSupplierPhone(String supplierPhone) {
		this.supplierPhone = supplierPhone;
	}

	public String getSupplierZIP() {
		return supplierZIP;
	}

	public void setSupplierZIP(String supplierZIP) {
		this.supplierZIP = supplierZIP;
	}

	public String getSupplierEmail() {
		return supplierEmail;
	}

	public void setSupplierEmail(String supplierEmail) {
		this.supplierEmail = supplierEmail;
	}


	
	

}
