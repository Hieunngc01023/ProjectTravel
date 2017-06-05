package entities;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
@Cache(usage= CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
@Table(name= "TOUR_DETAIL")
@Entity
public class TourDetail {
	@Id
	private String idTourDeTail;
	
	@OneToMany(mappedBy = "tour")
	private List<Order> listOrder = new ArrayList<>();
	
	@JoinColumn(name="ID_TOUR")
	@ManyToOne
	private Tour tour;
	
	public List<Order> getListOrder() {
		return listOrder;
	}
	public void setListOrder(List<Order> listOrder) {
		this.listOrder = listOrder;
	}
	@Temporal(TemporalType.DATE)
	@Column(name = "TIME_BEGIN")
	private Date timeBegin;
	@Temporal(TemporalType.DATE)
	@Column(name= "TIME_OFF")
	private  Date timeOff;
	@Column(name = "IMPORTANT")
	private  int IMPORTANT;
	
	@Column(name = "REAl_PRICE", nullable = false )
	private int realPrice;
	
	@Column(name= "VIRTUAL_PRICE")
	private int virtualPrice;
	@Column(name = "SEAT")
	private int  quantitySeat;
	
	@Column(name= "SALE1")
	private int sale1;
	
	@Column(name= "SALE2")
	private int sale2;
	
	
	@Column(name = "STATE_TOUR")
	private int stateTour;
	
	public String getIdTourDeTail() {
		return idTourDeTail;
	}
	public int getStateTour() {
		return stateTour;
	}
	public void setStateTour(int stateTour) {
		this.stateTour = stateTour;
	}
	public void setIdTourDeTail(String idTourDeTail) {
		this.idTourDeTail = idTourDeTail;
	}
	public Tour getTour() {
		return tour;
	}
	public void setTour(Tour tour) {
		this.tour = tour;
	}
	public Date getTimeBegin() {
		return timeBegin;
	}
	public void setTimeBegin(Date timeBegin) {
		this.timeBegin = timeBegin;
	}
	public Date getTimeOff() {
		return timeOff;
	}
	public void setTimeOff(Date timeOff) {
		this.timeOff = timeOff;
	}
	public int getIMPORTANT() {
		return IMPORTANT;
	}
	public void setIMPORTANT(int iMPORTANT) {
		IMPORTANT = iMPORTANT;
	}
	public int getRealPrice() {
		return realPrice;
	}
	public void setRealPrice(int realPrice) {
		this.realPrice = realPrice;
	}
	public int getVirtualPrice() {
		return virtualPrice;
	}
	public void setVirtualPrice(int virtualPrice) {
		this.virtualPrice = virtualPrice;
	}
	public int getQuantitySeat() {
		return quantitySeat;
	}
	public void setQuantitySeat(int quantitySeat) {
		this.quantitySeat = quantitySeat;
	}
	public int getSale1() {
		return sale1;
	}
	public void setSale1(int sale1) {
		this.sale1 = sale1;
	}
	public int getSale2() {
		return sale2;
	}
	public void setSale2(int sale2) {
		this.sale2 = sale2;
	} 
}
