package VO;

import java.io.Serializable;
import java.util.Date;

public class CompanyVO implements Serializable {
	private String companyName; // ȸ���/
	private String ceo; // ��ǥ/
	private String foundationDay; // ������
	private String webURL; // ������Ʈ
	private String headOffice; // ����
	private String turnover; // �����
	private String numOfEmployee; //�����
	private double grade; //����/
	private String salary; // ��� ����/
	private String imageURL; // ȸ��ΰ� �̹��� �ּ�/
	private String formOfCompany; // �������
	private String firstCategory; // �����/
	private String secondCategory;//2�������
	private String companyCode; // jobplate ���� ����ڵ�/
	private String companyDetail; // �������/
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
