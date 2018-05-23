package com.sist.vo;

public class Company_ScoreVO {
	private int companyCode;
	private String userID ;
	private double promotion_possibility;
	private double welfare_pay; 
	private double work_life_balance;
	private double corporate_culture ;
	private double management;
	private String evaluation; 
/*
 * create table Company_Score(
 *    companyCode   NUMBER   constraint   Comp_Sco_companyCode_nn not null,
 *    userID   VARCHAR2(100)   constraint   Comp_Sco_userID_nn not null,
 *    promotion_possibility   NUMBER   constraint   Comp_Sco_pro_pos_nn not null,
 *    welfare_pay   NUMBER   constraint   Comp_Sco_wel_pay_nn not null,
 *    work_life_balance   NUMBER   constraint   Comp_Sco_work_life_balance_nn not null,
 *    corporate_culture   NUMBER   constraint   Comp_Sco_cor_culture_nn not null,
 *    management   NUMBER   constraint   Comp_Sco_man_nn not null,
 *    evaluation   VARCHAR2(4000)   constraint   Comp_Sco_eva_nn not null,
 *    constraint   Comp_Sco_companyCode_fk   foreign key(companyCode)   references   company(companyCode) on delete cascade,
 *    constraint   Comp_Sco_userID_fk   foreign key(userID)   references   member(userid) on delete cascade);
 */
	public int getCompanyCode() {
		return companyCode;
	}
	public void setCompanyCode(int companyCode) {
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
	public void setCorporate_culture(double orporate_culture) {
		this.corporate_culture = orporate_culture;
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
