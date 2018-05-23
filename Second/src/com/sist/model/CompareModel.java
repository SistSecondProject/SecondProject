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
	//모달 검색결과
	@RequestMapping("main/result.do")
	public String compareData(HttpServletRequest request) {
		String searchValue = request.getParameter("rdata");
		List<CompareVO> clist=CompareDAO.compareData(searchValue);
		request.setAttribute("clist", clist);
		return "../compare/result.jsp";
	}
	//비교 결과
	@RequestMapping("main/compare_result.do")
	public String compare_resultData(HttpServletRequest request)throws Exception {
		System.out.println("compare_result.do");
		request.setAttribute("home_jsp", "../compare/compare_result.jsp");
		return "main.jsp";
	}
	
}
