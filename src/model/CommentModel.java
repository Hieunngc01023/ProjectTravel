package model;

import java.util.Date;

public class CommentModel {
	private int idComment;
	private Date dateComment;
	private String nameUser;
	private String content;
	public int getIdComment() {
		return idComment;
	}
	public void setIdComment(int idComment) {
		this.idComment = idComment;
	}
	public Date getDateComment() {
		return dateComment;
	}
	public void setDateComment(Date dateComment) {
		this.dateComment = dateComment;
	}
	public String getNameUser() {
		return nameUser;
	}
	public void setNameUser(String nameUser) {
		this.nameUser = nameUser;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	

}
