package com.shc.pt.member;

public class Member {

	private String m_id; 
	private String m_pw; 
	private String m_photo; 
	private String m_name;
	private String m_nickname; 
	private String m_addr;
	private String m_fav; 
	
	public Member() {
		// TODO Auto-generated constructor stub
	}

	public Member(String m_id, String m_pw, String m_photo, String m_name, String m_nickname, String m_addr,
			String m_fav) {
		super();
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_photo = m_photo;
		this.m_name = m_name;
		this.m_nickname = m_nickname;
		this.m_addr = m_addr;
		this.m_fav = m_fav;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_pw() {
		return m_pw;
	}

	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}

	public String getM_photo() {
		return m_photo;
	}

	public void setM_photo(String m_photo) {
		this.m_photo = m_photo;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_nickname() {
		return m_nickname;
	}

	public void setM_nickname(String m_nickname) {
		this.m_nickname = m_nickname;
	}

	public String getM_addr() {
		return m_addr;
	}

	public void setM_addr(String m_addr) {
		this.m_addr = m_addr;
	}

	public String getM_fav() {
		return m_fav;
	}

	public void setM_fav(String m_fav) {
		this.m_fav = m_fav;
	}
	
}
