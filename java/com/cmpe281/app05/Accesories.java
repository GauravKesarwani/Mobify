package com.cmpe281.app05;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="accesories")
public class Accesories {

	@Id 
	@GeneratedValue 
	@Column(name="accessid")
	int accessid;
	@Column(name="name")
	String name;
	@Column(name="specification")
	String specification;
	@Column(name="price")
	String price;
	@Column(name="tenantid")
	int tenantid;
	
	@Column(name="image")
	String image;
	
	public int getAccessid() {
		return accessid;
	}
	public void setAccessid(int accessid) {
		this.accessid = accessid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSpecification() {
		return specification;
	}
	public void setSpecification(String specification) {
		this.specification = specification;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public int getTenantid() {
		return tenantid;
	}
	public void setTenantid(int tenantid) {
		this.tenantid = tenantid;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
	
}
