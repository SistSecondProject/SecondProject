package com.sist.model;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.controller.SessionManager;

@Controller
public class SessionModel {
	@RequestMapping("main/session.do")
	public String session(HttpServletRequest request) {
		String sid=request.getParameter("sid");
		if(SessionManager.getInstance().existSession(sid))
			request.setAttribute("result", true );
		else
			request.setAttribute("result", false );
		return "../main/session.jsp";
	}
}
