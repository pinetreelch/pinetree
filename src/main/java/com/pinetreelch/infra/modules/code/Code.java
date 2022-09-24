package com.pinetreelch.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

public class Code {
	
//	for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();
	
	//코드 테이블 변수
	private String cSeq;
	private String cdName;
	private String useNY;
	private String delNY;
	private String codeGroup_cgSeq;

	
	
	//코드그룹 테이블 변수
	private String cgName;
	private String cgSeq;
	
	public String getCgSeq() {
		return cgSeq;
	}
	public void setCgSeq(String cgSeq) {
		this.cgSeq = cgSeq;
	}
	// ================================
	public String getCgName() {
		return cgName;
	}
	public void setCgName(String cgName) {
		this.cgName = cgName;
	}
	public String getcSeq() {
		return cSeq;
	}
	public void setcSeq(String cSeq) {
		this.cSeq = cSeq;
	}
	public String getCdName() {
		return cdName;
	}
	public void setCdName(String cdName) {
		this.cdName = cdName;
	}
	public String getUseNY() {
		return useNY;
	}
	public void setUseNY(String useNY) {
		this.useNY = useNY;
	}
	public String getDelNY() {
		return delNY;
	}
	public void setDelNY(String delNY) {
		this.delNY = delNY;
	}
	public String getCodeGroup_cgSeq() {
		return codeGroup_cgSeq;
	}
	public void setCodeGroup_cgSeq(String codeGroup_cgSeq) {
		this.codeGroup_cgSeq = codeGroup_cgSeq;
	}
	
	
	
	
}
