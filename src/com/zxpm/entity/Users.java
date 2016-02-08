package com.zxpm.entity;


public class Users implements java.io.Serializable{
	private Integer userId;
	private String userName;
	private String password;
	private String telephone;
	private String address;
	
	public Users(){
		
	}	
	public Users(Integer userId, String userName, String password, String telephone, String address) {
		this.userId = userId;
		this.userName = userName;
		this.password = password;
		this.telephone = telephone;
		this.address = address;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
}
