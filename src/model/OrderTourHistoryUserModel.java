package model;

import java.util.Date;

public class OrderTourHistoryUserModel {
	private String idOrder;
	private Date timeBegin;
	private int quantityDate;
	private String placePickup;
	private int quantityOrder;
	private int totalPrice;
	private String title;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getIdOrder() {
		return idOrder;
	}
	public void setIdOrder(String idOrder) {
		this.idOrder = idOrder;
	}
	public Date getTimeBegin() {
		return timeBegin;
	}
	public void setTimeBegin(Date timeBegin) {
		this.timeBegin = timeBegin;
	}
	public int getQuantityDate() {
		return quantityDate;
	}
	public void setQuantityDate(int quantityDate) {
		this.quantityDate = quantityDate;
	}
	public String getPlacePickup() {
		return placePickup;
	}
	public void setPlacePickup(String placePickup) {
		this.placePickup = placePickup;
	}
	public int getQuantityOrder() {
		return quantityOrder;
	}
	public void setQuantityOrder(int quantityOrder) {
		this.quantityOrder = quantityOrder;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	

}
