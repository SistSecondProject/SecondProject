package com.sist.community;
import java.util.*;
public class SpecVO {
private int no;
private String userId;
private String subject;
private String content;
private Date regdate;
private int hit;
private int likePoint;
private int dislikePoint;
private String password;

public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public int getNo() {
	return no;
}
public void setNo(int no) {
	this.no = no;
}
public String getUserId() {
	return userId;
}
public void setUserId(String userId) {
	this.userId = userId;
}
public String getSubject() {
	return subject;
}
public void setSubject(String subject) {
	this.subject = subject;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public Date getRegdate() {
	return regdate;
}
public void setRegdate(Date regdate) {
	this.regdate = regdate;
}
public int getHit() {
	return hit;
}
public void setHit(int hit) {
	this.hit = hit;
}
public int getLikePoint() {
	return likePoint;
}
public void setLikePoint(int likePoint) {
	this.likePoint = likePoint;
}
public int getDislikePoint() {
	return dislikePoint;
}
public void setDislikePoint(int dislikePoint) {
	this.dislikePoint = dislikePoint;
}



}
