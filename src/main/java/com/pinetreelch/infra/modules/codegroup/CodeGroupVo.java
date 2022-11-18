package com.pinetreelch.infra.modules.codegroup;

import com.pinetreelch.infra.common.base.BaseVo;

public class CodeGroupVo extends BaseVo{
	
	//vo는 쿼리에 던져주는 데이터
	private String shValue;
	private Integer shOption;
	private Integer shUse;
	private Integer shOptionDate;
	
	private String shDateStart;
	private String shDateEnd;
	
	private String cgSeq;
	
	private Integer useNY;
	private Integer delNY;
	
	private String cgName;
	private String cgKor;
	
	private Integer[] checkboxSeqArray;
	
	
	
	public Integer[] getCheckboxSeqArray() {
		return checkboxSeqArray;
	}

	public void setCheckboxSeqArray(Integer[] checkboxSeqArray) {
		this.checkboxSeqArray = checkboxSeqArray;
	}

	public String getShDateStart() {
		return shDateStart;
	}

	public void setShDateStart(String shDateStart) {
		this.shDateStart = shDateStart;
	}

	public String getShDateEnd() {
		return shDateEnd;
	}

	public void setShDateEnd(String shDateEnd) {
		this.shDateEnd = shDateEnd;
	}

	public Integer getShOptionDate() {
		return shOptionDate;
	}

	public void setShOptionDate(Integer shOptionDate) {
		this.shOptionDate = shOptionDate;
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


