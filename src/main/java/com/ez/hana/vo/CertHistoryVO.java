package com.ez.hana.vo;

public class CertHistoryVO {

	String certId;
	String applicantId;
	String applicantNm;
	String applicantNtnKo;
	String applicantNtnEn;
	String filEname;
	String status;
	String regDate;

	public String getCertId() {
		return certId;
	}

	public void setCertId(String certId) {
		this.certId = certId;
	}

	public String getApplicantId() {
		return applicantId;
	}

	public void setApplicantId(String applicantId) {
		this.applicantId = applicantId;
	}

	public String getApplicantNm() {
		return applicantNm;
	}

	public void setApplicantNm(String applicantNm) {
		this.applicantNm = applicantNm;
	}

	public String getApplicantNtnKo() {
		return applicantNtnKo;
	}

	public void setApplicantNtnKo(String applicantNtnKo) {
		this.applicantNtnKo = applicantNtnKo;
	}

	public String getApplicantNtnEn() {
		return applicantNtnEn;
	}

	public void setApplicantNtnEn(String applicantNtnEn) {
		this.applicantNtnEn = applicantNtnEn;
	}

	public String getFilEname() {
		return filEname;
	}

	public void setFilEname(String filEname) {
		this.filEname = filEname;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "CertHistoryVO [certId=" + certId + ", applicantId=" + applicantId + ", applicantNm=" + applicantNm
				+ ", applicantNtnKo=" + applicantNtnKo + ", applicantNtnEn=" + applicantNtnEn + ", filEname=" + filEname
				+ ", status=" + status + ", regDate=" + regDate + "]";
	}

}
