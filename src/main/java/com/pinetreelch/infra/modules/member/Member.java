package com.pinetreelch.infra.modules.member;

import org.springframework.web.multipart.MultipartFile;


import com.pinetreelch.infra.common.base.Base;

public class Member extends Base{
	private String ifmmSeq;
	private String ifmmName;
	private Integer gender;
	
	private String ifmmId;
	private String ifmmEmail;
	private Integer ifmmEmaildom;
	
	private String ifmmPwd;
	private String ifmmTel;
	
	private Integer ifmmtelCo;
	private Integer ifmmMktemailNY;
	private Integer ifmmMktappAlertNY;
	private Integer ifmmMktapppushnight;
	
	private String ifmmDob;
	
	private Integer mainkey;
	
	private String siteadd;
	
	private MultipartFile[] ifmmUploadedFile;
	
	
	private Integer tdwlSeq;
	private Integer tradBook_tdbkSeq;
	private String urllarge;
	private String tdbkBookTitle;
	
	private Integer tdbkSales;
	private Integer iframMember_ifmmSeq;
	
	private Integer tdbkathSeq;
	private Integer tradAuthor_tdatSeq;
	private String tdauName;

	private Integer tdbkSeq;
	
	private Integer cartSeq;
	
	
	// buy 
	
	private String buyinfoSeq;
	private String date;
	private String orderuuid;
	private String means;
	private String totalprice;
	
	// buydetail
	
	private String buydetailSeq;
	private String bookseq;
	private String buy_buyinfoSeq;
	
	
	private Integer[] checkboxSeqArray;
	
	
	
	public Integer[] getCheckboxSeqArray() {
		return checkboxSeqArray;
	}
	public void setCheckboxSeqArray(Integer[] checkboxSeqArray) {
		this.checkboxSeqArray = checkboxSeqArray;
	}
	public String getBuydetailSeq() {
		return buydetailSeq;
	}
	public void setBuydetailSeq(String buydetailSeq) {
		this.buydetailSeq = buydetailSeq;
	}
	public String getBookseq() {
		return bookseq;
	}
	public void setBookseq(String bookseq) {
		this.bookseq = bookseq;
	}
	public String getBuy_buyinfoSeq() {
		return buy_buyinfoSeq;
	}
	public void setBuy_buyinfoSeq(String buy_buyinfoSeq) {
		this.buy_buyinfoSeq = buy_buyinfoSeq;
	}
	public String getBuyinfoSeq() {
		return buyinfoSeq;
	}
	public void setBuyinfoSeq(String buyinfoSeq) {
		this.buyinfoSeq = buyinfoSeq;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getOrderuuid() {
		return orderuuid;
	}
	public void setOrderuuid(String orderuuid) {
		this.orderuuid = orderuuid;
	}
	public String getMeans() {
		return means;
	}
	public void setMeans(String means) {
		this.means = means;
	}
	public String getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(String totalprice) {
		this.totalprice = totalprice;
	}
	
	public Integer getCartSeq() {
		return cartSeq;
	}
	public void setCartSeq(Integer cartSeq) {
		this.cartSeq = cartSeq;
	}
	
	public Integer getTdbkSeq() {
		return tdbkSeq;
	}
	public void setTdbkSeq(Integer tdbkSeq) {
		this.tdbkSeq = tdbkSeq;
	}
	public Integer getTdbkathSeq() {
		return tdbkathSeq;
	}
	public void setTdbkathSeq(Integer tdbkathSeq) {
		this.tdbkathSeq = tdbkathSeq;
	}
	public Integer getTradAuthor_tdatSeq() {
		return tradAuthor_tdatSeq;
	}
	public void setTradAuthor_tdatSeq(Integer tradAuthor_tdatSeq) {
		this.tradAuthor_tdatSeq = tradAuthor_tdatSeq;
	}
	public String getTdauName() {
		return tdauName;
	}
	public void setTdauName(String tdauName) {
		this.tdauName = tdauName;
	}
	public Integer getTdwlSeq() {
		return tdwlSeq;
	}
	public void setTdwlSeq(Integer tdwlSeq) {
		this.tdwlSeq = tdwlSeq;
	}
	public Integer getTradBook_tdbkSeq() {
		return tradBook_tdbkSeq;
	}
	public void setTradBook_tdbkSeq(Integer tradBook_tdbkSeq) {
		this.tradBook_tdbkSeq = tradBook_tdbkSeq;
	}
	public String getUrllarge() {
		return urllarge;
	}
	public void setUrllarge(String urllarge) {
		this.urllarge = urllarge;
	}
	public String getTdbkBookTitle() {
		return tdbkBookTitle;
	}
	public void setTdbkBookTitle(String tdbkBookTitle) {
		this.tdbkBookTitle = tdbkBookTitle;
	}
	public Integer getTdbkSales() {
		return tdbkSales;
	}
	public void setTdbkSales(Integer tdbkSales) {
		this.tdbkSales = tdbkSales;
	}
	public Integer getIframMember_ifmmSeq() {
		return iframMember_ifmmSeq;
	}
	public void setIframMember_ifmmSeq(Integer iframMember_ifmmSeq) {
		this.iframMember_ifmmSeq = iframMember_ifmmSeq;
	}
	public String getSiteadd() {
		return siteadd;
	}
	public void setSiteadd(String siteadd) {
		this.siteadd = siteadd;
	}
	public Integer getMainkey() {
		return mainkey;
	}
	public void setMainkey(Integer mainkey) {
		this.mainkey = mainkey;
	}
	public MultipartFile[] getIfmmUploadedFile() {
		return ifmmUploadedFile;
	}
	public void setIfmmUploadedFile(MultipartFile[] ifmmUploadedFile) {
		this.ifmmUploadedFile = ifmmUploadedFile;
	}
	
	public String getIfmmDob() {
		return ifmmDob;
	}
	public void setIfmmDob(String ifmmDob) {
		this.ifmmDob = ifmmDob;
	}
	public String getIfmmSeq() {
		return ifmmSeq;
	}
	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}
	public String getIfmmName() {
		return ifmmName;
	}
	public void setIfmmName(String ifmmName) {
		this.ifmmName = ifmmName;
	}
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public String getIfmmId() {
		return ifmmId;
	}
	public void setIfmmId(String ifmmId) {
		this.ifmmId = ifmmId;
	}
	public String getIfmmEmail() {
		return ifmmEmail;
	}
	public void setIfmmEmail(String ifmmEmail) {
		this.ifmmEmail = ifmmEmail;
	}
	public Integer getIfmmEmaildom() {
		return ifmmEmaildom;
	}
	public void setIfmmEmaildom(Integer ifmmEmaildom) {
		this.ifmmEmaildom = ifmmEmaildom;
	}
	public String getIfmmPwd() {
		return ifmmPwd;
	}
	public void setIfmmPwd(String ifmmPwd) {
		this.ifmmPwd = ifmmPwd;
	}
	public String getIfmmTel() {
		return ifmmTel;
	}
	public void setIfmmTel(String ifmmTel) {
		this.ifmmTel = ifmmTel;
	}
	public Integer getIfmmtelCo() {
		return ifmmtelCo;
	}
	public void setIfmmtelCo(Integer ifmmtelCo) {
		this.ifmmtelCo = ifmmtelCo;
	}
	public Integer getIfmmMktemailNY() {
		return ifmmMktemailNY;
	}
	public void setIfmmMktemailNY(Integer ifmmMktemailNY) {
		this.ifmmMktemailNY = ifmmMktemailNY;
	}
	public Integer getIfmmMktappAlertNY() {
		return ifmmMktappAlertNY;
	}
	public void setIfmmMktappAlertNY(Integer ifmmMktappAlertNY) {
		this.ifmmMktappAlertNY = ifmmMktappAlertNY;
	}
	public Integer getIfmmMktapppushnight() {
		return ifmmMktapppushnight;
	}
	public void setIfmmMktapppushnight(Integer ifmmMktapppushnight) {
		this.ifmmMktapppushnight = ifmmMktapppushnight;
	}
	
	
	
	
}
