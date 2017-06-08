package entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Table(name="TABLE")
@Entity
public class Blog {
	@Column(name= "ID")
	@GeneratedValue
	@Id
	private int idBlog;
	@Lob
	@Column(name = "CONTENT", nullable = false)
	private String content;
	
	@Column(name = "TITLE" , nullable = false)
	private String title;
	
	@Column(name= "IMAGE_TITLE", nullable = false)
	private String imageTitle;
	
	@Temporal(TemporalType.DATE)
	@Column(name= "TIME_CREATED", nullable = false)
	private Date timeCreated;
	
	@ManyToOne
	private User user;

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

	public Date getTimeCreated() {
		return timeCreated;
	}

	public void setTimeCreated(Date timeCreated) {
		this.timeCreated = timeCreated;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
