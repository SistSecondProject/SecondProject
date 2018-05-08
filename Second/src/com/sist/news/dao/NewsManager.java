package com.sist.news.dao;

import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class NewsManager {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		NewsManager nd=new NewsManager();
		nd.newsFindData();
	}
	public ArrayList<NewsVO> newsFindData(){
		ArrayList<NewsVO> list=new ArrayList<NewsVO>();
	try {
		/*
		 *   <ul class="joodJobList">

                        <li>
                            <p class="thumb">
                                <a href="/goodjob/news/View?News_No=14373&amp;schCtgr=100002&amp;schGrpCtgr=100&amp;Page=1">
                                    <img src="http://file1.jobkorea.co.kr/GoodJob/News/14371-14380/14373/Image.jpg" alt="��ȥ ������ 38% �����ɾ� ��" width="198" height="112">


                                </a>
                            </p>
                            <dl>
                                <dt><a href="/goodjob/news/View?News_No=14373&amp;schCtgr=100002&amp;schGrpCtgr=100&amp;Page=1">��ȥ ������ 38% �����ɾ� ��</a></dt>
                                <dd class="tx"><a href="/goodjob/news/View?News_No=14373&amp;schCtgr=100002&amp;schGrpCtgr=100&amp;Page=1">��ȥ ������ 5�� �� 2���� ���� �ڳ�� �θ� ���ÿ� �ξ��ϴ� �̸��� �������ɾ�� �ϰ� �ִ� ������ ��Ÿ����. </a></dd>
                                <dd class="date"><span class="name">���ڸ���</span>2018-04-30</dd>
                                <dd class="down"><strong>��ȸ��</strong>  613</dd>
                            </dl>
                        </li>

		 */
		Document doc=Jsoup.connect("http://www.jobkorea.co.kr/goodjob/news/worker").get();
		Elements subject=doc.select("ul.joodJobList li dl dt a");
		Elements img=doc.select("ul.joodJobList li p.thumb a img");
		  for(int i=0;i<8;i++)
		  {
			  NewsVO vo=new NewsVO();
			  vo.setSubject(subject.get(i).text());
			  vo.setNewsImg(img.get(i).attr("src"));
			list.add(vo);
			System.out.println(subject.get(i).text()+" "+img.get(i).attr("src"));
		  }
	}catch (Exception ex) {
	System.out.println(ex.getMessage());
	}
		return list;
	}
}
