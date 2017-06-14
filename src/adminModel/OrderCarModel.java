package adminModel;

import java.util.Date;

public class OrderCarModel {
	private String idOrder;
	private String timePickUp;
	private String timeDropOff;
	private String timeCreated;
	private int modelPayment;
	private String placeRecieve;
	private String placeRender;
	private int stateDriver;
	private int price;
	private String note;
	private int stateGetMoney;
	private String nameCar;
	private String nameUser;
	public String getNameUser() {
		return nameUser;
	}
	public void setNameUser(String nameUser) {
		this.nameUser = nameUser;
	}
	public String getNameCar() {
		return nameCar;
	}
	public void setNameCar(String nameCar) {
		this.nameCar = nameCar;
	}
	public String getIdOrder() {
		return idOrder;
	}
	public void setIdOrder(String idOrder) {
		this.idOrder = idOrder;
	}
	public String getTimePickUp() {
		return timePickUp;
	}
	public void setTimePickUp(String timePickUp) {
		this.timePickUp = timePickUp;
	}
	public String getTimeDropOff() {
		return timeDropOff;
	}
	public void setTimeDropOff(String timeDropOff) {
		this.timeDropOff = timeDropOff;
	}
	public String getTimeCreated() {
		return timeCreated;
	}
	public void setTimeCreated(String timeCreated) {
		this.timeCreated = timeCreated;
	}
	public int getModelPayment() {
		return modelPayment;
	}
	public void setModelPayment(int modelPayment) {
		this.modelPayment = modelPayment;
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
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public int getStateGetMoney() {
		return stateGetMoney;
	}
	public void setStateGetMoney(int stateGetMoney) {
		this.stateGetMoney = stateGetMoney;
	}
	@Override
	public String toString() {
		return "OrderCarModel [idOrder=" + idOrder + ", timePickUp="
				+ timePickUp + ", timeDropOff=" + timeDropOff
				+ ", timeCreated=" + timeCreated + ", modelPayment="
				+ modelPayment + ", placeRecieve=" + placeRecieve
				+ ", placeRender=" + placeRender + ", stateDriver="
				+ stateDriver + ", price=" + price + ", note=" + note
				+ ", stateGetMoney=" + stateGetMoney + ", nameCar=" + nameCar
				+ "]";
	}
	
	
	
	

}
