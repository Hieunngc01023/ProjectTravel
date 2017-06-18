package entities;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
@Table(name="COMMENT_BLOG")
@Entity
public class CommentBlog {
	
	
	@Column(name="ID")
	@GeneratedValue
	@Id
	private int idComment;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "DATE_COMMENT")
	private Date dateComment;
	
	@Column(name = "CONTENT", nullable = false, columnDefinition = "ntext")
	private String content;
	
	@JoinColumn(name="ID_USER")
	@ManyToOne
	private User user;
	
	@JoinColumn(name = "ID_BLOG")
	@ManyToOne
	private Blog blog;
	
	@OneToMany(mappedBy = "parentComment")
	private  List<SubCommentBlog> listSubcomment = new ArrayList<>();

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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Blog getBlog() {
		return blog;
	}

	public void setBlog(Blog blog) {
		this.blog = blog;
	}

	public List<SubCommentBlog> getListSubcomment() {
		return listSubcomment;
	}

	public void setListSubcomment(List<SubCommentBlog> listSubcomment) {
		this.listSubcomment = listSubcomment;
	}
	
}
