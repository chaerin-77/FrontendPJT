package com.memoravel.attraction.dto;

public class AttractionDetail {
	private int content_id;
	private String title;
	private String addr1;
	private String addr2;
	private String first_image;
	private String latitude;
	private String longitude;
	private String overview;
	

	public AttractionDetail() {
		super();
	}


	public AttractionDetail(int content_id, String title, String addr1, String addr2, String first_image,
			String latitude, String longitude, String overview) {
		super();
		this.content_id = content_id;
		this.title = title;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.first_image = first_image;
		this.latitude = latitude;
		this.longitude = longitude;
		this.overview = overview;
	}


	public int getContent_id() {
		return content_id;
	}


	public void setContent_id(int content_id) {
		this.content_id = content_id;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
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


	public String getFirst_image() {
		return first_image;
	}


	public void setFirst_image(String first_image) {
		this.first_image = first_image;
	}


	public String getLatitude() {
		return latitude;
	}


	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}


	public String getLongitude() {
		return longitude;
	}


	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public String getOverview() {
		return overview;
	}


	public void setOverview(String overview) {
		this.overview = overview;
	}
}
