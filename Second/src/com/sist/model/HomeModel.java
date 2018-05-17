package com.sist.model;

import java.util.*;


import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.calender.*;
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
	 
	  request.setAttribute("cfList", cfList);
	  request.setAttribute("ciList", ciList);
	  request.setAttribute("nfList", nfList);
	  request.setAttribute("ndList", ndList);
	  request.setAttribute("home_jsp", "home.jsp");
	  
	  
	  return "main.jsp";
}
}
