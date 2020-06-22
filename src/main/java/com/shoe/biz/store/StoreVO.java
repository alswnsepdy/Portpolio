package com.shoe.biz.store;

public class StoreVO {
	
	private int sseq;
	private String sname;
	private String skind;
	private int sprice;
	private String scontent;
	private String simage;
	public int getSseq() {
		return sseq;
	}
	public void setSseq(int sseq) {
		this.sseq = sseq;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSkind() {
		return skind;
	}
	public void setSkind(String skind) {
		this.skind = skind;
	}
	public int getSprice() {
		return sprice;
	}
	public void setSprice(int sprice) {
		this.sprice = sprice;
	}
	public String getScontent() {
		return scontent;
	}
	public void setScontent(String scontent) {
		this.scontent = scontent;
	}
	public String getSimage() {
		return simage;
	}
	public void setSimage(String simage) {
		this.simage = simage;
	}
	@Override
	public String toString() {
		return "StoreVO [sseq=" + sseq + ", sname=" + sname + ", skind=" + skind + ", sprice=" + sprice + ", scontent="
				+ scontent + ", simage=" + simage + "]";
	}
	
	
}
