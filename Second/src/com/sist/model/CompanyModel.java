package com.sist.model;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import java.util.*;

@Controller
public class CompanyModel {
	@RequestMapping("main/company.do")
	public String compareListData(HttpServletRequest request) {
		request.setAttribute("home_jsp", "../company/company.jsp");
		return "main.jsp";
	}
}
