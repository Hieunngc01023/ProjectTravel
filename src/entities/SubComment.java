package entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
@Table(name = "SUBCOMMENT")
@Entity
public class SubComment {
	
	
	@Column(name="ID_SUBCOMMENT")
	@GeneratedValue
	@Id
	private int idSubComment;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "DATE_COMMENT")
	private Date dateComment;
	
	public String getContent() {
		return content;
	}
	public Date getDateComment() {
		return dateComment;
	}
	public void setDateComment(Date dateComment) {
		this.dateComment = dateComment;
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
	public Tour getTour() {
		return tour;
	}
	public void setTour(Tour tour) {
		this.tour = tour;
	}
	@Column(name = "CONTENT", nullable = false,  columnDefinition = "NVARCHAR(500)")
	private String content;
	@JoinColumn(name="ID_USER")
	@ManyToOne
	private User user;
	
	@JoinColumn(name = "ID_TOUR")
	@ManyToOne
	private Tour tour;
	
	@JoinColumn(name ="ID_PARENT" )
	@ManyToOne
	private Comment parentComment;

	public int getIdSubComment() {
		return idSubComment;
	}
	public void setIdSubComment(int idSubComment) {
		this.idSubComment = idSubComment;
	}
	public Comment getParentComment() {
		return parentComment;
	}
	public void setParentComment(Comment parentComment) {
		this.parentComment = parentComment;
	}

}
