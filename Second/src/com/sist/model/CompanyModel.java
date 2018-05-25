package com.sist.model;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.CompanyDAO;
import com.sist.vo.Company_ScoreVO;

import com.sist.vo.*;

@Controller
public class CompanyModel {

	@RequestMapping("main/recruitment_bookmark.do")
	public String recruitment_bookmark(HttpServletRequest request) {
		String type = request.getParameter("type");
		String recruitmentcode = request.getParameter("recruitmentcode");
		request.getSession().setAttribute("userid", "admin");//////////////////////////
		String userid = (String) request.getSession().getAttribute("userid");
		
		if (type == null) {
			if (CompanyDAO.searchRecruitmentBookmark(userid, recruitmentcode))
				request.setAttribute("flag", true);
			else
				request.setAttribute("flag", false);			
		} else {
			if(type.equals("bookmarktrue")) {
				CompanyDAO.deleteRecruitmentBookmark(userid, recruitmentcode);
				request.setAttribute("flag", false);
			}else {
				CompanyDAO.insertRecruitmentBookmark(userid, recruitmentcode);
				request.setAttribute("flag", true);
			}
		}
		
		
		
		return "../company/recruitment_bookmark.jsp";
	}
	@RequestMapping("main/company_bookmark.do")
	public String company_bookmark(HttpServletRequest request) {
		String type = request.getParameter("type");
		String companyCode = request.getParameter("companycode");
		request.getSession().setAttribute("userid", "admin");///////////////////////////
		String userid = (String) request.getSession().getAttribute("userid");
		
		if (type == null) {

			if (CompanyDAO.searchCompanyBookmark(userid, companyCode))
				request.setAttribute("flag", true);
			else
				request.setAttribute("flag", false);
			
		} else {
			if(type.equals("bookmarktrue")) {
				CompanyDAO.deleteCompanyBookmark(userid, companyCode);
				request.setAttribute("flag", false);
			}else {
				CompanyDAO.insertCompanyBookmark(userid, companyCode);
				request.setAttribute("flag", true);
			}
		}
		return "../company/company_bookmark.jsp";
	}

	@RequestMapping("main/score.do")
	public String score(HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("EUC-KR");
		String companyCode = request.getParameter("companycode");
		String content = request.getParameter("content");
		/*
		 * private double promotion_possibility; private double welfare_pay; private
		 * double work_life_balance; private double corporate_culture ; private double
		 * management;
		 */
		double pp = Double.parseDouble(request.getParameter("rating"));
		double wp = Double.parseDouble(request.getParameter("ratingtwo"));
		double wl = Double.parseDouble(request.getParameter("ratingthree"));
		double cc = Double.parseDouble(request.getParameter("ratingfour"));
		double m = Double.parseDouble(request.getParameter("ratingfive"));

		request.getSession().setAttribute("userid", "admin");
		String userid = (String) request.getSession().getAttribute("userid");

		Company_ScoreVO vo = new Company_ScoreVO();
		vo.setCompanyCode(Integer.parseInt(companyCode));
		vo.setEvaluation(content);
		vo.setUserID(userid);
		vo.setCorporate_culture(cc);
		vo.setManagement(m);
		vo.setPromotion_possibility(pp);
		vo.setWelfare_pay(wp);
		vo.setWork_life_balance(wl);

		CompanyDAO.insertScore(vo);

		return "redirect:company.do";
	}

	@RequestMapping("main/company.do")
	public String compareListData(HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("EUC-KR");
		String companyCode = request.getParameter("companycode");
		String strSearch = request.getParameter("search");
		String strCate = request.getParameter("category");
		String curPage = request.getParameter("page");
		String recruitmentCode = request.getParameter("recruitmentcode");
		if (recruitmentCode != null) {
			request.setAttribute("recruitment", CompanyDAO.recruitmentDetail(recruitmentCode));
		}

		if (companyCode != null) {
			CompanyVO cvo =CompanyDAO.companyDetail(companyCode);
			cvo.setCompanyDetail(cvo.getCompanyDetail().replaceAll("\n", "<br>"));
			request.setAttribute("vo", cvo);
			
			request.setAttribute("list", CompanyDAO.recruitmentList(companyCode));
		}
		if (curPage == null)
			curPage = "1";
		if (strCate == null || strCate == "")
			strCate = "";
		if (strSearch == null || strSearch == "")
			strSearch = "";
		String totalPage = String.valueOf(CompanyDAO.totalPage(strSearch, strCate));

		request.setAttribute("curPage", Integer.parseInt(curPage));
		request.setAttribute("totalPage", totalPage);
		int start, end;
		if (Integer.parseInt(curPage) < 6)
			start = 1;
		else
			start = Integer.parseInt(curPage) - 5;

		if (Integer.parseInt(curPage) < 5) {
			if (Integer.parseInt(totalPage) < 10)
				end = Integer.parseInt(totalPage);
			else
				end = 10;
		} else {
			if (Integer.parseInt(curPage) + 5 > Integer.parseInt(totalPage))
				end = Integer.parseInt(totalPage);
			else
				end = Integer.parseInt(curPage) + 5;
		}
		
		List<Integer> highlist=CompanyDAO.highScoreList();
		List<CompanyVO> highscorecompanylist = new ArrayList<CompanyVO>();
		for(Integer code : highlist) {
			CompanyVO vo = CompanyDAO.findCompany(code);
			highscorecompanylist.add(vo);
		}
		request.setAttribute("highList", highscorecompanylist);		
		request.setAttribute("favoritelist", CompanyDAO.findFavoriteCompany("admin"));
		
		HttpSession session=request.getSession();
		session.setAttribute("favoritelist", CompanyDAO.findFavoriteCompany("admin"));
		
		request.setAttribute("companyList", CompanyDAO.searchList(strSearch, strCate, curPage));
		request.setAttribute("start", start);
		request.setAttribute("end", end);
		request.setAttribute("category", strCate);
		request.setAttribute("search", strSearch);
		request.setAttribute("home_jsp", "../company/company.jsp");
		request.setAttribute("catename", CompanyDAO.categoryName());
		request.setAttribute("catecount", CompanyDAO.categoryCount());
		return "main.jsp";
	}
	
}