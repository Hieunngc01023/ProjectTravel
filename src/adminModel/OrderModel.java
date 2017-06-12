package adminModel;

import java.util.Date;

import entities.User;

public class OrderModel {
	private String idOrder;
	private int price;
	private int quanOrder;
	private String note;
	private String timeCreated;
	private String userName;
	private int userPhone;
	private int modelPayment;
	public int getModelPayment() {
		return modelPayment;
	}
	public void setModelPayment(int modelPayment) {
		this.modelPayment = modelPayment;
	}
	private int stateMoney;
	private String tourName;
	
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
	public void setNote(String note) {
		this.note = note;
	}
	public String getTimeCreated() {
		return timeCreated;
	}
	public void setTimeCreated(String timeCreated) {
		this.timeCreated = timeCreated;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(int userPhone) {
		this.userPhone = userPhone;
	}
	public int getStateMoney() {
		return stateMoney;
	}
	public void setStateMoney(int stateMoney) {
		this.stateMoney = stateMoney;
	}
	public String getTourName() {
		return tourName;
	}
	public void setTourName(String tourName) {
		this.tourName = tourName;
	}
	

}
