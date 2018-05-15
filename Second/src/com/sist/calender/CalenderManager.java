package com.sist.calender;
import java.util.*;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
public class CalenderManager {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
CalenderManager cm=new CalenderManager();
cm.calenderFindData();
	}
	public ArrayList<CalenderVO> calenderFindData(){
		ArrayList<CalenderVO> list=new ArrayList<CalenderVO>();
	try {
		Document doc=Jsoup.connect("http://www.jobkorea.co.kr/Starter/calendar/sub/week").get();
		Elements day=doc.select("div.nowWeek thead th");
		  for(int i=0;i<day.size();i++)
		  {
			  CalenderVO vo=new CalenderVO();
			  vo.setDay(day.get(i).text());
			list.add(vo);
		  }
	}catch (Exception ex) {
	System.out.println(ex.getMessage());
	}
		return list;
	}
	public ArrayList<CalenderVO> calenderinfoData(){
		ArrayList<CalenderVO> list=new ArrayList<CalenderVO>();
		try {
			Document doc=Jsoup.connect("http://www.jobkorea.co.kr/Starter/calendar/sub/week").get();
			Elements data=doc.select("tr dl dd");
			  for(int i=0;i<data.size();i++)
			  {
				  CalenderVO vo=new CalenderVO();
				  vo.setData(data.get(i).text());
				list.add(vo);
			  }
		}catch (Exception ex) {
		System.out.println(ex.getMessage());
		}
		return list;
	}
}
