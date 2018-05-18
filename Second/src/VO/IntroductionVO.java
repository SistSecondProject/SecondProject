package VO;

import java.util.ArrayList;

public class IntroductionVO {
	private String passname;
	private int no;
	private String companyCode;
	private String content;
	private String position;
	private String recruitmentTitle;
	private ArrayList<String> matchName=new ArrayList<String>();

	public ArrayList<String> getMatchName() {
		return matchName;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getCompanyCode() {
		return companyCode;
	}

	public void setCompanyCode(String companyCode) {
		this.companyCode = companyCode;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getRecruitmentTitle() {
		return recruitmentTitle;
	}

	public void setRecruitmentTitle(String recruitmentTitle) {
		this.recruitmentTitle = recruitmentTitle;
	}

	public void setMatchName(ArrayList<String> matchName) {
		this.matchName = matchName;
	}

	public String getPassname() {
		return passname;
	}

	public void setPassname(String passname) {
		this.passname = passname;
	}
	
}
