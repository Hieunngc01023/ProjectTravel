package controller;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class OrderCarAction extends ActionSupport implements SessionAware{
	private Map<String, Object> sessionOrderCar;
	private String email;
	private String address;
	private String fullName;
	private int phone;
	private String timePickUp;
	private String tiemDropOff;
	private String placeRecieve;
	private String placeRender;
	private int stateDriver;
	private int idCar;
	private String idOrder;
	private int totalPrice;
	
	
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

	public int getIdCar() {
		return idCar;
	}

	public void setIdCar(int idCar) {
		this.idCar = idCar;
	}

	public Map<String, Object> getSessionOrderCar() {
		return sessionOrderCar;
	}

	public void setSessionOrderCar(Map<String, Object> sessionOrderCar) {
		this.sessionOrderCar = sessionOrderCar;
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

	@Override
	public void setSession(Map<String, Object> arg0) {
		
		this.sessionOrderCar = arg0;
	}
	
	@Override
	public String execute() throws Exception {
			

		return super.execute();
	}
	

}
