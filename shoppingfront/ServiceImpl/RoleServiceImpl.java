package com.niit.shoppingfront.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingfront.DAO.RoleDAO;
import com.niit.shoppingfront.Service.RoleService;
import com.niit.shoppingfront.model.Role;

@Service
public class RoleServiceImpl implements RoleService{
	@Autowired
	private RoleDAO roleDao;

	public RoleServiceImpl() {
		System.out.println("CREATING INSTANCE FOR ROLESERVICEIMPL");

	}

	@Transactional
	public void saveOrUpdateRole(Role role) {
		 roleDao.saveOrUpdateRole(role);
	

	}

	@Transactional
	public Role getRoleById(String cid) {
		// TODO Auto-generated method stub
		return null;
	}

}
