package com.niit.shoppingfront.DAOImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingfront.DAO.ProductDAO;
import com.niit.shoppingfront.model.Product;




	@Repository
	public class ProductDAOImpl implements ProductDAO {
	
	
		@Autowired
		private SessionFactory sessionFactory;

		public SessionFactory getSessionFactory() {
			return sessionFactory;
		}

		public void setSessionFactory(SessionFactory sessionFactory) {
			this.sessionFactory = sessionFactory;
		}

		public void ProductDaoImpl() {
			System.out.println("CREATING INSTANCE FOR PRODUCTDAOIMPL");
		}

		@Transactional
		public void saveorupdateProduct(Product pro) {

			Session session = sessionFactory.openSession();
			session.saveOrUpdate(pro); // insert into product values
										// (next.val,.....)
			session.flush();
			session.close();

		}

		@Transactional
		public List<Product> getAllProducts() {
	
			@SuppressWarnings({ "unchecked" })
			List<Product> listProduct = (List<Product>) sessionFactory.getCurrentSession().createCriteria(Product.class)
					.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
			return listProduct;
		}

		@Transactional
		public Product getProductById(int id) {
			String hql = "from Product where productId ='" + id + "'";
			Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
			@SuppressWarnings("unchecked")
			List<Product> listProduct = (List<Product>) (query).list();

			if (listProduct != null && !listProduct.isEmpty()) {
				return listProduct.get(0);
			}
			return null;
		}

		@Transactional
		public void deleteProduct(int id) {
			Product productToDelete = new Product();
			productToDelete.setProductId(id);
			sessionFactory.getCurrentSession().delete(productToDelete);
		
	}

}