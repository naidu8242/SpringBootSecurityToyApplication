package in.bushansirgur.springbootcrud.springbootcrudapi.dto;

import java.io.Serializable;

public class ToysLoginFormsDTO implements Serializable{
	
	private String email;
	private String password;
	private String confirmPassword;
	private String userName;
	private String firstName;
	private String lastName;
	private String fullName;
	private String gender;
	private String department;
	
	//Register 
	private String registerName;
	private String registerEmail;
	private String registerPassword;
	private String registerMobileNumber;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getFullName() {
		if(!"fullName".isEmpty()) {
			return fullName;
		}else {
			if("lastName".isEmpty()) {
				fullName = firstName + lastName;
			}else {
				fullName = firstName;
			}
			return fullName;
		}
	 
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getRegisterName() {
		return registerName;
	}
	public void setRegisterName(String registerName) {
		this.registerName = registerName;
	}
	public String getRegisterEmail() {
		return registerEmail;
	}
	public void setRegisterEmail(String registerEmail) {
		this.registerEmail = registerEmail;
	}
	public String getRegisterPassword() {
		return registerPassword;
	}
	public void setRegisterPassword(String registerPassword) {
		this.registerPassword = registerPassword;
	}
	public String getRegisterMobileNumber() {
		return registerMobileNumber;
	}
	public void setRegisterMobileNumber(String registerMobileNumber) {
		this.registerMobileNumber = registerMobileNumber;
	}
	 
}
