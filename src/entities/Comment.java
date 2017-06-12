package entities;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
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
@Cache(usage= CacheConcurrencyStrategy.READ_WRITE)
@Table(name= "COMMENT")
@Entity
public class Comment {
	@Column(name="ID")
	@GeneratedValue
	@Id
	private int idComment;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "DATE_COMMENT")
	private Date dateComment;
	public int getIdComment() {
		return idComment;
	}
	public Date getDateComment() {
		return dateComment;
	}
	public void setDateComment(Date dateComment) {
		this.dateComment = dateComment;
	}
	public void setIdComment(int idComment) {
		this.idComment = idComment;
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
	public Tour getTour() {
		return tour;
	}
	
	public void setTour(Tour tour) {
		this.tour = tour;
	}
	@Column(name = "CONTENT", nullable = false)
	@Lob
	private String content;
	@JoinColumn(name="ID_USER")
	@ManyToOne
	private User user;
	

	public List<SubComment> getLiSubComments() {
		return liSubComments;
	}
	public void setLiSubComments(List<SubComment> liSubComments) {
		this.liSubComments = liSubComments;
	}
	@JoinColumn(name = "ID_TOUR")
	@ManyToOne
	private Tour tour;
	
	@OneToMany(mappedBy = "parentComment" , cascade = CascadeType.REMOVE)
	private List<SubComment> liSubComments = new ArrayList<>();
	
}
