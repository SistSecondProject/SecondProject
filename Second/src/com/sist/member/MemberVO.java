package com.sist.member;
/*
 * 
 *  USERID
    PASSWORD
    NAME
 EMAILADDRESS
 FAVORITECATEGORY
 ZIPCODEADDRESS
 DETAILADDRESS
 USERLEVEL
 */
public class MemberVO {
	private String  userId; // ���̵�
	private String  password; // ���
	private String  name; // �̸�
	private String  emailAddress; // �̸���
	private int favoriteCategory; // ���ɱ��
	private String  postAddress; // �����ȣ
	private String roadnameAddress; // ���θ�
	private String  detailAddress; // ���ּ�
	private int  userLevel; // ex) admin�� 0
	private int isLogin; // �α��� �ߺ�
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public int getFavoriteCategory() {
		return favoriteCategory;
	}
	public void setFavoriteCategory(int favoriteCategory) {
		this.favoriteCategory = favoriteCategory;
	}
	public String getPostAddress() {
		return postAddress;
	}
	public void setPostAddress(String postAddress) {
		this.postAddress = postAddress;
	}
	public String getRoadnameAddress() {
		return roadnameAddress;
	}
	public void setRoadnameAddress(String roadnameAddress) {
		this.roadnameAddress = roadnameAddress;
	}
	public String getDetailAddress() {
		return detailAddress;
	}
	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}
	public int getUserLevel() {
		return userLevel;
	}
	public void setUserLevel(int userLevel) {
		this.userLevel = userLevel;
	}
	public int getIsLogin() {
		return isLogin;
	}
	public void setIsLogin(int isLogin) {
		this.isLogin = isLogin;
	}
}