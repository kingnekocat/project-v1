package com.shc.pt.community;

import java.util.Date;

public class Community {

	private int c_no;
	private String c_writer;
	private String c_title;
	private String c_txt;
	private String c_photo;
	private Date c_date ;
	
	public Community() {
		// TODO Auto-generated constructor stub
	}

	public Community(int c_no, String c_writer, String c_title, String c_txt, String c_photo, Date c_date) {
		super();
		this.c_no = c_no;
		this.c_writer = c_writer;
		this.c_title = c_title;
		this.c_txt = c_txt;
		this.c_photo = c_photo;
		this.c_date = c_date;
	}

	public int getC_no() {
		return c_no;
	}

	public void setC_no(int c_no) {
		this.c_no = c_no;
	}

	public String getC_writer() {
		return c_writer;
	}

	public void setC_writer(String c_writer) {
		this.c_writer = c_writer;
	}

	public String getC_title() {
		return c_title;
	}

	public void setC_title(String c_title) {
		this.c_title = c_title;
	}

	public String getC_txt() {
		return c_txt;
	}

	public void setC_txt(String c_txt) {
		this.c_txt = c_txt;
	}

	public String getC_photo() {
		return c_photo;
	}

	public void setC_photo(String c_photo) {
		this.c_photo = c_photo;
	}

	public Date getC_date() {
		return c_date;
	}

	public void setC_date(Date c_date) {
		this.c_date = c_date;
	}
	
}
