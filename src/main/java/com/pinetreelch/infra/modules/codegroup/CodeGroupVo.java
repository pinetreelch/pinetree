package com.pinetreelch.infra.modules.codegroup;

public class CodeGroupVo {
	
	//vo는 쿼리에 던져주는 데이터
	private String shValue;
	private Integer shOption;
	private Integer shUse;
	
	private String cgSeq;
	

	public String getCgSeq() {
		return cgSeq;
	}

	public void setCgSeq(String cgSeq) {
		this.cgSeq = cgSeq;
	}

	public Integer getShUse() {
		return shUse;
	}

	public void setShUse(Integer shUse) {
		this.shUse = shUse;
	}

	public Integer getShOption() {
		return shOption;
	}

	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}

	public String getShValue() {
		return shValue;
	}

	public void setShValue(String shValue) {
		this.shValue = shValue;
	}
}


