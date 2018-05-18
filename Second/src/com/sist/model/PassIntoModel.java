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
		request.setAttribute("content_jsp", "../self/selftest.jsp"); //자소서 작성부분 include함.
		//제발
	/*	String page=request.getParameter("page");
		
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
		return "main.jsp";*/
		
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
		   
		   List<PassVO> list=PassinfoDAO.passListData(map);
		   int totalpage=PassinfoDAO.passTotalPage();
		   request.setAttribute("list", list);
		   request.setAttribute("curpage", curpage);
		   request.setAttribute("totalpage", totalpage);
		return "main.jsp";
		    
		
		
	
}    
	
	/*@RequestMapping("main/passinfo.do")
	public String passListData(HttpServletRequest request) {
		request.setAttribute("home_jsp", "../self/passinfo.jsp");
		request.setAttribute("content_jsp", "../self/selftest.jsp"); //자소서 작성부분 include함.
		
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
		   
		   List<PassVO> list=PassinfoDAO.passListData(map);
		   int totalpage=PassinfoDAO.passTotalPage();
		   request.setAttribute("list", list);
		   request.setAttribute("curpage", curpage);
		   request.setAttribute("totalpage", totalpage);
		return "main.jsp";
	
}*/
	
	/*    장르 -self 
	 *    result- 
	 * 
	 *    @RequestMapping("main/music_genre.do")
  public String music_genre(HttpServletRequest request)
  {
	  request.setAttribute("main_jsp", "../music/music_genre.jsp");
	  CommonModel.commonSendData(request);
	  return "main.jsp";
  }
  @RequestMapping("main/music_result.do")
  public String music_result(HttpServletRequest request)
  {
	  String type=request.getParameter("type");
	  if(type==null)
		  type="L0101";
	  List<MusicChartVO> gList=MusicDAO.musicGenreData(type);
	  request.setAttribute("gList", gList);
	  return "../music/music_result.jsp";
  }
	 */
       
	
	 
	/* //저장
	
	   @RequestMapping("main/content_jsp")
	   public String intoInsert(HttpServletRequest request)
	   {
		   
		   return "redirect:main/passinfo.do";
	   }
	   
	   @RequestMapping("main/insert_ok.do")
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
	   }*/
	
}
