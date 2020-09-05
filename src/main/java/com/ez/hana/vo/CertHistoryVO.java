package com.ez.hana.vo;

public class CertHistoryVO {

	String certId;
	String applicantId;
	String applicantNm;
	String applicantNtn;
	String fileName;
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

	public String getApplicantNtn() {
		return applicantNtn;
	}

	public void setApplicantNtn(String applicantNtn) {
		this.applicantNtn = applicantNtn;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
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
				+ ", applicantNtn=" + applicantNtn + ", fileName=" + fileName + ", status=" + status + ", regDate="
				+ regDate + "]";
	}

}
