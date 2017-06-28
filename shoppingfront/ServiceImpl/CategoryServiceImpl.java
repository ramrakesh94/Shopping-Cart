package com.niit.shoppingfront.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.shoppingfront.DAO.CategoryDAO;
import com.niit.shoppingfront.Service.CategoryService;
import com.niit.shoppingfront.model.Category;

@Service
public class CategoryServiceImpl implements CategoryService{

	@Autowired
	CategoryDAO categoryDAO;
	
	public void saveOrUpdate(Category category) {
	categoryDAO.saveOrUpdate(category);
		
	}

	public void deleteCategory(int categoryId) {
		categoryDAO.deleteCategory(categoryId);
		
	}

	public List<Category> list() {
		// TODO Auto-generated method stub
		return categoryDAO.list();
	}

	public Category getById(int categoryId) {
		// TODO Auto-generated method stub
		return categoryDAO.getById(categoryId);
	}

}
