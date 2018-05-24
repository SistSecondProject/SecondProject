package com.sist.compare;

public class CompareVO {
	private int companyCode; 
	private String imageURL; //회사사진 
	private String companyName; //회사이름
	private String formOfCompany; //규모 
	
	
	public int getCompanyCode() {
		return companyCode;
	}
	public void setCompanyCode(int companyCode) {
		this.companyCode = companyCode;
	}
	public String getImageURL() {
		return imageURL;
	}
	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getFormOfCompany() {
		return formOfCompany;
	}
	public void setFormOfCompany(String formOfCompany) {
		this.formOfCompany = formOfCompany;
	}

}