package com.shoe.biz.product;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {
	private int pseq;
	private String pname;
	private String kind;
	private int price;
	private String content;
	private String droppd;
	private String restockpd;
	private String image;
	private Date startdate;
	private Date enterdate;
	private Date enddate;
	// private MultipartFile uploadFile;

	public int getPseq() {
		return pseq;
	}

	public void setPseq(int pseq) {
		this.pseq = pseq;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDroppd() {
		return droppd;
	}

	public void setDroppd(String droppd) {
		this.droppd = droppd;
	}

	public String getRestockpd() {
		return restockpd;
	}

	public void setRestockpd(String restockpd) {
		this.restockpd = restockpd;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Date getStartdate() {
		return startdate;
	}

	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}

	public Date getEnterdate() {
		return enterdate;
	}

	public void setEnterdate(Date enterdate) {
		this.enterdate = enterdate;
	}

	public Date getEnddate() {
		return enddate;
	}

	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}

	@Override
	public String toString() {
		return "ProductVO [pseq=" + pseq + ", pname=" + pname + ", kind=" + kind + ", price=" + price + ", content="
				+ content + ", droppd=" + droppd + ", restockpd=" + restockpd + ", image=" + image + "]";
	}

}
