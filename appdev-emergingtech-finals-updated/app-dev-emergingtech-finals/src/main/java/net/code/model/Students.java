package net.code.model;

import org.springframework.stereotype.Component;

@Component
public class Students {
	private String password;
	private String emailAddress;
	private String city;
	private String course;
	private String phoneNumber;
	private String fullName;
	private String confirmPW;
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getConfirmPW() {
		return confirmPW;
	}
	public void setConfirmPW(String confirmPW) {
		this.confirmPW = confirmPW;
	}
}
