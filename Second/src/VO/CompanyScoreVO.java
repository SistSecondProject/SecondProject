package VO;

import java.io.Serializable;

public class CompanyScoreVO implements Serializable{
	private String companyCode;
	private String userID;
	private double promotion_possibility;
	private double welfare_pay;	
	private double work_life_balance;
	private double corporate_culture;
	private double management;
	private String evaluation;
	private int count; // ÀâÇÃ·¡´Ö¿¡ µî·ÏµÈ ¸®ºä °¹¼ö
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getCompanyCode() {
		return companyCode;
	}
	public void setCompanyCode(String companyCode) {
		this.companyCode = companyCode;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public double getPromotion_possibility() {
		return promotion_possibility;
	}
	public void setPromotion_possibility(double promotion_possibility) {
		this.promotion_possibility = promotion_possibility;
	}
	public double getWelfare_pay() {
		return welfare_pay;
	}
	public void setWelfare_pay(double welfare_pay) {
		this.welfare_pay = welfare_pay;
	}
	public double getWork_life_balance() {
		return work_life_balance;
	}
	public void setWork_life_balance(double work_life_balance) {
		this.work_life_balance = work_life_balance;
	}
	public double getCorporate_culture() {
		return corporate_culture;
	}
	public void setCorporate_culture(double corporate_culture) {
		this.corporate_culture = corporate_culture;
	}
	public double getManagement() {
		return management;
	}
	public void setManagement(double management) {
		this.management = management;
	}
	public String getEvaluation() {
		return evaluation;
	}
	public void setEvaluation(String evaluation) {
		this.evaluation = evaluation;
	}
}
