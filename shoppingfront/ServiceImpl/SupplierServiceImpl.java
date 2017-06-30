package com.niit.shoppingfront.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingfront.DAO.SupplierDAO;
import com.niit.shoppingfront.Service.SupplierService;
import com.niit.shoppingfront.model.Supplier;

@Service
	public class SupplierServiceImpl implements SupplierService {
		@Autowired
		private SupplierDAO  supplierDao;

		@Transactional
		public List<Supplier> list() {
			// TODO Auto-generated method stub
			return supplierDao.list();
		}

		@Transactional
		public Supplier get(String id) {
			// TODO Auto-generated method stub
			return supplierDao.get(id);
		}

		@Transactional
		public void saveOrUpdate(Supplier supplier) {
			supplierDao.saveOrUpdate(supplier);
			// TODO Auto-generated method stub
			
		}

		@Transactional
		public void delete(String id) {
			 supplierDao.delete(id);
			// TODO Auto-generated method stub
			
		}

	}

