package com.pinetreelch.infra.modules.codegroup;

public class CodeGroup {
	//DTO
	// infr_code_group
	
	private String cgSeq;
	private String cgName;
	private String cgKor;
	private Integer useNY;
	private Integer delNY;
	
	//----------------------------------
	public String getCgSeq() {
		return cgSeq;
	}
	public void setCgSeq(String cgSeq) {
		this.cgSeq = cgSeq;
	}
	public String getCgName() {
		return cgName;
	}
	public void setCgName(String cgName) {
		this.cgName = cgName;
	}
	public String getCgKor() {
		return cgKor;
	}
	public void setCgKor(String cgKor) {
		this.cgKor = cgKor;
	}
	public Integer getUseNY() {
		return useNY;
	}
	public void setUseNY(Integer useNY) {
		this.useNY = useNY;
	}
	public Integer getDelNY() {
		return delNY;
	}
	public void setDelNY(Integer delNY) {
		this.delNY = delNY;
	}
	
	
}
