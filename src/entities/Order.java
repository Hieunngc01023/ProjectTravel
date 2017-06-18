package entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
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
@Table(name="ORDER_TOUR")
@Entity
public class Order {
	@Column(name= "ID_ORDER")
	@Id
	private String idOrder;
	@Column(name="PRICE", nullable= false)
	private int price;
	@Column(name="QUANTITY", nullable= false)
	private int quanOrder;
	@Column(name="NOTE", nullable = false, columnDefinition = "NVARCHAR(500)")
	private String note;
	

	
	@Temporal(TemporalType.DATE)
	private Date timeCreated;
	@Column(name = "MODEL_PAYMENT", nullable= false)
	private int modelPayment;
	
	@JoinColumn(name="ID_TourDetail")
	@ManyToOne
	private TourDetail tour ;
	@JoinColumn(name="ID_USER")
	@ManyToOne
	private User user;
	@Column(name= "STATE_GET_MONEY", nullable = false)
	private int stateMoney;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Date getTimeCreated() {
		return timeCreated;
	}
	public void setTimeCreated(Date timeCreated) {
		this.timeCreated = timeCreated;
	}
	public String getIdOrder() {
		return idOrder;
	}
	public void setIdOrder(String idOrder) {
		this.idOrder = idOrder;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuanOrder() {
		return quanOrder;
	}
	public void setQuanOrder(int quanOrder) {
		this.quanOrder = quanOrder;
	}
	public String getNote() {
		return note;
	}
	public int getStateMoney() {
		return stateMoney;
	}
	public void setStateMoney(int stateMoney) {
		this.stateMoney = stateMoney;
	}
	public void setNote(String note) {
		this.note = note;
	}

	public int getModelPayment() {
		return modelPayment;
	}
	public void setModelPayment(int modelPayment) {
		this.modelPayment = modelPayment;
	}
	public TourDetail getTour() {
		return tour;
	}
	public void setTour(TourDetail tour) {
		this.tour = tour;
	}
}
