package model;

public class OrderCarModel {
	private String idOrder;
	private int totalPrice;
	private  int stateGetMoney;
	private String fullName;
	private int phone;
	private int member;	
	private String email;
	private String address;
	private String note;
	private int idCar;
	private int modelPayment;
	private String timePickUp;
	private String tiemDropOff;
	private String placeRecieve;
	private int quantityRentCar;
	
	
	
	public int getQuantityRentCar() {
		return quantityRentCar;
	}
	public void setQuantityRentCar(int quantityRentCar) {
		this.quantityRentCar = quantityRentCar;
	}
	public String getIdOrder() {
		return idOrder;
	}
	public void setIdOrder(String idOrder) {
		this.idOrder = idOrder;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public int getStateGetMoney() {
		return stateGetMoney;
	}
	public void setStateGetMoney(int stateGetMoney) {
		this.stateGetMoney = stateGetMoney;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public int getMember() {
		return member;
	}
	public void setMember(int member) {
		this.member = member;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public int getIdCar() {
		return idCar;
	}
	public void setIdCar(int idCar) {
		this.idCar = idCar;
	}
	public int getModelPayment() {
		return modelPayment;
	}
	public void setModelPayment(int modelPayment) {
		this.modelPayment = modelPayment;
	}
	public String getTimePickUp() {
		return timePickUp;
	}
	public void setTimePickUp(String timePickUp) {
		this.timePickUp = timePickUp;
	}
	public String getTiemDropOff() {
		return tiemDropOff;
	}
	public void setTiemDropOff(String tiemDropOff) {
		this.tiemDropOff = tiemDropOff;
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
	private String placeRender;
	private int stateDriver;
	
	
	
}
