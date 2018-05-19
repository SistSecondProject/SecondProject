package com.sist.pass_info;

/*
   no NUMBER CONSTRAINT pi_no_nn NOT NULL,
   companyName VARCHAR2(100) CONSTRAINT pi_content_nn NOT NULL,
   infocode VARCHAR2(100),
   content VARCHAR2(4000) CONSTRAINT pi_content_nn NOT NULL,
   position VARCHAR2(100) CONSTRAINT pi_position_nn NOT NULL,
   recruitmentTitle VARCHAR2(100) CONSTRAINT pi_recurt_nn NOT NULL,
 */

public class PassVO {
	private int no;//*
	private String companyName; // 회사명
	private String position; // 지원분야 
	private String recruitmenttitle; //  몇년도 자소서인지(채용명) --자소서 제목 *
    private String companycode;// 자소서 번호(회사코드 : companycode)*
    private String content;//내용 --전체*
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getRecruitmenttitle() {
		return recruitmenttitle;
	}
	public void setRecruitmenttitle(String recruitmenttitle) {
		this.recruitmenttitle = recruitmenttitle;
	}
	public String getCompanycode() {
		return companycode;
	}
	public void setCompanycode(String companycode) {
		this.companycode = companycode;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
    
	

	
    
}
