package com.pack.controller;

public class Contact {
	public String getCno() {
		return cno;
	}
	public void setCno(String cno) {
		this.cno = cno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String[] getProp() {
		return prop;
	}
	public void setProp(String[] prop) {
		this.prop = prop;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	String  cno;
	String name;
	String gender;
	String [] prop;
	String city;
}
