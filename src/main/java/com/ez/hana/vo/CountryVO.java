package com.ez.hana.vo;

public class CountryVO {

	String nameKo;
	String codeAlpha3;
	String codeAplha2;
	String nameEn;

	public String getNameKo() {
		return nameKo;
	}

	public void setNameKo(String nameKo) {
		this.nameKo = nameKo;
	}

	public String getCodeAlpha3() {
		return codeAlpha3;
	}

	public void setCodeAlpha3(String codeAlpha3) {
		this.codeAlpha3 = codeAlpha3;
	}

	public String getCodeAplha2() {
		return codeAplha2;
	}

	public void setCodeAplha2(String codeAplha2) {
		this.codeAplha2 = codeAplha2;
	}

	public String getNameEn() {
		return nameEn;
	}

	public void setNameEn(String nameEn) {
		this.nameEn = nameEn;
	}

	@Override
	public String toString() {
		return "CountryVO [nameKo=" + nameKo + ", codeAlpha3=" + codeAlpha3 + ", codeAplha2=" + codeAplha2 + ", nameEn="
				+ nameEn + "]";
	}

}
