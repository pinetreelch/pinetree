package com.pinetreelch.infra.modules.codegroup;

import com.pinetreelch.infra.common.base.BaseVo;

public class CodeGroupVo extends BaseVo{
	
	//vo는 쿼리에 던져주는 데이터
	private String shValue;
	private Integer shOption;
	private Integer shUse;
	
	private Integer useornot;
	private Integer delornot;
	
	private String cgName;
	private String cgKor;
	
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

	public Integer getUseornot() {
		return useornot;
	}

	public void setUseornot(Integer useornot) {
		this.useornot = useornot;
	}

	public Integer getDelornot() {
		return delornot;
	}

	public void setDelornot(Integer delornot) {
		this.delornot = delornot;
	}

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


