package com.niit.shoppingfront.DAO;

import java.util.List;

import com.niit.shoppingfront.model.Product;

public interface ProductDAO {
	
	void saveorupdateProduct(Product pro);

	List <Product> getAllProducts();

	Product getProductById(int id);

	void deleteProduct(int id);

}
