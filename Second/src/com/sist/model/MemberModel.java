package com.sist.model;
/*
 * <member>
 * USERID
 PASSWORD
 NAME
 EMAILADDRESS
 FAVORITECATEGORY
 ZIPCODEADDRESS
 DETAILADDRESS
 USERLEVEL
 */

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.RequestMapping;

import com.sist.member.MemberDAO;
import com.sist.member.MemberVO;

public class MemberModel {
@RequestMapping("main/login.do")
	   public String idcheck(HttpServletRequest request)
	   {
		   
		   return "login.jsp";
	   }
	 //  @RequestMapping ("main/login_ok.do")
	  // public String loginInsertOk(HttpServletRequest request)
	 //  throws Exception
	   {
		   /*request.setCharacterEncoding("EUC-KR");
		   String name=request.getParameter("name");
		   String subject=request.getParameter("subject");
		   String content=request.getParameter("content");
		   String pwd=request.getParameter("pwd");
		   //DB¿¬µ¿ 
		   MemberVO vo = new MemberVO();
		   vo.setName(name);
		   vo.setSubject(subject);
		   vo.setContent(content);
		   vo.setPwd(pwd);
		  MemberDAO.inser
		   return "redirect:main.do";*/
	   }
}
