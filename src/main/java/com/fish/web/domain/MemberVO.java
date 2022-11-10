package com.fish.web.domain;

public class MemberVO {
	
	private String memberId;  	 // ȸ�� ���� ID
	private String memberPw;   	 // ȸ�� �н�����
	private String memberName;	 // ȸ�� �г���
	private String memberMail;   // ȸ�� �����ּ�
	private int memberHP;     	 // ȸ�� �ڵ�����ȣ
	private int adminCk;      	 // ������ üũ
	private int regDate;       	 // ���� ��� ��¥
	
	
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
