package com.te.springmvc1.service;

import com.te.springmvc1.beans.EmployeeBean;

public interface EmployeeService {
public EmployeeBean authenticate(int id,String pwd);
	
	public EmployeeBean getEmployee(int id);
	
	public boolean deleteEmployee(int id);
	
	public java.util.List<EmployeeBean> getAllData();

}
