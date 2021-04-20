package com.te.springmvc1.dao;

import java.util.List;

import com.te.springmvc1.beans.EmployeeBean;

public interface EmployeeDao {

public EmployeeBean authenticate(int id, String password);

public EmployeeBean getEmployee(int id);

public boolean deleteEmployee(int id);

public List<EmployeeBean> getAllData();









	
	
	
	

}
