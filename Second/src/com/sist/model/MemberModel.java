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
	@RequestMapping ("main/login.do")
	public String loginInsert(HttpServletRequest request)
	{
	 return "main.do";	
}
@RequestMapping ("main/login_ok.do")
		public String loginInsertOk(HttpServletRequest request)
				throws Exception
	   {
	      //#{userid},#{password},#{name},#{emailaddress},#{favoriteCategory},#{ zipcodeAddress},#{detailAddress},#{userLevel
		   request.setCharacterEncoding("EUC-KR");
		   
		   String userid=request.getParameter("userid");
		   String password=request.getParameter("password");
		   String name=request.getParameter("name");
		   String emailaddress=request.getParameter("emailaddress");
		 //  int favoriteCategory=request.getParameter(Integer.getInteger(favoriteCategory));
		   String detailAddress=request.getParameter("detailAddress");
		 //  int userLevel=request.getParameter("pwd");
		   //DB¿¬µ¿ 
		   MemberVO vo = new MemberVO();
		   vo.setUserId(userid);
		   vo.setPassword(password);
		   vo.setName(name);
		   vo.setEmailaddress(emailaddress);
		   vo.setDetailaddress(detailAddress);
		   MemberDAO.memberJoin(vo);
		   return "redirect:main.do";
	   }
}
