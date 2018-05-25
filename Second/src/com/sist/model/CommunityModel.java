package com.sist.model;

import javax.servlet.http.HttpServletRequest;

import java.util.*;
import com.sist.community.SpecDAO;
import com.sist.community.SpecVO;
import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
@Controller
public class CommunityModel {
	@RequestMapping("main/spec.do")
	public String specboard(HttpServletRequest request) {
		List<SpecVO> list=SpecDAO.specListData();
		request.setAttribute("list", list);
		
		request.setAttribute("home_jsp", "../community/spec.jsp");
		
		  return "main.jsp";
	}
	@RequestMapping("main/spec_insert.do")
	public String spec_okboard(HttpServletRequest request) {
		request.setAttribute("home_jsp", "../community/spec_insert.jsp");
		return "main.jsp";
	}
	@RequestMapping("main/spec_insert_ok.do")
	public String spec_insertok(HttpServletRequest request) throws Exception{
		request.setCharacterEncoding("EUC-KR");
		request.getSession().setAttribute("userid", "admin");
		   String userid=(String)request.getSession().getAttribute("userid");
		   String subject=request.getParameter("subject");
		   String content=request.getParameter("content");
		   String password=request.getParameter("pwd");
		   
		   
		  SpecVO vo=new SpecVO();
		  vo.setUserId(userid);
		  vo.setSubject(subject);
		  vo.setContent(content);
		  vo.setPassword(password);
		   SpecDAO.specInsertData(vo);
		  return "redirect:spec.do";
	}
	@RequestMapping("main/spec_content.do")
	public String spec_contentboard(HttpServletRequest request) throws Exception{
		request.setCharacterEncoding("EUC-KR");
		String no=request.getParameter("no");
		
		SpecVO vo=SpecDAO.specContentListData(Integer.parseInt(no));
		request.setAttribute("vo", vo);
		request.setAttribute("home_jsp", "../community/spec_content.jsp");
		
		  return "main.jsp";
	}
}
