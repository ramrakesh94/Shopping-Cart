package com.niit.shoppingfront.DAOImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingfront.DAO.RoleDAO;
import com.niit.shoppingfront.model.Role;

@Repository
	public class RoleDAOImpl implements RoleDAO{
		@Autowired
		private SessionFactory sessionFactory;
		
		public void RoleDaoImpl(){
			System.out.println("CREATING INSTANCE FOR ROLEDAOIMPL");
		}

		@Transactional
		public void saveOrUpdateRole(Role role) {
			Session session=sessionFactory.openSession();
			session.saveOrUpdate(role);
			session.flush();
			session.close();
			
		}

		public Role getRoleById(String cid) {
			// TODO Auto-generated method stub
			return null;
		}
		@Transactional
		public Role getByEmailId(String emailid) {
			String hql = "from Role where customerEmail ='" + emailid + "'";
			Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
			@SuppressWarnings("unchecked")
			List<Role> listRole = (List<Role>) (query).list();

			if (listRole != null && !listRole.isEmpty()) {
				return listRole.get(0);
			}
			return null;
		}
		
		

		
	}
