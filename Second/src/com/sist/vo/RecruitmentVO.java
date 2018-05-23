package com.sist.vo;

public class RecruitmentVO {
	private int recruitmentCode;
	private int companyCode;
	private String title;
	private String deadline;
	private String url;
	private String content;
	public int getRecruitmentCode() {
		return recruitmentCode;
	}
	public void setRecruitmentCode(int recruitmentCode) {
		this.recruitmentCode = recruitmentCode;
	}
	public int getCompanyCode() {
		return companyCode;
	}
	public void setCompanyCode(int companyCode) {
		this.companyCode = companyCode;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDeadline() {
		return deadline;
	}
	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	/*
	 * create table Recruitment( 
	 *  recruitmentCode NUMBER constraint Recruitment_recruitmentCode_nn not null,
	 *  companyCode NUMBER constraint Recruitment_companyCode_nn not null,
	 *  title VARCHAR2(1000),
	 *  deadline varchar2(200),
	 *  url VARCHAR2(200),
	 *  content clob,
	 *  constraint Recruitment_recruitmentCode_pk primary key(recruitmentCode),
	 *  constraint Recruitment_companyCode_fk foreign key(companyCode) references company(companyCode) on delete cascade
	 *  );
	 */
}
