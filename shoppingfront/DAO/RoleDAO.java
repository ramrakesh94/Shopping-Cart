package com.niit.shoppingfront.DAO;

import com.niit.shoppingfront.model.Role;

public interface RoleDAO {

 void saveOrUpdateRole(Role role);

//public Role getRoleById(String cid);	

public Role getByEmailId(String emailid);

}