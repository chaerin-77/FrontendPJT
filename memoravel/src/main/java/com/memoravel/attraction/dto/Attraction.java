package com.memoravel.attraction.dto;

public class Attraction {
	private String title;
	private int content_id;
	private int content_type_id;
	private String addr1;
	private String addr2;
	private String zipcode;
	private String tel;
	private String first_image;
	private String first_image2;
	private int readcount;
	private int sido_code;
	private int gugun_code;
	private String latitude;
	private int mlevel;
	private String longitude;
	

	public Attraction() {
		super();
	}

	public Attraction(String title, int content_id, int content_type_id, String addr1, String addr2, String zipcode,
			String tel, String first_image, String first_image2, int readcount, int sido_code, int gugun_code,
			String latitude, int mlevel, String longitude) {
		super();
		this.title = title;
		this.content_id = content_id;
		this.content_type_id = content_type_id;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.zipcode = zipcode;
		this.tel = tel;
		this.first_image = first_image;
		this.first_image2 = first_image2;
		this.readcount = readcount;
		this.sido_code = sido_code;
		this.gugun_code = gugun_code;
		this.latitude = latitude;
		this.mlevel = mlevel;
		this.longitude = longitude;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getContent_id() {
		return content_id;
	}
	public void setContent_id(int content_id) {
		this.content_id = content_id;
	}
	public int getContent_type_id() {
		return content_type_id;
	}
	public void setContent_type_id(int content_type_id) {
		this.content_type_id = content_type_id;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getFirst_image() {
		return first_image;
	}
	public void setFirst_image(String first_image) {
		this.first_image = first_image;
	}
	public String getFirst_image2() {
		return first_image2;
	}
	public void setFirst_image2(String first_image2) {
		this.first_image2 = first_image2;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public int getSido_code() {
		return sido_code;
	}
	public void setSido_code(int sido_code) {
		this.sido_code = sido_code;
	}
	public int getGugun_code() {
		return gugun_code;
	}
	public void setGugun_code(int gugun_code) {
		this.gugun_code = gugun_code;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public int getMlevel() {
		return mlevel;
	}
	public void setMlevel(int mlevel) {
		this.mlevel = mlevel;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	
	@Override
	public String toString() {
		return "Attraction [title=" + title + ", content_id=" + content_id + ", content_type_id=" + content_type_id
				+ ", addr1=" + addr1 + ", addr2=" + addr2 + ", zipcode=" + zipcode + ", tel=" + tel + ", first_image="
				+ first_image + ", first_image2=" + first_image2 + ", readcount=" + readcount + ", sido_code="
				+ sido_code + ", gugun_code=" + gugun_code + ", latitude=" + latitude + ", mlevel=" + mlevel
				+ ", longitude=" + longitude + "]";
	}
	
}
