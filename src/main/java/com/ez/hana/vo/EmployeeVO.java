package com.ez.hana.vo;

public class EmployeeVO {

	String eid;
	String password;
	String branch;

	public String getEid() {
		return eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	@Override
	public String toString() {
		return "EmployeeVO [eid=" + eid + ", password=" + password + ", branch=" + branch + "]";
	}

}
