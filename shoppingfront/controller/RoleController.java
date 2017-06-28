package com.niit.shoppingfront.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.shoppingfront.Service.RoleService;
import com.niit.shoppingfront.model.Role;


public class RoleController {
	@Autowired(required=true)
	RoleService roleService ;
	
	public RoleController() {
		System.out.println("INSTANTIATING ROLE CONTROLLER");
	}
	
	
	
	@RequestMapping("NewRole")
	public String newRole(@ModelAttribute Role role){
		roleService.saveOrUpdateRole(role);
		return "home";
	}
}
