package com.ez.hana.vo;

public class CertFileVO {

	int fid;
	int certId;
	String type;
	String orName;
	String stName;

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public int getCertId() {
		return certId;
	}

	public void setCertId(int certId) {
		this.certId = certId;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getOrName() {
		return orName;
	}

	public void setOrName(String orName) {
		this.orName = orName;
	}

	public String getStName() {
		return stName;
	}

	public void setStName(String stName) {
		this.stName = stName;
	}
}
