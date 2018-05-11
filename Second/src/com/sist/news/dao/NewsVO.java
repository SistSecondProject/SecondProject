package com.sist.news.dao;

public class NewsVO {
private String subject;
private String newsImg;
private String news_link;
private String newsdetail;
private String dt_title;
private String dt_info;

public String getDt_title() {
	return dt_title;
}
public void setDt_title(String dt_title) {
	this.dt_title = dt_title;
}
public String getDt_info() {
	return dt_info;
}
public void setDt_info(String dt_info) {
	this.dt_info = dt_info;
}
public String getNews_link() {
	return news_link;
}
public void setNews_link(String news_link) {
	this.news_link = news_link;
}
public String getNewsdetail() {
	return newsdetail;
}
public void setNewsdetail(String newsdetail) {
	this.newsdetail = newsdetail;
}
public String getSubject() {
	return subject;
}
public void setSubject(String subject) {
	this.subject = subject;
}
public String getNewsImg() {
	return newsImg;
}
public void setNewsImg(String newsImg) {
	this.newsImg = newsImg;
}

}
