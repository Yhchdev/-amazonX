package com.amazon.entity;

public class News {
	private Long hn_id;//
	private String hn_title;//新闻标题
	private String hn_content;//新闻的内容
	private String hn_create_time;//创建时间
	
	public Long getHn_id() {
		return hn_id;
	}
	public void setHn_id(Long hn_id) {
		this.hn_id = hn_id;
	}
	public String getHn_title() {
		return hn_title;
	}
	public void setHn_title(String hn_title) {
		this.hn_title = hn_title;
	}
	public String getHn_content() {
		return hn_content;
	}
	public void setHn_content(String hn_content) {
		this.hn_content = hn_content;
	}
	public String getHn_create_time() {
		return hn_create_time;
	}
	public void setHn_create_time(String hn_create_time) {
		this.hn_create_time = hn_create_time;
	}
	@Override
	public String toString() {
		return "News [hn_id=" + hn_id + ", hn_title=" + hn_title + ", hn_content=" + hn_content + ", hn_create_time="
				+ hn_create_time + "]";
	}
	
}
