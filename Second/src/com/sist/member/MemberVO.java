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
	private String  userId;
	private String  password; 
	private String  name;
	private String  emailaddress;
	private int favoritecategory;
	private String  zipcodeaddress;
	private String  detailaddress;
	private int  userlevel;
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
	public String getEmailaddress() {
		return emailaddress;
	}
	public void setEmailaddress(String emailaddress) {
		this.emailaddress = emailaddress;
	}
	public int getFavoritecategory() {
		return favoritecategory;
	}
	public void setFavoritecategory(int favoritecategory) {
		this.favoritecategory = favoritecategory;
	}
	public String getZipcodeaddress() {
		return zipcodeaddress;
	}
	public void setZipcodeaddress(String zipcodeaddress) {
		this.zipcodeaddress = zipcodeaddress;
	}
	public String getDetailaddress() {
		return detailaddress;
	}
	public void setDetailaddress(String detailaddress) {
		this.detailaddress = detailaddress;
	}
	public int getUserlevel() {
		return userlevel;
	}
	public void setUserlevel(int userlevel) {
		this.userlevel = userlevel;
	}
	
}