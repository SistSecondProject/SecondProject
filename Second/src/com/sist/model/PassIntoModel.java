package com.sist.model;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

import com.sist.pass_info.PassVO;
import com.sist.pass_info.PassinfoDAO;
import com.sist.self_introduction.IntroductionDAO;
import com.sist.self_introduction.IntroductionVO;

import java.util.*;

@Controller
public class PassIntoModel {
	@RequestMapping("main/passinfo.do")
	public String compareListData(HttpServletRequest request) {
		
		request.setAttribute("home_jsp", "../self/passinfo.jsp");
		//request.setAttribute("content_jsp", "../self/selftest.jsp"); //자소서 작성부분 include함.

		/*  자기소개서 리스트
		 * String page=request.getParameter("page");
		if(page==null)
			   page="1";
		   int curpage=Integer.parseInt(page);
		   int rowSize=10;
		   // rownum = 1
		   // 1~10
		   // 11~20
		   int start=(curpage*rowSize)-(rowSize-1);
		   int end=curpage*rowSize;
		   Map map=new HashMap();
		   map.put("start", start);
		   map.put("end", end);
		   
		   List<IntroductionVO> list=IntroductionDAO.intoListData(map);
		   int totalpage=IntroductionDAO.intoTotalPage();
		   request.setAttribute("list", list);
		   request.setAttribute("curpage", curpage);
		   request.setAttribute("totalpage", totalpage);*/
		  
			//합격 자소서 리스트를 출력
			String page=request.getParameter("page");
			
			   if(page==null)
				   page="1";
			   int curpage=Integer.parseInt(page);
			   int rowSize=10;
			   // rownum = 1
			   // 1~10
			   // 11~20
			  
			   int start=(curpage*rowSize)-(rowSize-1);
			   int end=curpage*rowSize;
			   Map map=new HashMap();
			   map.put("start", start);
			   map.put("end", end);
		
			   List<PassVO> plist=PassinfoDAO.passListData(map);
			   int totalpage=PassinfoDAO.passTotalPage();
			  
			   request.setAttribute("plist", plist);
			   request.setAttribute("curpage", curpage);
			   request.setAttribute("totalpage", totalpage);
			   
			 //자기 자소서 출력하는 관련 값 넘기기
			   List<IntroductionVO> list=IntroductionDAO.intoListData(map);
			   request.setAttribute("list", list);
			   
			   
			  
			
			   
		   return "main.jsp";
	   }
			
	 // 합격자소서상세보기
	   @RequestMapping("main/pass_result.do")
	   public String passContentData(HttpServletRequest request)
	   {
		   String no=request.getParameter("no");
		   PassVO vo=PassinfoDAO.passContentData(Integer.parseInt(no));
		   request.setAttribute("vo", vo);
		   return "../self/pass_result.jsp";
	   }    
	
	   // 자기소개서상세보기
	   @RequestMapping("main/selfinto_content.do")
	   public String intoContentData(HttpServletRequest request)
	   {
		   String no=request.getParameter("no");
		   IntroductionVO vo=IntroductionDAO.intoContentData(Integer.parseInt(no));
		   request.setAttribute("vo", vo);
		   return "../self/selfinto_content.jsp";
	   }
	
	   
	   //저장--> 리스트에 값 추가
	   @RequestMapping("main/insert_ok.do")
	   public String intoInsertOk(HttpServletRequest request)
	   throws Exception
	   {
		   request.setCharacterEncoding("EUC-KR");
		   String content=request.getParameter("content");
		 
		   
		   //DB연동 
		   IntroductionVO vo=new IntroductionVO();
		   vo.setContent(content);
		   
		  
		   IntroductionDAO.intoInsert(vo);
		   return "redirect:passinfo.do";
	   }
	   
	/*   //자기소개서수정하기
	   @RequestMapping("main/selfinto_update.do")
	   public String intoUpdate(HttpServletRequest request)
	   {
		   String no=request.getParameter("no");
		   // DB연동 
		   IntroductionVO vo=IntroductionDAO.intoUpdateData(Integer.parseInt(no));
		   
		   // 결과값 전송
		   request.setAttribute("vo", vo);
		   return "../self/selfinto_update.jsp";
	   }*/
/*	   @RequestMapping("main/selfinto_ok.do")
	   public String intoUpdateOk(HttpServletRequest request)
	   throws Exception
	   {
		   request.setCharacterEncoding("EUC-KR");
		  
		   String content=request.getParameter("content");
		  // String pwd=request.getParameter("pwd");
		   String no=request.getParameter("no");
		   //DB연동 
		   IntroductionVO vo=new IntroductionVO();
		   vo.setNo(Integer.parseInt(no));
		   vo.setContent(content);
		   
		   // DB연동 
		   boolean bCheck=IntroductionDAO.intoUpdateData(vo);
		   // 결과값을 전송 
		   request.setAttribute("bCheck", bCheck);
		   if(bCheck==true)
		   {
			   request.setAttribute("no", no);
		   }
		   return "update_ok.jsp";
	   }*/
	   
	   
	   
	   }
	

