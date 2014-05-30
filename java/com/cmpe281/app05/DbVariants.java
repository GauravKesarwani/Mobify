package com.cmpe281.app05;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="variants")
public class DbVariants 
{
@Column(name="vName")
private String Vname;
@Id
@Column(name= "idvariant")
private int vid;

public String getVname() {
	return Vname;
}
public void setVname(String vname) {
	Vname = vname;
}
public int getVid() {
	return vid;
}
public void setVid(int vid) {
	this.vid = vid;
}



}
