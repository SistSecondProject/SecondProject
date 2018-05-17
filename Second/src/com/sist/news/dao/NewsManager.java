package com.sist.news.dao;

import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class NewsManager {
	ArrayList<NewsVO> data;

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		NewsManager nd = new NewsManager();
		nd.newsDetailData();
	}

	public ArrayList<NewsVO> newsFindData() {
		ArrayList<NewsVO> list = new ArrayList<NewsVO>();
		try {
			Document doc = Jsoup.connect("http://www.jobkorea.co.kr/goodjob/news/worker").get();
			Elements subject = doc.select("ul.joodJobList li dl dt a");
			Elements img = doc.select("ul.joodJobList li p.thumb a img");
			Elements news_link = doc.select("ul.joodJobList li dl dt a");
			int no=0;
			for (int i = 0; i < 8; i++) {

				NewsVO vo = new NewsVO();
				vo.setSubject(subject.get(i).text());
				if((img.get(no).attr("src")).equals("http://i.jobkorea.kr/content/images/starter/star_icon_new02.png")) {
					no++;
				}
				vo.setNewsImg(img.get(no).attr("src"));
				
				vo.setNews_link(news_link.get(i).attr("href"));
				list.add(vo);
				no++;
			}
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
		return list;
	}

	public ArrayList<NewsVO> newsDetailData() {
		ArrayList<NewsVO> list = new ArrayList<NewsVO>();
		ArrayList<NewsVO> news_links = newsFindData();
		for (int i = 0; i < 8; i++) {
			try {

				Document doc = Jsoup.connect("http://www.jobkorea.co.kr"+news_links.get(i).getNews_link()).get();
				Elements subject = doc.select("div.infoBx h1.tit");
				Elements info = doc.select("div.viewWrap");
				NewsVO vo = new NewsVO();
				vo.setDt_title(subject.get(0).text());
				vo.setDt_info(info.get(0).html());
				list.add(vo);
				//System.out.println(subject.get(0).text()+" "+info.get(0).html());
			} catch (Exception ex) {
				System.out.println(ex.getMessage());
			}
		}
		return list;
	}
}
