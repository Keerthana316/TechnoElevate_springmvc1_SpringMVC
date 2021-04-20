package com.te.springmvc1.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.te.springmvc1.beans.EmployeeBean;
import com.te.springmvc1.dao.EmployeeDao;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeDao dao;

	@GetMapping("/login")
	public String getLoginForm() {

		return "loginForm";

	}

	@PostMapping("/emplogin")
	public String authenticate(int id, String password, HttpServletRequest request, ModelMap map) {
		EmployeeBean employeeBean = dao.authenticate(id, password);
		if (employeeBean != null) {
			HttpSession session = request.getSession(true);
			session.setAttribute("emp", employeeBean);
			return "homePage";

		} else {
			map.addAttribute("errMsg", "Invalid Credentials");
			return "loginForm";

		}

	}

	@GetMapping("/searchForm")
	public String getSearchForm(ModelMap map, HttpSession session) {
		if (session.getAttribute("emp") != null) {
			return "searchForm";

		} else {
			map.addAttribute("errMsg", "please login first");
			return "loginForm";
		}

	}// end of getSearchForm

	@GetMapping("/search")
	public String searchEmp(int id, ModelMap map,
			@SessionAttribute(name = "emp", required = false) EmployeeBean employeeBean) {
		if (employeeBean != null) {
			EmployeeBean employeeBean2 = dao.getEmployee(id);
			if (employeeBean2 != null) {
				map.addAttribute("data", employeeBean2);
			} else {
				map.addAttribute("msg", "Data not found for id" + id);
			}
			return "searchForm";

		} else {
			map.addAttribute("errMsg", "please login first");
			return "loginForm";
		}

	}// end of searchEmp

	@GetMapping("/logout")
	public String logOut(HttpSession session, ModelMap map) {
		session.invalidate();
		map.addAttribute("msg", "Logout Successful");
		return "loginForm";

	}

	@GetMapping("/getdeleteform")
	public String getDeleteForm(int id, ModelMap map,
			@SessionAttribute(name = "emp", required = false) EmployeeBean bean) {
		if (bean != null) {
			return "deleteform";
		} else {
			map.addAttribute("msg", "please login first");
			return "loginForm";

		}

	}

	@PostMapping("/delete")
	public String deleteEmployee(int id, ModelMap map,
			@SessionAttribute(name = "emp", required = false) EmployeeBean bean) {
		if (bean != null) {

			boolean deleted = dao.deleteEmployee(id);
			if (deleted == true) {
				map.addAttribute("msg", "deleted successfully");
				return "deleteform";
			} else {
				map.addAttribute("errMsg", "user not found");
				return "deleteform";
			}

		}
		return null;
	}

	@GetMapping("/viewall")
	public String viewAllEmployee(ModelMap map, @SessionAttribute(name = "emp", required = false) EmployeeBean bean) {
		if (bean != null) {
			List<EmployeeBean> employeeBeans = dao.getAllData();
			map.addAttribute("data", employeeBeans);
			return "alldata";
		} else {
			map.addAttribute("msg", "no employees found");
			return "alldata";
		}

	}

}// end of controller
