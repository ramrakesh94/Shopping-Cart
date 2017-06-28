package com.niit.shoppingfront.DAOImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingfront.DAO.CategoryDAO;
import com.niit.shoppingfront.model.Category;

@Repository
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public void saveOrUpdate(Category category) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(category);
		session.flush();
		session.close();

	}

	@Transactional
	public void deleteCategory(int categoryId) {
		// TODO Auto-generated method stub
		Category categoryToDelete = new Category();
		categoryToDelete.setCategoryId(categoryId);
		sessionFactory.getCurrentSession().delete(categoryToDelete);
	}

	@Transactional
	public List<Category> list() {
		@SuppressWarnings({ "unchecked" })
		List<Category> listCategory = (List<Category>) sessionFactory.getCurrentSession().createCriteria(Category.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listCategory;
	}
	@Transactional
	public Category getById(int categoryId) {
		String hql = "from Category where categoryId ='" + categoryId + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) (query).list();

		if (listCategory != null && !listCategory.isEmpty()) {
			return listCategory.get(0);
		}
		return null;
	}

}
