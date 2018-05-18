package VO;

import java.io.Serializable;
import java.util.ArrayList;

public class RecruitmentVO implements Serializable {
	private String recruitmentCode;
	private String companyCode;
	private String title;
	private String deadline;
	private String url;
	private ArrayList<String> taglist = new ArrayList<String>();
	private String content;

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public ArrayList<String> getTaglist() {
		return taglist;
	}


	public String getRecruitmentCode() {
		return recruitmentCode;
	}

	public void setRecruitmentCode(String recruitmentCode) {
		this.recruitmentCode = recruitmentCode;
	}

	public String getCompanyCode() {
		return companyCode;
	}

	public void setCompanyCode(String companyCode) {
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
}
