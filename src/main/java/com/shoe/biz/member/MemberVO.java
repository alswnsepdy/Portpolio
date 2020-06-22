package com.shoe.biz.member;

public class MemberVO {
	private String id;
	private String pwd;
	private String address;
	private String email;
	private String name;
	private String phone;
	private int power;
	

	public int getPower() {
		return power;
	}
	public void setPower(int power) {
		this.power = power;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pwd=" + pwd + ", address=" + address + ", email=" + email + ", name=" + name
				+ ", phone=" + phone + ", power=" + power + "]";
	}
	
	
	
	
	
	
	
}
