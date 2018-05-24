package com.sist.model;
import javax.servlet.http.HttpServletRequest;
import com.sist.compare.CompareDAO;
import com.sist.compare.CompareVO;
import com.sist.compare.Compare_ResultVO;
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
		int companycode1=Integer.parseInt(request.getParameter("comp1"));
		int companycode2=Integer.parseInt(request.getParameter("comp2"));
		System.out.println("Model code1 : "+companycode1);
		System.out.println("Model code2 : "+companycode2);
		Compare_ResultVO vo1=CompareDAO.resultData(companycode1);
		Compare_ResultVO vo2=CompareDAO.resultData(companycode2);
		System.out.println("Model VO : "+vo1.getCompanyCode());
		System.out.println("Model VO : "+vo2.getCompanyCode());
		request.setAttribute("vo1", vo1);
		request.setAttribute("vo2", vo2);
		request.setAttribute("home_jsp", "../compare/compare_result.jsp");
		return "main.jsp";
	}
	
}

/*
	request.setAttribute("comp1", request.getParameter("comp1"));
	request.setAttribute("comp2", request.getParameter("comp2")); 
	System.out.println(request.getParameter("comp1")+" "+request.getParameter("comp2"));
*/