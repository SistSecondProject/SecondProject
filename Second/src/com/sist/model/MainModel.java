package com.sist.model;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller
public class MainModel {
	@RequestMapping("main/main.do")
	public String mainListData(HttpServletRequest request)
	{
		request.setAttribute("home_jsp", "home.jsp");
		return "main.jsp";
	}
	
}
	