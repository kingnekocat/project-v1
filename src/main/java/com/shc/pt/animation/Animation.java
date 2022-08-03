package com.shc.pt.animation;

public class Animation {

	private int a_no; 
	private String a_title; 
	private String a_txt; 
	private String a_photo; 
	private String a_genre; 
	
	public Animation() {
		// TODO Auto-generated constructor stub
	}

	public Animation(int a_no, String a_title, String a_txt, String a_photo, String a_genre) {
		super();
		this.a_no = a_no;
		this.a_title = a_title;
		this.a_txt = a_txt;
		this.a_photo = a_photo;
		this.a_genre = a_genre;
	}

	public int getA_no() {
		return a_no;
	}

	public void setA_no(int a_no) {
		this.a_no = a_no;
	}

	public String getA_title() {
		return a_title;
	}

	public void setA_title(String a_title) {
		this.a_title = a_title;
	}

	public String getA_txt() {
		return a_txt;
	}

	public void setA_txt(String a_txt) {
		this.a_txt = a_txt;
	}

	public String getA_photo() {
		return a_photo;
	}

	public void setA_photo(String a_photo) {
		this.a_photo = a_photo;
	}

	public String getA_genre() {
		return a_genre;
	}

	public void setA_genre(String a_genre) {
		this.a_genre = a_genre;
	}
	
}
