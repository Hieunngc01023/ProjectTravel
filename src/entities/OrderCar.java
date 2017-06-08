package entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
@Cache(usage= CacheConcurrencyStrategy.READ_WRITE)
@Table(name = "ORDER_CAR")
@Entity
public class OrderCar {
	@Column(name = "ID")
	@Id
	private String idOrder;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "TIMEPICKUP", nullable = false)
	private Date timePickUp;
	
	@Column(name = "TIMEDROPOFF", nullable = false)
	private Date timeDropOff;
	
	public String getIdOrder() {
		return idOrder;
	}

	public void setIdOrder(String idOrder) {
		this.idOrder = idOrder;
	}

	public Date getTimePickUp() {
		return timePickUp;
	}

	public void setTimePickUp(Date timePickUp) {
		this.timePickUp = timePickUp;
	}

	public Date getTimeDropOff() {
		return timeDropOff;
	}

	public void setTimeDropOff(Date timeDropOff) {
		this.timeDropOff = timeDropOff;
	}

	public String getPlaceRecieve() {
		return placeRecieve;
	}

	public void setPlaceRecieve(String placeRecieve) {
		this.placeRecieve = placeRecieve;
	}

	public String getPlaceRender() {
		return placeRender;
	}

	public void setPlaceRender(String placeRender) {
		this.placeRender = placeRender;
	}

	public int getStateDriver() {
		return stateDriver;
	}

	public void setStateDriver(int stateDriver) {
		this.stateDriver = stateDriver;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Car getCar() {
		return car;
	}

	public void setCar(Car car) {
		this.car = car;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Column(name = "PLACE_RECIEVE", nullable = false)
	private String placeRecieve;
	
	@Column(name = "PLACE_RENDER" , nullable = false)
	private String placeRender;
	
	@Column(name = "STATE_DRIVER" , nullable = false)
	private int stateDriver;
	
	@Column(name = "PRICE", nullable = false)
	private int price;
	@Column(name = "NOTE")
	private String note;
	
	@ManyToOne
	private Car car;
	
	
	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	@ManyToOne
	private User user;
	
}
