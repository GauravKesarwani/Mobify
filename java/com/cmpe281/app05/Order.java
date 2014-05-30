package com.cmpe281.app05;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="orders")

public class Order {

	@Id 
	@GeneratedValue 
	@Column(name="orderid")
	private int orderid;
	@Column(name="prodid")
	private int prodid;
	@Column(name="custid")
	private int custid;
	public int getCustid() {
		return custid;
	}
	public void setCustid(int custid) {
		this.custid = custid;
	}
	public String getProdname() {
		return prodname;
	}
	public void setProdname(String prodname) {
		this.prodname = prodname;
	}
	@Column(name="tenantid")
	private int tenantid;
	@Column(name="price")
	private double price;
	@Column(name="quantity")
	private int quantity;
	@Column(name="status")
	private String status;
	@Column(name="prodname")
	private String prodname;
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public int getProdid() {
		return prodid;
	}
	public void setProdid(int prodid) {
		this.prodid = prodid;
	}
	public int getTenantid() {
		return tenantid;
	}
	public void setTenantid(int tenantid) {
		this.tenantid = tenantid;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	

}
	
	