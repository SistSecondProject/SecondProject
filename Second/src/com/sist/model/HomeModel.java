package com.sist.model;

import java.util.*;


import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.calender.*;
import com.sist.community.NoticeDAO;
import com.sist.community.NoticeVO;
import com.sist.news.dao.*;

@Controller
public class HomeModel {
  @RequestMapping("main/main.do")
  public String home_page(HttpServletRequest request) {
	  CalenderManager cm=new CalenderManager();
	  NewsManager nm=new NewsManager();
	  List<CalenderVO> cfList=cm.calenderFindData();
	  List<CalenderVO> ciList=cm.calenderinfoData();
	  List<NewsVO> nfList=nm.newsFindData();
	  List<NewsVO> ndList=nm.newsDetailData();
	  List<NoticeVO> list=NoticeDAO.mainNoticeListData();

	  String message=request.getParameter("duplicate");
		if(message!=null)
	  request.setAttribute("message", message);
	  request.setAttribute("cfList", cfList);
	  request.setAttribute("ciList", ciList);
	  request.setAttribute("nfList", nfList);
	  request.setAttribute("ndList", ndList);
	  request.setAttribute("list", list);
	  request.setAttribute("home_jsp", "home.jsp");
	  request.setAttribute("mnList", "../community/noticeList.jsp");

	  
	  return "main.jsp";
}
  @RequestMapping("main/calender_dt.do")
  public String caldt_page(HttpServletRequest request)throws Exception {
	  request.setCharacterEncoding("EUC-KR");
	  String link=request.getParameter("link");
	 CalenderManager cm=new CalenderManager();
	 
	 List<Calender_dtVO> list=cm.calenderDetailData(link);
	 request.setAttribute("list", list);
	  
	  
	  return "calender_dt.jsp";
}
}
