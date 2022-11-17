package com.git.model.vo;

public class Member {
	private String memberId;
	private String memberPwd;
	private String memberName;
	
	public Member() {
		// TODO Auto-generated constructor stub
	}

	protected String getMemberId() {
		return memberId;
	}

	protected void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	protected String getMemberPwd() {
		return memberPwd;
	}

	protected void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}

	protected String getMemberName() {
		return memberName;
	}

	protected void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	
}
