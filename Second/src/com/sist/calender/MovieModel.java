package com.sist.calender;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public class MovieModel {
	//목록 출력
	public void movieListData(HttpServletRequest request) {
		CalenderManager dao=new CalenderManager();
		ArrayList<CalenderVO> list=dao.calenderFindData();
		request.setAttribute("list", list);
	}
	
}
