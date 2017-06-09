package model;

public class OrderModel {
	private String idOrder;
	private int totalPrice;
	private  int stateGetMoney;
	private String fullName;
	private int phone;
	private int member;
	
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
	private String email;
	private String address;
	private String note;
	private String idTourDetail;
	private int idUser;
	private int modelPayment;
	public int getModelPayment() {
		return modelPayment;
	}
	public void setModelPayment(int modelPayment) {
		this.modelPayment = modelPayment;
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
	public String getIdTourDetail() {
		return idTourDetail;
	}
	public void setIdTourDetail(String idTourDetail) {
		this.idTourDetail = idTourDetail;
	}
	public int getIdUser() {
		return idUser;
	}
	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	
	

}
