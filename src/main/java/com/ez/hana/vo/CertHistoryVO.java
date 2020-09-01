package com.ez.hana.vo;

public class CertHistoryVO {

	String certId; // 신청번호
	String applicant; // 신청자
	String regFid; // 
	String visaFid; // 비자파일 아이디
	String status; // 처리상태

	public String getCertId() {
		return certId;
	}

	public void setCertId(String certId) {
		this.certId = certId;
	}

	public String getApplicant() {
		return applicant;
	}

	public void setApplicant(String applicant) {
		this.applicant = applicant;
	}

	public String getRegFid() {
		return regFid;
	}

	public void setRegFid(String regFid) {
		this.regFid = regFid;
	}

	public String getVisaFid() {
		return visaFid;
	}

	public void setVisaFid(String visaFid) {
		this.visaFid = visaFid;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}



}
