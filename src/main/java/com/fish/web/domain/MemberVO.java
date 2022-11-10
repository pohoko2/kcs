package com.fish.web.domain;

public class MemberVO {
	
	private String memberId;  	 // 회원 가입 ID
	private String memberPw;   	 // 회원 패스워드
	private String memberName;	 // 회원 닉네임
	private String memberMail;   // 회원 메일주소
	private int memberHP;     	 // 회원 핸드폰번호
	private int adminCk;      	 // 관리자 체크
	private int regDate;       	 // 가입 등록 날짜
	
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPw() {
		return memberPw;
	}
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberMail() {
		return memberMail;
	}
	public void setMemberMail(String memberMail) {
		this.memberMail = memberMail;
	}
	public int getMemberHP() {
		return memberHP;
	}
	public void setMemberHP(int memberHP) {
		this.memberHP = memberHP;
	}
	public int getAdminCk() {
		return adminCk;
	}
	public void setAdminCk(int adminCk) {
		this.adminCk = adminCk;
	}
	public int getRegDate() {
		return regDate;
	}
	public void setRegDate(int regDate) {
		this.regDate = regDate;
	}
	
	@Override
	public String toString() {
		return "memberVO [memberId=" + memberId + ", memberPw=" + memberPw + ", memberName=" + memberName
				+ ", memberMail=" + memberMail + ", memberHP=" + memberHP + ", adminCk=" + adminCk + ", regDate="
				+ regDate + "]";
	}
		
}
