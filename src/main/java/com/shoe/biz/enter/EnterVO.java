package com.shoe.biz.enter;

import java.util.Date;

public class EnterVO {
	private int eseq;
	private String id;
	private String name;
	private int condition;



	private String pname;
	private int price;
	private int pseq;
	private int psize;
	private Date enterdate;

	public int getEseq() {
		return eseq;
	}

	public void setEseq(int eseq) {
		this.eseq = eseq;
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

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getCondition() {
		return condition;
	}

	public void setCondition(int condition) {
		this.condition = condition;
	}

	public int getPseq() {
		return pseq;
	}

	public void setPseq(int pseq) {
		this.pseq = pseq;
	}

	public int getPsize() {
		return psize;
	}

	public void setPsize(int psize) {
		this.psize = psize;
	}


	public Date getEnterdate() {
		return enterdate;
	}

	public void setEnterdate(Date enterdate) {
		this.enterdate = enterdate;

	}

	@Override
	public String toString() {
		return "EnterVO [eseq=" + eseq + ", id=" + id + ", name=" + name + ", condition=" + condition + ", pname="
				+ pname + ", price=" + price + ", pseq=" + pseq + ", psize=" + psize + ", enterdate=" + enterdate + "]";
	}
	
	
	
}