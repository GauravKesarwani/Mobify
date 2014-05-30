package com.cmpe281.app05;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

	@Entity
	@Table(name="prod_spec")

	public class prod_spec {
	       @Id @GeneratedValue 
	       private int pid;
	       private int prod_id;
	       private String prod_name;
	       private String prod_type;
	       private String prod_colour;
	       private String prod_OS;
	       private String camera_res_front;
	       private String camera_res_rear;
	       private String internal_spec;
	       private String internal_mem;
	       private String display_size;
	       private String display_resolution;
		
	    public int getPid() {
			return pid;
		}
		public void setPid(int pid) {
			this.pid = pid;
		}
		public int getProd_id() {
			return prod_id;
		}
		public void setProd_id(int prod_id) {
			this.prod_id = prod_id;
		}
	    public String getProd_name() {
				return prod_name;
		}
		public void setProd_name(String prod_name) {
				this.prod_name = prod_name;
		}
		public String getProd_type() {
			return prod_type;
		}
		public void setProd_type(String prod_type) {
			this.prod_type = prod_type;
		}
		public String getProd_colour() {
			return prod_colour;
		}
		public void setProd_colour(String prod_colour) {
			this.prod_colour = prod_colour;
		}
		public String getProd_OS() {
			return prod_OS;
		}
		public void setProd_OS(String prod_OS) {
			this.prod_OS = prod_OS;
		}
		public String getCamera_res_front() {
			return camera_res_front;
		}
		public void setCamera_res_front(String camera_res_front) {
			this.camera_res_front = camera_res_front;
		}
		public String getCamera_res_rear() {
			return camera_res_rear;
		}
		public void setCamera_res_rear(String camera_res_rear) {
			this.camera_res_rear = camera_res_rear;
		}
		public String getInternal_spec() {
			return internal_spec;
		}
		public void setInternal_spec(String internal_spec) {
			this.internal_spec = internal_spec;
		}
		public String getInternal_mem() {
			return internal_mem;
		}
		public void setInternal_mem(String internal_mem) {
			this.internal_mem = internal_mem;
		}
		public String getDisplay_size() {
			return display_size;
		}
		public void setDisplay_size(String display_size) {
			this.display_size = display_size;
		}
		public String getDisplay_resolution() {
			return display_resolution;
		}
		public void setDisplay_resolution(String display_resolution) {
			this.display_resolution = display_resolution;
		}
	       
}
