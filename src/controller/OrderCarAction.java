package controller;
import dao.*;

import java.util.Map;

import model.OrderCarModel;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import entities.Order;

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
	private String note;
	private String idOrder;
	private int priceCar;
	public int getPriceCar() {
		return priceCar;
	}

	public void setPriceCar(int priceCar) {
		this.priceCar = priceCar;
	}

	private int quantityRentCar;
	private String checkCash;
	public String getNote() {
		return note;
	}

	public int getQuantityRentCar() {
		return quantityRentCar;
	}

	public void setQuantityRentCar(int quantityRentCar) {
		this.quantityRentCar = quantityRentCar;
	}

	public String getCheckCash() {
		return checkCash;
	}

	public void setCheckCash(String checkCash) {
		this.checkCash = checkCash;
	}

	public void setNote(String note) {
		this.note = note;
	}

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
			OrderCarModel order = new OrderCarModel();
			order.setAddress(address);
			order.setEmail(email);
			order.setFullName(fullName);
			order.setIdCar(idCar);
			order.setNote(note);
			order.setPhone(phone);
			order.setTiemDropOff(tiemDropOff);
			order.setTimePickUp(timePickUp);
			order.setPlaceRecieve(placeRecieve);
			order.setPlaceRender(placeRender);
			order.setStateDriver(stateDriver);
			order.setQuantityRentCar(1);
			String typePayment = checkCash;
			
			boolean enoughCar = false;
			
			switch (typePayment) {
			case "tienmat":
				if(sessionOrderCar.get("orderCar") != null)
					sessionOrderCar.remove("orderCar");
				order.setModelPayment(1);
				order.setStateGetMoney(0);
				enoughCar = new OrderCarDAO().executeCarOrder(order);				
				break;
			case "chuyenkhoan":
				if(sessionOrderCar.get("orderCar") != null)
					sessionOrderCar.remove("orderCar");
				order.setModelPayment(2);
				order.setStateGetMoney(0);
				enoughCar = new OrderCarDAO().executeCarOrder(order);	
				break;
			case "online":			
				order.setModelPayment(3);
				order.setStateGetMoney(1);
				order.setTotalPrice(new OrderCarDAO().getPrice(order.getTimePickUp(), order.getTiemDropOff(), order.getPlaceRecieve(), order.getPlaceRender(), order.getStateDriver(), priceCar));
				sessionOrderCar.put("orderCar", order);				
				return "step3";
			case "onlineReturn" :
				OrderCarModel orderCar = (OrderCarModel) sessionOrderCar.get("orderCar");
				orderCar.setModelPayment(3);
				orderCar.setStateGetMoney(1);	
				enoughCar =  new OrderCarDAO().executeCarOrder(orderCar);
				orderCar.setIdOrder(OrderCarDAO.idOrderNew);
				orderCar.setTotalPrice(OrderCarDAO.totalPrice);
				sessionOrderCar.put("orderCar", orderCar);
				break;
			}
			this.idOrder = OrderCarDAO.idOrderNew;
			this.totalPrice = OrderCarDAO.totalPrice;
			if(enoughCar == true)
				return SUCCESS;
		return ERROR;
	}
	

}
