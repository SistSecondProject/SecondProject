package com.sist.model;

import javax.servlet.http.HttpServletRequest;

import com.sist.compare.CompareDAO;
import com.sist.compare.CompareVO;
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
	
	@RequestMapping("main/result.do")
	public String compareData(HttpServletRequest request) {
		String searchValue = request.getParameter("rdata");
		List<CompareVO> clist=CompareDAO.compareData(searchValue);
		request.setAttribute("clist", clist);
		
		return "../compare/result.jsp";
	}
	
}
