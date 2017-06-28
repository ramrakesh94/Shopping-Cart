package com.niit.shoppingfront.Service;

import com.niit.shoppingfront.model.Role;

public interface RoleService {



	public void saveOrUpdateRole(com.niit.shoppingfront.model.Role role);

	 Role getRoleById(String cid);
}