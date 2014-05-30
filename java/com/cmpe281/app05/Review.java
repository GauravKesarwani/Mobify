package com.cmpe281.app05;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="review")

public class Review 
{
	@Id
	@Column(name="emailid")
	private String email;
	
	@Column(name="fname")
	private String firstname;
	
	@Column(name="lname")
	private String lastname;
	
	@Column(name="modelno")
	private int modelno;
	
	@Column(name="message")
	private String message;
	
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
	public int getModelno() {
		return modelno;
	}
	public void setModelno(int modelno) {
		this.modelno = modelno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	
	
	
	
}
