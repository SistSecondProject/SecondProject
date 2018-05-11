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
		Elements state=doc.select("dt.skip dd");
		Elements data=doc.select("td.bgNone a");
		  for(int i=0;i<day.size();i++)
		  {
			  CalenderVO vo=new CalenderVO();
			 // System.out.println(day.get(i).text()+" "+state.get(i).attr("alt")+" "+data.get(i).text());
			//  System.out.println(data.get(i).text());
			  
			 // list.add(vo);
			  vo.setDay(day.get(i).text());
			list.add(vo);
		  }
	}catch (Exception ex) {
	System.out.println(ex.getMessage());
	}
		return list;
	}
}
