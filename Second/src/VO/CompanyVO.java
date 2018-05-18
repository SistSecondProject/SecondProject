package VO;

import java.io.Serializable;
import java.util.Date;

public class CompanyVO implements Serializable {
	private String companyName; // 회사명/
	private String ceo; // 대표/
	private String foundationDay; // 설립일
	private String webURL; // 웹사이트
	private String headOffice; // 본사
	private String turnover; // 매출액
	private String numOfEmployee; //사원수
	private double grade; //평점/
	private String salary; // 평균 연봉/
	private String imageURL; // 회사로고 이미지 주소/
	private String formOfCompany; // 기업형태
	private String firstCategory; // 산업군/
	private String secondCategory;//2차산업군
	private String companyCode; // jobplate 고유 기업코드/
	private String companyDetail; // 기업정보/
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getCeo() {
		return ceo;
	}
	public void setCeo(String ceo) {
		this.ceo = ceo;
	}
	public String getFoundationDay() {
		return foundationDay;
	}
	public void setFoundationDay(String foundationDay) {
		this.foundationDay = foundationDay;
	}
	public String getWebURL() {
		return webURL;
	}
	public void setWebURL(String webURL) {
		this.webURL = webURL;
	}
	public String getHeadOffice() {
		return headOffice;
	}
	public void setHeadOffice(String headOffice) {
		this.headOffice = headOffice;
	}
	public String getTurnover() {
		return turnover;
	}
	public void setTurnover(String turnover) {
		this.turnover = turnover;
	}
	public String getNumOfEmployee() {
		return numOfEmployee;
	}
	public void setNumOfEmployee(String numOfEmployee) {
		this.numOfEmployee = numOfEmployee;
	}
	public double getGrade() {
		return grade;
	}
	public void setGrade(double grade) {
		this.grade = grade;
	}
	public String getImageURL() {
		return imageURL;
	}
	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}
	public String getFormOfCompany() {
		return formOfCompany;
	}
	public void setFormOfCompany(String formOfCompany) {
		this.formOfCompany = formOfCompany;
	}
	public String getFirstCategory() {
		return firstCategory;
	}
	public void setFirstCategory(String firstCategory) {
		this.firstCategory = firstCategory;
	}
	public String getSecondCategory() {
		return secondCategory;
	}
	public void setSecondCategory(String secondCategory) {
		this.secondCategory = secondCategory;
	}
	public String getCompanyCode() {
		return companyCode;
	}
	public void setCompanyCode(String companyCode) {
		this.companyCode = companyCode;
	}
	public String getCompanyDetail() {
		return companyDetail;
	}
	public void setCompanyDetail(String companyDetail) {
		this.companyDetail = companyDetail;
	}
}
