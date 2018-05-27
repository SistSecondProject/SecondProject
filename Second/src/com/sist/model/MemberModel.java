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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.member.MemberDAO;
import com.sist.member.MemberVO;

@Controller
public class MemberModel {
	// �α���
	@RequestMapping("main/login.do")
	public String login(HttpServletRequest request) {
		request.setAttribute("home_jsp", "../login/login.jsp");

		return "main.jsp";
	}

	// �α���
	@RequestMapping("main/login_ok.do")
	public String LoginPage(HttpServletRequest request) {

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
			if (login_result == ("NOID")) {
				request.setAttribute("message", "���̵� �Ǵ� �н����带 �߸� �Է� �ϼ̽��ϴ�.");
				return "redirect:../main/login.do";

			}

			if (login_result == "NOPW") {
				request.setAttribute("message", "���̵� �Ǵ� �н����带 �߸� �Է� �ϼ̽��ϴ�.");
				return "redirect:../main/login.do";
			}

			// result���� ����
			HttpSession session = request.getSession(true);
			session.setAttribute("name", login_result);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "../login/welcome.jsp";
		// return "main/main.do";

	}

	// �α� �ƿ�
	@RequestMapping("main/logout.do")
	public String logout(HttpServletRequest request) throws Exception {
		// �α��� ������ ���ǿ��� ���� �Ѵ�.

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
	public String joinData(HttpServletRequest request) throws Exception{
		request.setCharacterEncoding("EUC-KR");
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
		//DB���� 
		MemberVO vo = new MemberVO();
		vo.setUserId(userId);
		vo.setPassword(password);
		vo.setName(name);
		vo.setEmailAddress(emailAddress);
		vo.setFavoriteCategory(favoriteCategory);
		vo.setPostAddress(postAddress);
		vo.setRoadnameAddress(roadnameAddress);
		vo.setDetailAddress(detailAddress);
		MemberDAO.memberJoin(vo);
		
		return "redirect:../main/main.do";
	}
	@RequestMapping("member/idCheck_ok.do")
	public String idCheck(HttpServletRequest request) {
		// �� �ޱ�
		String userId = request.getParameter("userId");
		// dao�� �ִ� idCheck���� userId ��������
		MemberDAO d = new MemberDAO();
		int count = d.idCheck(userId);
		request.setAttribute("count", count);
		return "../member/idCheck_ok.jsp";
	}
}
