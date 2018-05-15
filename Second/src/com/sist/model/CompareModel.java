package com.sist.model;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import java.util.*;

@Controller
public class CompareModel {
	@RequestMapping("main/compare.do")
	public String compareListData(HttpServletRequest request) {
		request.setAttribute("home_jsp", "../compare/compare.jsp");
		return "main.jsp";
	}
}
