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
		//request.setAttribute("content_jsp", "../self/selftest.jsp"); //�ڼҼ� �ۼ��κ� include��.

		/*  �ڱ�Ұ��� ����Ʈ
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
		  
			//�հ� �ڼҼ� ����Ʈ�� ���
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
			   
			 //�ڱ� �ڼҼ� ����ϴ� ���� �� �ѱ��
			   List<IntroductionVO> list=IntroductionDAO.intoListData(map);
			   request.setAttribute("list", list);
			   
			   
			  
			
			   
		   return "main.jsp";
	   }
			
	 // �հ��ڼҼ��󼼺���
	   @RequestMapping("main/pass_result.do")
	   public String passContentData(HttpServletRequest request)
	   {
		   String no=request.getParameter("no");
		   PassVO vo=PassinfoDAO.passContentData(Integer.parseInt(no));
		   request.setAttribute("vo", vo);
		   return "../self/pass_result.jsp";
	   }    
	
	   // �ڱ�Ұ����󼼺���
	   @RequestMapping("main/selfinto_content.do")
	   public String intoContentData(HttpServletRequest request)
	   {
		   String no=request.getParameter("no");
		   IntroductionVO vo=IntroductionDAO.intoContentData(Integer.parseInt(no));
		   request.setAttribute("vo", vo);
		   return "../self/selfinto_content.jsp";
	   }
	
	   
	   //����--> ����Ʈ�� �� �߰�
	   @RequestMapping("main/insert_ok.do")
	   public String intoInsertOk(HttpServletRequest request)
	   throws Exception
	   {
		   request.setCharacterEncoding("EUC-KR");
		   String content=request.getParameter("content");
		 
		   
		   //DB���� 
		   IntroductionVO vo=new IntroductionVO();
		   vo.setContent(content);
		   
		  
		   IntroductionDAO.intoInsert(vo);
		   return "redirect:passinfo.do";
	   }
	   
	/*   //�ڱ�Ұ��������ϱ�
	   @RequestMapping("main/selfinto_update.do")
	   public String intoUpdate(HttpServletRequest request)
	   {
		   String no=request.getParameter("no");
		   // DB���� 
		   IntroductionVO vo=IntroductionDAO.intoUpdateData(Integer.parseInt(no));
		   
		   // ����� ����
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
		   //DB���� 
		   IntroductionVO vo=new IntroductionVO();
		   vo.setNo(Integer.parseInt(no));
		   vo.setContent(content);
		   
		   // DB���� 
		   boolean bCheck=IntroductionDAO.intoUpdateData(vo);
		   // ������� ���� 
		   request.setAttribute("bCheck", bCheck);
		   if(bCheck==true)
		   {
			   request.setAttribute("no", no);
		   }
		   return "update_ok.jsp";
	   }*/
	   
	   
	   
	   }
	

