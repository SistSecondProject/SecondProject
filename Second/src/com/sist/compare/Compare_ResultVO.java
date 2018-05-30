package com.sist.compare;

import java.io.Serializable;

public class Compare_ResultVO implements Serializable {
	private int companyCode;//기업코드
	private double promotion_possibility; //승진 가능성
	private double welfare_pay;  //복지 및 급여
	private double work_life_balance; //업무 삶 균형
	private double corporate_culture; //사내문화
	private double management; //경영진
	private String companyName;

	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public int getCompanyCode() {
		return companyCode;
	}
	public void setCompanyCode(int companyCode) {
		this.companyCode = companyCode;
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
	
}
