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
		request.setAttribute("detail", "../self/selfinto_content.jsp"); //자소서 작성부분 include함.

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
			
	 // 합격자소서 상세보기
	   @RequestMapping("main/pass_result.do")
	   public String passContentData(HttpServletRequest request)
	   {
		   String no=request.getParameter("no");
		   PassVO vo=PassinfoDAO.passContentData(Integer.parseInt(no));
		   request.setAttribute("vo", vo);
		   return "../self/pass_result.jsp";
	   }    
	

	
	   
	   //저장--> 리스트에 값 추가
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
		 
		   //DB연동 
		   IntroductionVO vo=new IntroductionVO();
		   vo.setUserId(userId);
		   vo.setTitle(title);
		   vo.setContent(content);
		   //System.out.println("전체 내용 :" +vo.getContent());
		
		 
		   IntroductionDAO.intoInsert(vo);
		  
		   return "redirect:passinfo.do";
	   }
	   
	   // 자기소개서상세보기
	   @RequestMapping("main/selfinto_content.do")
	   public String intoContentData(HttpServletRequest request)
	   {
		   
		   String no=request.getParameter("no");
		   IntroductionVO vo=IntroductionDAO.intoContentData(Integer.parseInt(no));
		   request.setAttribute("no", no);
		   request.setAttribute("vo", vo);
		   request.setAttribute("home_jsp", "../self/selfinto_content.jsp");
           System.out.println("제목 :"+vo.getTitle());
		   System.out.println("결과 :"+vo.getContent());
		   
		   return "passinfo.do";
	   }
	  
	   
	  //자기소개서수정하기
	   @RequestMapping("main/selfinto_update.do")
	   public String intoUpdateData(HttpServletRequest request) throws Exception
	   {
		   request.setCharacterEncoding("UTF-8");
		   request.setAttribute("detail", "../self/selfinto_update.jsp");
		   String no=request.getParameter("no");
		  // System.out.println("수정할 내용 번호:"+no);
		   // DB연동 
		   IntroductionVO vo=IntroductionDAO.intoUpdateData(Integer.parseInt(no));
		/*   System.out.println("수정 번호 :"+vo.getNo());
		   System.out.println("제목 수정하기 :"+ vo.getTitle());
		   System.out.println("제목 수정하기 :"+ vo.getContent());*/
		   // 결과값 전송
		   
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

		   /*System.out.println("m번호: "+no);
	       System.out.println("m아이디:"+userId);
	       System.out.println("m제목:"+title);
	       System.out.println("m내용:"+content);*/
		   //DB연동 
		   IntroductionVO vo = new IntroductionVO();
		   vo.setNo(Integer.parseInt(no));
		   vo.setUserId(userId);
		   vo.setTitle(title);
		   vo.setContent(content);
	       IntroductionDAO.intoUpdate(vo);
	     /* System.out.println("d번호: "+no);
	       System.out.println("d아이디:"+userId);
	       System.out.println("d제목:"+title);
	       System.out.println("d내용:"+content);*/
	       return "redirect:passinfo.do";
	   }
	

	   
	   //자기소개서 내용 삭제
	   @RequestMapping("main/delete.do")
	   public String boardDelete(HttpServletRequest request)
	   {
		   String no=request.getParameter("no");
		   IntroductionDAO.Delete(Integer.parseInt(no));
		   request.setAttribute("infoDelete", no);
		   return "redirect:passinfo.do";
		 
	   }
	
	 
	}
	   
  
	   

	

