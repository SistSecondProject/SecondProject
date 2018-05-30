package com.sist.community;
import java.util.*;
public class SpecReplyVO {
private int boardNo;
private int commentNo;
private String userId;
private String content;
private Date regdate;
private int root;
private int sequence;
private int depth;
private int parent;
private int degree;
public int getBoardNo() {
	return boardNo;
}
public void setBoardNo(int boardNo) {
	this.boardNo = boardNo;
}
public int getCommentNo() {
	return commentNo;
}
public void setCommentNo(int commentNo) {
	this.commentNo = commentNo;
}
public String getUserId() {
	return userId;
}
public void setUserId(String userId) {
	this.userId = userId;
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
public int getRoot() {
	return root;
}
public void setRoot(int root) {
	this.root = root;
}
public int getSequence() {
	return sequence;
}
public void setSequence(int sequence) {
	this.sequence = sequence;
}
public int getDepth() {
	return depth;
}
public void setDepth(int depth) {
	this.depth = depth;
}
public int getParent() {
	return parent;
}
public void setParent(int parent) {
	this.parent = parent;
}
public int getDegree() {
	return degree;
}
public void setDegree(int degree) {
	this.degree = degree;
}

}
