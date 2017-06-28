package com.niit.shoppingfront.DAOImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingfront.DAO.SupplierDAO;
import com.niit.shoppingfront.model.Product;
import com.niit.shoppingfront.model.Supplier;

@Repository
	public class SupplierDAOImpl implements SupplierDAO {

		@Autowired
		private SessionFactory sessionFactory;
		
		
		@SuppressWarnings("unchecked")
		@Transactional
		public List<Supplier> list() {
			@SuppressWarnings({ "unchecked" })
			List<Supplier> listSupplier = (List<Supplier>)
			sessionFactory.getCurrentSession().createCriteria(Supplier.class)
			.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
			return listSupplier;
		}

		@Transactional
		public Supplier get(String id) {
			String hql = "from Supplier where id ='"+ id +"'";
			Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
			@SuppressWarnings("unchecked")
			List<Supplier> listSupplier = (List<Supplier>) (query).list();
			
			if (listSupplier != null && !listSupplier.isEmpty()){
				return listSupplier.get(0);
			}
			return null;
			
		}

		@Transactional
		public void saveOrUpdate(Supplier supplier) {
			// TODO Auto-generated method stub
			Session session = sessionFactory.getCurrentSession();
	        session.saveOrUpdate(supplier);
		}

		@Transactional
		public void delete(String id) {
			Supplier supplierToDelete = new Supplier();
			supplierToDelete.setSupplierId(id);
			sessionFactory.getCurrentSession().delete(supplierToDelete);
			
		}

		public SessionFactory getSessionFactory() {
			return sessionFactory;
		}

		public void setSessionFactory(SessionFactory sessionFactory) {
			this.sessionFactory = sessionFactory;
		}

	}

