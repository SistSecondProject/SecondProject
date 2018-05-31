package com.sist.model;
/*
 * <member>
 * USERID
 PASSWORD
 NAME
 EMAILADDRESS
 FAVORITECATEGORY
 ZIPCODEADDRESS
 DETAILADDRESS
 USERLEVEL
 */

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.controller.SessionManager;
import com.sist.dao.CompanyDAO;
import com.sist.member.MemberDAO;
import com.sist.member.MemberVO;
import com.sist.self_introduction.IntroductionVO;
import com.sist.vo.CompanyVO;

@Controller
public class MemberModel {
	@RequestMapping("main/user.do")
	public String user(HttpServletRequest request) {
		if(request.getParameter("denied")!=null) {
			if(request.getParameter("denied").equals("2"))
				request.setAttribute("denied", "admin");
			else
				request.setAttribute("denied", "denied");
		}
		String userid = (String) request.getSession().getAttribute("name");
		if(userid==null)
			return "redirect:main.do";
		request.setAttribute("home_jsp", "../member/user.jsp");
		request.setAttribute("catename", MemberDAO.categoryName());
		MemberVO vo = MemberDAO.findData(userid);
		request.setAttribute("membervo", vo);
		request.setAttribute("favoritelist", CompanyDAO.findFavoriteCompany(userid));		
		request.setAttribute("recruitlist", MemberDAO.recruitmentList(userid));
		//request.setAttribute("infolist", arg1);
		
		

		List<Integer> highlist = CompanyDAO.highScoreList();
		List<CompanyVO> highscorecompanylist = new ArrayList<CompanyVO>();
		for (Integer code : highlist) {
			CompanyVO cvo = CompanyDAO.findCompany(code);
			if (vo.getFavoriteCategory() == 0)
				highscorecompanylist.add(cvo);
			else if (vo.getFavoriteCategory() == cvo.getCategoryCode())
				highscorecompanylist.add(cvo);
			if (highscorecompanylist.size() >= 10)
				break;
		}
		// List<IntroductionVO> infolist = IntroductionDAO.findList(userid);
		List<IntroductionVO> infolist = new ArrayList<IntroductionVO>();
		request.setAttribute("infolist", infolist);
		request.setAttribute("highList", highscorecompanylist);

		return "main.jsp";
	}

	@RequestMapping("main/chageinfo.do")
	public String change(HttpServletRequest request) {
		String userid = (String) request.getSession().getAttribute("name");
		MemberVO vo = MemberDAO.findData(userid);
		vo.setName(request.getParameter("name"));
		vo.setEmailAddress(request.getParameter("emailAddress"));
		vo.setFavoriteCategory(Integer.parseInt(request.getParameter("favoriteCategory")));
		return "redirect:user.do";
	}

	// 로그인
	@RequestMapping("main/login.do")
	public String login(HttpServletRequest request) {
		request.setAttribute("home_jsp", "../login/login.jsp");

		return "main.jsp";
	}

	// 로그인
	@RequestMapping("main/login_ok.do")
	public String LoginPage(HttpServletRequest request) {

		request.setAttribute("home_jsp", "../login/login.jsp");

		try {
			// HttpSession session = request.getSession();
			// String result="";
			request.setCharacterEncoding("EUC-KR");
			String id = request.getParameter("userId");
			System.out.println("userId:" + id);
			String pwd = request.getParameter("password");
			System.out.println("password:" + pwd);
			// MemberDAO
			String login_result = MemberDAO.isLogin(id, pwd);
			System.out.println(login_result);

			if (login_result.equals("NOID")) {
				request.setAttribute("message", "아이디 또는 패스워드를 잘못 입력 하셨습니다.");

				return "../login/login.jsp";
				// return "redirect:main/login.do";

			}

			if (login_result.equals("NOPW")) {
				request.setAttribute("message", "아이디 또는 패스워드를 잘못 입력 하셨습니다.");

				return "../login/login.jsp";
				// return "redirect:main/login.do";
			}

			HttpSession session = request.getSession(true);
			session.setAttribute("name", login_result);

			if (SessionManager.getInstance().checkDuplicationLogin(session.getId(), login_result)) {
				// request.setAttribute("message", "이미 로그인한 사용자 입니다. 이전 접속을 종료합니다.");
				return "redirect:main.do?duplicate=1";
			}
			// result값에 따라서

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return "redirect:main.do";

	}

	// 로그 아웃
	@RequestMapping("main/logout.do")
	public String logout(HttpServletRequest request) throws Exception {
		// 로그인 정보를 세션에서 삭제 한다.

		HttpSession session = request.getSession();
		session.removeAttribute("name");
		session.invalidate();
		return "redirect:../main/main.do";
	}

	@RequestMapping("member/join.do")
	public String memberData(HttpServletRequest request) {

		request.setAttribute("home_jsp", "../member/join.jsp");
		return "../main/main.jsp";
	}

	@RequestMapping("member/join_ok.do")
	public String joinData(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String emailAddress = request.getParameter("emailAddress");
		int favoriteCategory = Integer.parseInt(request.getParameter("favoriteCategory"));
		String postAddress = request.getParameter("postAddress");
		String roadnameAddress = request.getParameter("roadnameAddress");
		String detailAddress = request.getParameter("detailAddress");
		int userLevel = 1;
		int isLogin = 0;
		// DB연동
		MemberVO vo = new MemberVO();
		vo.setUserId(userId);
		vo.setPassword(password);
		vo.setName(name);
		vo.setEmailAddress(emailAddress);
		vo.setFavoriteCategory(favoriteCategory);
		vo.setPostAddress(postAddress);
		vo.setRoadnameAddress(roadnameAddress);
		vo.setDetailAddress(detailAddress);
		vo.setUserLevel(userLevel);
		MemberDAO.memberJoin(vo);

		return "../member/welcome.jsp";
	}

	@RequestMapping("member/idCheck_ok.do")
	public String idCheck(HttpServletRequest request) {
		// 값 받기
		String userId = request.getParameter("userId");
		// dao에 있는 idCheck에서 userId 가져오기
		MemberDAO d = new MemberDAO();
		int count = d.idCheck(userId);
		request.setAttribute("count", count);
		return "../member/idCheck_ok.jsp";
	}

	@RequestMapping("main/userInfoChange.do")
	public String userInfoChange(HttpServletRequest request) throws UnsupportedEncodingException{
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String userid = (String)request.getSession().getAttribute("name");
		if (name != "") {
			MemberDAO.changeName(userid, name);
		}
		String emailAddress = request.getParameter("emailAddress");
		if (emailAddress != "") {
			MemberDAO.changeEmailAddress(userid, emailAddress);

		}
		int favoriteCategory = Integer.parseInt(request.getParameter("favoriteCategory"));
		MemberDAO.changeFavoriteCategory(userid, favoriteCategory);
		return "redirect:user.do";
	}
	@RequestMapping("main/passwordChange.do")
	public String passwordChange(HttpServletRequest request) throws UnsupportedEncodingException{
		String cpassword=request.getParameter("cpassword");
		String npassword=request.getParameter("npassword");
		String userid = (String)request.getSession().getAttribute("name");
		
		if(MemberDAO.isLogin(userid, cpassword).equals("NOPW"))
			return "redirect:user.do?denied=1";
		else
			MemberDAO.changePW(userid,npassword);
		
		return "redirect:user.do";
	}
	
	@RequestMapping("main/withdrawal.do")
	public String withdrawal(HttpServletRequest request) throws UnsupportedEncodingException{
		String password=request.getParameter("password");	
		String userid = (String)request.getSession().getAttribute("name");
		
		if(MemberDAO.isLogin(userid, password).equals("NOPW"))
			return "redirect:user.do?denied=1";
		else if(userid.equals("admin")) {
			return "redirect:user.do?denied=2";
		}else
			MemberDAO.withdrawal(userid);
		request.getSession().invalidate();
		return "redirect:main.do";
	}

}