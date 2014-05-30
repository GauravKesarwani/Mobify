package com.cmpe281.app05;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="tenantVariant")
public class TenantVariants 
{
@Id
@GeneratedValue
@Column(name="tenantvariantid")
private String tenantvariantId;

@Column(name="variantName")
private String variantName;

@Column(name="selected")
private String variantSelected;

@Column(name="tid")
private int variantTenantid;

public String getVariantSelected() 
{
	return variantSelected;
}
public void setVariantSelected(String variantSelected) {
	this.variantSelected = variantSelected;
}
public int getVariantTenantid() {
	return variantTenantid;
}
public void setVariantTenantid(int variantTenantid) {
	this.variantTenantid = variantTenantid;
}

public String getVariantName() {
	return variantName;
}
public void setVariantName(String variantName) {
	this.variantName = variantName;
}

public String getTenantvariantId() {
	return tenantvariantId;
}
public void setTenantvariantId(String tenantvariantId) {
	this.tenantvariantId = tenantvariantId;
}
}
