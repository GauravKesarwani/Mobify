package com.cmpe281.app05;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="customer")

public class Customer {

	@Id 
	@GeneratedValue 
	@Column(name="Cust_id")
	private int cust_id;
	@Column(name="Fname")
	private String firstname;
	@Column(name="Lname")
	private String lastname;
	@Column(name="Emailid")
	private String emailid;
	@Column(name="Address")
	private String address;
	@Column(name="Phoneno")
	private String phone;
	@Column(name="Tenant_id")
	private int tenant;
	@Column(name="username")
	private String username;
	@Column(name="password")
	private String password;
	public char[] getTenant_id() {
		// TODO Auto-generated method stub
		return null;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getTenant() {
		return tenant;
	}
	public void setTenant(int tenant) {
		this.tenant = tenant;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
}
