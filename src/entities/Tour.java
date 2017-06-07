package entities;

import java.util.ArrayList;
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

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
@Table(name = "TOUR")
@Entity
public class Tour {
	@Id
	@Column(name="ID_TOUR")
	private String idTour;
	@Column(name="title", nullable= false)
	private String title;
	
	@Column(name= "PLACE_PICKUP", nullable = false)
	private String placePickUp;
	@Column(name = "PLACE_DROP", nullable= false)
	private String placeDropOff;
	@Column(name= "IMAGE_TITLE", nullable = false)
	private String imageTitle;
	
	public List<SubComment> getListSubComments() {
		return listSubComments;
	}

	public void setListSubComments(List<SubComment> listSubComments) {
		this.listSubComments = listSubComments;
	}

	@Column(name= "CONTENT", nullable = false)
	@Lob
	private String content;
	public List<Comment> getListComments() {
		return listComments;
	}

	public void setListComments(List<Comment> listComments) {
		this.listComments = listComments;
	}

	@OneToMany(mappedBy = "tour")
	private List<TourDetail> listTourDetails = new ArrayList<>();
	@OneToMany(mappedBy = "tour")
	private List<Comment> listComments = new ArrayList<>();
	
	@OneToMany(mappedBy = "tour")
	private List<SubComment> listSubComments = new ArrayList<>();
	
	
	public List<TourDetail> getListTourDetails() {
		return listTourDetails;
	}

	public void setListTourDetails(List<TourDetail> listTourDetails) {
		this.listTourDetails = listTourDetails;
	}

	public String getIdTour() {
		return idTour;
	}

	public void setIdTour(String idTour) {
		this.idTour = idTour;
	}

	public String getPlaceDropOff() {
		return placeDropOff;
	}

	public void setPlaceDropOff(String placeDropOff) {
		this.placeDropOff = placeDropOff;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPlacePickUp() {
		return placePickUp;
	}

	public void setPlacePickUp(String placePickUp) {
		this.placePickUp = placePickUp;
	}

	public String getImageTitle() {
		return imageTitle;
	}

	public void setImageTitle(String imageTitle) {
		this.imageTitle = imageTitle;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	@JoinColumn(name="ID_CATEGORY")
	@ManyToOne
	Category category;



	
	
}
