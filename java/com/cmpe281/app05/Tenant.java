package com.cmpe281.app05;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tenant")

public class Tenant 
{
	
	@Id 
	@GeneratedValue 
	@Column(name="tenant_id")
	private int tenant_id;
	@Column(name="Fname")
	private String firstname;
	@Column(name="Lname")
	private String lastname;
	@Column(name="emailid")
	private String email;
	@Column(name="company")
	private String tenantCompany;
	@Column(name="address")
	private String address;
	
	@Column(name="phoneno")
	private String phone;
	
	@Column(name="username")
	private String username;
	
	@Column(name="password")
	private String password;
	
	
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getTenantCompany() {
		return tenantCompany;
	}
	public void setTenantCompany(String tenantCompany) {
		this.tenantCompany = tenantCompany;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getTenant_id() {
		return tenant_id;
	}
	public void setTenant_id(int tenant_id) {
		this.tenant_id = tenant_id;
	
	}
}

