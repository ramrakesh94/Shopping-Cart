package com.niit.shoppingfront.DAO;

import java.util.List;

import com.niit.shoppingfront.model.Category;

public interface CategoryDAO {

	public void saveOrUpdate(Category category);

	public void deleteCategory(int categoryId);

	public List<Category> list();

	public Category getById(int categoryId);

}
