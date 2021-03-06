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
	
	@Temporal(TemporalType.DATE)
	@Column(name = "TIMEDROPOFF", nullable = false)
	private Date timeDropOff;
	
	@Temporal(TemporalType.DATE)
	private Date timeCreated;
	@Column(name = "MODEL_PAYMENT", nullable= false)
	private int modelPayment;
	
	public Date getTimeCreated() {
		return timeCreated;
	}

	public void setTimeCreated(Date timeCreated) {
		this.timeCreated = timeCreated;
	}

	public int getModelPayment() {
		return modelPayment;
	}

	public void setModelPayment(int modelPayment) {
		this.modelPayment = modelPayment;
	}

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
	
	@Column(name="QUANTITY", nullable= false)
	private int quanOrder;

	public int getQuanOrder() {
		return quanOrder;
	}

	public void setQuanOrder(int quanOrder) {
		this.quanOrder = quanOrder;
	}

	@Column(name = "PLACE_RECIEVE", nullable = false, columnDefinition = "NVARCHAR(300)")
	private String placeRecieve;
	
	@Column(name = "PLACE_RENDER" , nullable = false, columnDefinition = "NVARCHAR(300)")
	private String placeRender;
	
	@Column(name = "STATE_DRIVER" , nullable = false)
	private int stateDriver;
	
	@Column(name = "PRICE", nullable = false)
	private int price;
	@Column(name = "NOTE", columnDefinition = "NVARCHAR(500)")
	private String note;
	
	@Column(name = "STATE_GETMONEY", nullable = false)
	private int stateGetMoney;
	@ManyToOne
	private Car car;
	
	
	public int getStateGetMoney() {
		return stateGetMoney;
	}

	public void setStateGetMoney(int stateGetMoney) {
		this.stateGetMoney = stateGetMoney;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	@ManyToOne
	private User user;
	
}
