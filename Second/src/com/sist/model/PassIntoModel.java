package com.sist.model;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.self_introduction.IntroductionDAO;
import com.sist.self_introduction.IntroductionVO;

import java.util.*;

@Controller
public class PassIntoModel {
	@RequestMapping("main/passinfo.do")
	public String compareListData(HttpServletRequest request) {
		request.setAttribute("home_jsp", "../self/passinfo.jsp");
	
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
		   
		   List<IntroductionVO> list=IntroductionDAO.intoListData(map);
		   int totalpage=IntroductionDAO.intoTotalPage();
		   request.setAttribute("list", list);
		   request.setAttribute("curpage", curpage);
		   request.setAttribute("totalpage", totalpage);
		return "main.jsp";
	
}
	
	 
	 //저장
	   @RequestMapping("self/selftest.do")
	   public String intoInsert(HttpServletRequest request)
	   {
		   
		   return "redirect:main/passinfo.do";
	   }
	   
	   @RequestMapping("self/insert_ok.do")
	   public String boardInsertOk(HttpServletRequest request)
	   throws Exception
	   {
		   request.setCharacterEncoding("EUC-KR");
		   String content=request.getParameter("content");
		 
		   
		   //DB연동 
		   IntroductionVO vo=new IntroductionVO();
		   vo.setContent(content);
		   
		   IntroductionDAO.intoInsert(vo);
		   
		   return "redirect:main/passinfo.do";
	   }
	
}
