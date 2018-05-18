package VO;

import java.io.Serializable;
import java.util.ArrayList;

public class SaraminVO implements Serializable {
	private String companyName;
	private String companyCode;
	private String matchCode;
	private String url;
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	private ArrayList<Integer> indexList = new ArrayList<Integer>();
	public String getMatchCode() {
		return matchCode;
	}

	public void setMatchCode(String matchCode) {
		this.matchCode = matchCode;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getCompanyCode() {
		return companyCode;
	}

	public void setCompanyCode(String companyCode) {
		this.companyCode = companyCode;
	}

	public ArrayList<Integer> getIndexList() {
		return indexList;
	}

	public void setIndexList(ArrayList<Integer> indexList) {
		this.indexList = indexList;
	}
}
