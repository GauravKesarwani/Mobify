	
package com.cmpe281.app05;

import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Id;

@Entity
@Table(name="product")

public class Mobile 
{
	@Id 
	@GeneratedValue 
	@Column(name="productid")
	private int productid;
	
	@Column(name="prod_name")
	private String prod_name;

	@Column(name="tenantid")
	private int tenantid;
	
	@Column(name="prod_img")
	private String prod_img;
	
	@Column(name="category")
	private String category;
	
	@Column(name="price")
	private String price;
	
	public int getTenantid() {
		return tenantid;
	}
	public void setTenantid(int tenantid) {
		this.tenantid = tenantid;
	}
	
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	

	
	
	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	
	public String getProd_name() {
		return prod_name;
	}
	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}

	public String getProd_img() {
		return prod_img;
	}
	public void setProd_img(String prod_img) {
		this.prod_img = prod_img;
	}
	

	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
}
	

