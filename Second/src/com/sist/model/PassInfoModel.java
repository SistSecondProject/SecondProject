package com.sist.model;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import java.util.*;

@Controller
public class PassInfoModel {
	@RequestMapping("main/passinfo.do")
	public String compareListData(HttpServletRequest request) {
		request.setAttribute("home_jsp", "../self/passinfo.jsp");
		return "main.jsp";
	}
}
