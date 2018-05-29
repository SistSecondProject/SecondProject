package com.sist.model;

import javax.servlet.http.HttpServletRequest;

import java.util.*;

import com.sist.community.NoticeDAO;
import com.sist.community.NoticeVO;
import com.sist.community.SpecDAO;
import com.sist.community.SpecVO;
import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller
public class CommunityModel {
	@RequestMapping("main/spec.do")
	public String specboard(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("utf-8");
		List<SpecVO> list = SpecDAO.specListData();
		request.setAttribute("list", list);

		request.setAttribute("home_jsp", "../community/spec.jsp");

		return "main.jsp";
	}

	@RequestMapping("main/spec_insert.do")

	public String spec_okboard(HttpServletRequest request) {
		request.setAttribute("home_jsp", "../community/spec_insert.jsp");
		return "main.jsp";
	}

	@RequestMapping("main/spec_insert_ok.do")
	public String spec_insertok(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("utf-8");
		request.getSession().setAttribute("userid", "admin");
		String userid = (String) request.getSession().getAttribute("userid");
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
		String password = request.getParameter("pwd");

		SpecVO vo = new SpecVO();
		vo.setUserId(userid);
		vo.setSubject(subject);
		vo.setContent(content);
		vo.setPassword(password);
		SpecDAO.specInsertData(vo);
		return "redirect:spec.do";
	}

	@RequestMapping("main/spec_content.do")
	public String spec_contentboard(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("EUC-KR");
		String no = request.getParameter("no");

		SpecVO vo = SpecDAO.specContentListData(Integer.parseInt(no));
		request.setAttribute("vo", vo);
		request.setAttribute("home_jsp", "../community/spec_content.jsp");

		return "main.jsp";
	}

	// 공지사항
	@RequestMapping("main/noticeList.do")
	public String noticeListData(HttpServletRequest request){
		String page = request.getParameter("page");
		if (page == null)
			page = "1";
		int curpage = Integer.parseInt(page);
		int rowSize = 10;
		int start = (curpage * rowSize) - (rowSize - 1);
		int end = curpage * rowSize;
		Map map = new HashMap();
		map.put("start", start);
		map.put("end", end);

		List<NoticeVO> list = NoticeDAO.noticeListData(map);
		int totalpage = NoticeDAO.noticeTotalPage();

		request.setAttribute("list", list);
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		
		request.setAttribute("home_jsp", "../community/noticeList.jsp");
		
		return "main.jsp";
	}
	
	// 내용
	@RequestMapping("main/noticeContent.do")
	public String noticeContentData(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("EUC-KR");
		String no = request.getParameter("no");
		
		NoticeVO vo = NoticeDAO.noticeContentData(Integer.parseInt(no));
		request.setAttribute("vo", vo);
		request.setAttribute("home_jsp", "../community/noticeContent.jsp");
		
		return "main.jsp";
	}
	
	// 글쓰기
	@RequestMapping("main/noticeInsert.do")
	public String noticeInsertData(HttpServletRequest request) {
		request.setAttribute("home_jsp", "../community/noticeInsert.jsp");
		return "main.jsp";
	}

	// 글쓰기_ok
	@RequestMapping("main/noticeInsert_ok.do")
	public String noticeInsert_ok(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("utf-8");
		request.getSession().setAttribute("userId", "admin");
		String userId = (String) request.getSession().getAttribute("userId");
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");

		NoticeVO vo = new NoticeVO();
		vo.setUserId(userId);
		vo.setSubject(subject);
		vo.setContent(content);
		NoticeDAO.noticeInsertData(vo);
		return "redirect:noticeList.do";
	}

	// 수정
	@RequestMapping("main/noticeUpdate.do")
	   public String noticeUpdateData(HttpServletRequest request)
	   {
		   String no=request.getParameter("no");
		   // DB 연동
		   NoticeVO vo=NoticeDAO.noticeUpdateData(Integer.parseInt(no));
		/*   System.out.println("아이디"+vo.getUserId());
		   System.out.println("내용"+vo.getContent());
		   System.out.println("제목:"+vo.getSubject());
		   System.out.println("db:"+vo);*/
		   // 결과값 전송
		   request.setAttribute("vo", vo);
		  /* System.out.println("전송:"+no);*/
		   request.setAttribute("home_jsp", "../community/noticeUpdate.jsp");
		   return "main.jsp";
	   }
	
	// 수정_ok
	@RequestMapping("main/noticeUpdate_ok.do")
	   public String noticeUpdate_ok(HttpServletRequest request) throws Exception
	   {
		   request.setCharacterEncoding("EUC-KR");
		   String no=request.getParameter("no");
		   String userId=(String)request.getSession().getAttribute("name");
		   String subject=request.getParameter("subject");
		   String content=request.getParameter("content");
		   
		   //DB연동 
		   NoticeVO vo=new NoticeVO();
		   vo.setNo(Integer.parseInt(no));
		   vo.setUserId(userId);
		   vo.setSubject(subject);
		   vo.setContent(content);
		   /*System.out.println("content:"+content);
		   System.out.println("subject:"+subject);*/
		   // DB연동 
		   /*System.out.println("content:"+content);
		   System.out.println("subject:"+subject);*/
		   NoticeDAO.noticeUpdate(vo);
		   
		   return "redirect:noticeList.do";
	   }
	
	// 삭제
	@RequestMapping("main/noticeDelete.do")
	   public String noticeDeleteData(HttpServletRequest request)
	   {
		   String no=request.getParameter("no");
		   
		   NoticeDAO.noticeDelete(Integer.parseInt(no));
		   
		   request.setAttribute("noticeDelete", no);
		   
		   return "redirect:noticeList.do";
	   }
}
	
