package com.sist.self_introduction;

import java.sql.Date;
/*
 * 
 * CREATE TABLE User_Introduction(
   userID VARCHAR2(100) CONSTRAINT ui_userID_nn NOT NULL,
   no NUMBER CONSTRAINT ui_no_nn NOT NULL,
   content VARCHAR2(4000) CONSTRAINT ui_content_nn NOT NULL,
   regdate DATE DEFAULT SYSDATE, 
   CONSTRAINT ui_userID_fk FOREIGN KEY(userID) REFERENCES member(userID)  on delete cascade,
   CONSTRAINT ui_no_fk FOREIGN KEY(no) REFERENCES Pass_Introduction(no)  on delete cascade
);
 * 
 * 
 */
public class IntroductionVO {
  private int no;
  private String userId;
  private String title;
  private String content;
  private Date regdate;
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
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
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
  

  
}
