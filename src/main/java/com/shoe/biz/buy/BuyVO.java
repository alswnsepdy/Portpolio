package com.shoe.biz.buy;

import java.util.Date;

public class BuyVO {
	private int bseq;
	private String id;
	private String name;
	private String sname;
	private String ssize;
	private int sseq;
	private int sprice;
	private int bcondition;
	private int quantity;
	private String pmethod;
	private String buyprice;
	private String simage;
	private Date buydate;
	
	public String getSimage() {
		return simage;
	}
	public void setSimage(String simage) {
		this.simage = simage;
	}
	public String getSsize() {
		return ssize;
	}
	public void setSsize(String ssize) {
		this.ssize = ssize;
	}
	public String getBuyprice() {
		return buyprice;
	}
	public void setBuyprice(String buyprice) {
		this.buyprice = buyprice;
	}
	public int getBseq() {
		return bseq;
	}
	public void setBseq(int bseq) {
		this.bseq = bseq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public int getSseq() {
		return sseq;
	}
	public void setSseq(int sseq) {
		this.sseq = sseq;
	}
	public int getSprice() {
		return sprice;
	}
	public void setSprice(int sprice) {
		this.sprice = sprice;
	}
	public int getBcondition() {
		return bcondition;
	}
	public void setBcondition(int bcondition) {
		this.bcondition = bcondition;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getPmethod() {
		return pmethod;
	}
	public void setPmethod(String pmethod) {
		this.pmethod = pmethod;
	}
	
	public Date getBuydate() {
		return buydate;
	}
	public void setBuydate(Date buydate) {
		this.buydate = buydate;
	}
	
	@Override
	public String toString() {
		return "BuyVO [bseq=" + bseq + ", id=" + id + ", name=" + name + ", sname=" + sname + ", ssize=" + ssize
				+ ", sseq=" + sseq + ", sprice=" + sprice + ", bcondition=" + bcondition + ", quantity=" + quantity
				+ ", pmethod=" + pmethod + ", buyprice=" + buyprice + ", simage=" + simage + ", buydate=" + buydate
				+ "]";
	}
	
	
	
	
	
	
}
