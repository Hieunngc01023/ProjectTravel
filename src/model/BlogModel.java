package model;

import java.util.Date;

public class BlogModel {
	public String getTimeCreated() {
		return timeCreated;
	}
	private int idBlog;
	private String content;
	private String title;
	private String imageTitle;
	private String timeCreated;
	private String nameCreate;
	
	public String getNameCreate() {
		return nameCreate;
	}
	public void setNameCreate(String nameCreate) {
		this.nameCreate = nameCreate;
	}
	public void setTimeCreated(String timeCreated) {
		this.timeCreated = timeCreated;
	}
	public int getIdBlog() {
		return idBlog;
	}
	public void setIdBlog(int idBlog) {
		this.idBlog = idBlog;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImageTitle() {
		return imageTitle;
	}
	public void setImageTitle(String imageTitle) {
		this.imageTitle = imageTitle;
	}
	
}
