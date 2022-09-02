package com.pinetreelch.infra.modules.codegroup;

public class CodeGroup {
	
	// 코드그룹 변수
	private String cgSeq;
	private String cgName;
	private String cgKor;
	private Integer useNY;
	private Integer delNY;
	
	// 코드변수
	
	private String cSeq;
	private String codeGroup_cgSeq;
	private String total;
	
	// colum에 없는 필드: 바로위 total 같은 것들을 생성할때 필드명 앞에 x를 붙임;
	// ex private String xtotal;
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public String getCodeGroup_cgSeq() {
		return codeGroup_cgSeq;
	}
	public void setCodeGroup_cgSeq(String codeGroup_cgSeq) {
		this.codeGroup_cgSeq = codeGroup_cgSeq;
	}
	public String getcSeq() {
		return cSeq;
	}
	public void setcSeq(String cSeq) {
		this.cSeq = cSeq;
	}
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
