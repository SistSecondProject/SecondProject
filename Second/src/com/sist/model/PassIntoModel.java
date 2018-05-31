package com.sist.model;

import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.community.NoticeDAO;
import com.sist.community.SpecDAO;
import com.sist.community.SpecVO;
import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.pass_info.PassVO;
import com.sist.pass_info.PassinfoDAO;
import com.sist.self_introduction.IntroductionDAO;
import com.sist.self_introduction.IntroductionVO;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.*;

@Controller
public class PassIntoModel {
	@RequestMapping("main/passinfo.do")
	public String compareListData(HttpServletRequest request) throws Exception {
		
		request.setAttribute("home_jsp", "../self/passinfo.jsp");
		request.setAttribute("detail", "../self/selfinto_content.jsp"); //�ڼҼ� �ۼ��κ� include��.

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
			
	 // �հ��ڼҼ� �󼼺���
	   @RequestMapping("main/pass_result.do")
	   public String passContentData(HttpServletRequest request)
	   {
		   String no=request.getParameter("no");
		   PassVO vo=PassinfoDAO.passContentData(Integer.parseInt(no));
		   request.setAttribute("vo", vo);
		   return "../self/pass_result.jsp";
	   }    
	

	
	   
	   //����--> ����Ʈ�� �� �߰�
	   @RequestMapping("main/selftest_ok.do")
	   public String intoInsertOk(HttpServletRequest request)
	   throws Exception
	   {
		   request.setCharacterEncoding("UTF-8");
		   request.getSession().setAttribute("userId","admin");
		   String userId = (String) request.getSession().getAttribute("userId");
		   //System.out.println(userId);
		   
		   String  content1 = request.getParameter("content1");
		   System.out.println("content1 :"+content1);
		   String  content2 = request.getParameter("content2");
		   System.out.println("content2 :"+content2);
		   String  content3 = request.getParameter("content3");
		   System.out.println("content3 :"+content3);
		  
		   String content=content1+"|"+content2+"^"+content3;
		   System.out.println(content);
		   
		   String title=request.getParameter("title");
		 
		   //DB���� 
		   IntroductionVO vo=new IntroductionVO();
		   vo.setUserId(userId);
		   vo.setTitle(title);
		   vo.setContent(content);
		   //System.out.println("��ü ���� :" +vo.getContent());
		
		 
		   IntroductionDAO.intoInsert(vo);
		  
		   return "redirect:passinfo.do";
	   }
	   
	   // �ڱ�Ұ����󼼺���
	   @RequestMapping("main/selfinto_content.do")
	   public String intoContentData(HttpServletRequest request)
	   {
		   
		   String no=request.getParameter("no");
		   IntroductionVO vo=IntroductionDAO.intoContentData(Integer.parseInt(no));
		   request.setAttribute("no", no);
		   request.setAttribute("vo", vo);
		   request.setAttribute("home_jsp", "../self/selfinto_content.jsp");
           System.out.println("���� :"+vo.getTitle());
		   System.out.println("��� :"+vo.getContent());
		   
		   return "passinfo.do";
	   }
	  
	   
	  //�ڱ�Ұ��������ϱ�
	   @RequestMapping("main/selfinto_update.do")
	   public String intoUpdateData(HttpServletRequest request) throws Exception
	   {
		   request.setCharacterEncoding("UTF-8");
		   request.setAttribute("detail", "../self/selfinto_update.jsp");
		   String no=request.getParameter("no");
		  // System.out.println("������ ���� ��ȣ:"+no);
		   // DB���� 
		   IntroductionVO vo=IntroductionDAO.intoUpdateData(Integer.parseInt(no));
		/*   System.out.println("���� ��ȣ :"+vo.getNo());
		   System.out.println("���� �����ϱ� :"+ vo.getTitle());
		   System.out.println("���� �����ϱ� :"+ vo.getContent());*/
		   // ����� ����
		   
		   request.setAttribute("vo", vo);
		   request.setAttribute("home_jsp", "../self/passinfo.jsp");
		   return "main.jsp";
		   
		 // return "../self/selfinto_update.jsp";
	   }
	   
	   @RequestMapping("main/selfinto_update_ok.do")
	   public String intoUpdate(HttpServletRequest request) throws IOException
	   {
		   request.setCharacterEncoding("UTF-8");
		   String no=request.getParameter("no");
		   String userId=(String)request.getSession().getAttribute("name");
		   String title=request.getParameter("title");
		   String  content1 = request.getParameter("content1");  
		   String  content2 = request.getParameter("content2"); 
		   String  content3 = request.getParameter("content3");
		   /*System.out.println("content2 :"+content2);
		   System.out.println("content1 :"+content1);
		   System.out.println("content3 :"+content3);*/
		   String content=content1+"|"+content2+"^"+content3;
		   //System.out.println(content);

		   /*System.out.println("m��ȣ: "+no);
	       System.out.println("m���̵�:"+userId);
	       System.out.println("m����:"+title);
	       System.out.println("m����:"+content);*/
		   //DB���� 
		   IntroductionVO vo = new IntroductionVO();
		   vo.setNo(Integer.parseInt(no));
		   vo.setUserId(userId);
		   vo.setTitle(title);
		   vo.setContent(content);
	       IntroductionDAO.intoUpdate(vo);
	     /* System.out.println("d��ȣ: "+no);
	       System.out.println("d���̵�:"+userId);
	       System.out.println("d����:"+title);
	       System.out.println("d����:"+content);*/
	       return "redirect:passinfo.do";
	   }
	

	   
	   //�ڱ�Ұ��� ���� ����
	   @RequestMapping("main/delete.do")
	   public String boardDelete(HttpServletRequest request)
	   {
		   String no=request.getParameter("no");
		   IntroductionDAO.Delete(Integer.parseInt(no));
		   request.setAttribute("infoDelete", no);
		   return "redirect:passinfo.do";
		 
	   }
	
	 
	}
	   
  
	   

	

