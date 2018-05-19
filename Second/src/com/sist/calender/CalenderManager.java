package com.sist.calender;
import java.util.*;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
public class CalenderManager {
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
			Elements url=doc.select("tr dl dd a");
			  for(int i=0;i<data.size();i++)
			  {
				  CalenderVO vo=new CalenderVO();
				  vo.setData(data.get(i).text());
				  vo.setUrl(url.get(i).attr("href"));
				list.add(vo);
			  }
		}catch (Exception ex) {
		System.out.println(ex.getMessage());
		}
		return list;
	}
	
	
	public ArrayList<Calender_dtVO> calenderDetailData(String url){
		ArrayList<Calender_dtVO> list=new ArrayList<Calender_dtVO>();
		try {
			Document doc=Jsoup.connect(url).get();
			Elements title=doc.select("div.sumTit");
			Elements info1=doc.select("div.tbCol");
			Elements info2=doc.select("div.tbCol");
			Elements info3=doc.select("div.tbCoInfo dl.tbList");
			Elements img=doc.select("div.tbLogo div.logo img");
			Elements homepage=doc.select("dl.tbList span.tahoma a");
			
			Calender_dtVO vo=new Calender_dtVO();
			vo.setTitle(title.get(0).html());
			vo.setInfo1(info1.get(0).html());
			vo.setInfo2(info2.get(1).html());
			vo.setInfo3(info3.get(0).html());
			vo.setImg(img.get(0).attr("src"));
			vo.setHomepage(homepage.get(0).attr("href"));

			  list.add(vo);
		}catch (Exception ex) {
		System.out.println(ex.getMessage());
		}
	return list;
}
}
