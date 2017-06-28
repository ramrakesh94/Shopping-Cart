package com.niit.shoppingfront.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingfront.DAO.ProductDAO;
import com.niit.shoppingfront.Service.ProductService;
import com.niit.shoppingfront.model.Product;

@Service
 public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDAO productDAO;

	public ProductServiceImpl() {
		System.out.println("CREATING INSTANCE FOR PRODUCTSERVICEIMPL");

	}

	@Transactional
	public void saveorupdateProduct(Product pro) {
		 productDAO.saveorupdateProduct(pro);
	}

	@Transactional
	public List<Product> getAllProducts() {
		// TODO Auto-generated method stub
		return productDAO.getAllProducts();
	}

	@Transactional
	public Product getProductById(int id) {
		// TODO Auto-generated method stub
		return productDAO.getProductById(id);
	}

	@Transactional
	public void deleteProduct(int id) {
		// TODO Auto-generated method stub
		productDAO.deleteProduct(id);

	}
	
	}

	
