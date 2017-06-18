package controller;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import model.OrderModel;
import model.TourModel;

import com.opensymphony.xwork2.ActionSupport;

import dao.OrderTourDAO;

public class orderController extends ActionSupport implements SessionAware {
	private Map<String, Object> sessionOrder;
	private String checkCash;
	private String fullName;
	private int phone;
	private int member;
	private String email;
	private String address;
	private String note;
	private String idTourDetail;
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

	public String getIdTourDetail() {
		return idTourDetail;
	}

	public void setIdTourDetail(String idTourDetail) {
		this.idTourDetail = idTourDetail;
	}

	public String getCheckCash() {
		return checkCash;
	}

	public void setCheckCash(String checkCash) {
		this.checkCash = checkCash;
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

	@Override
	public String execute() throws Exception {
		


			OrderModel order = new OrderModel();
			order.setAddress(address);
			order.setEmail(email);
			order.setFullName(fullName);
			order.setIdTourDetail(idTourDetail);
			order.setIdUser(0);
			order.setMember(member);
			order.setNote(note);
			order.setPhone(phone);
		

		String typePayment = checkCash;
		boolean enoughSeat = false;	
			switch (typePayment) {
			case "tienmat":
				if(sessionOrder.get("order") != null)
					sessionOrder.remove("order");
					order.setModelPayment(1);
					order.setStateGetMoney(0);
				 enoughSeat =	new OrderTourDAO().executeOrder(order);
				break;
			case "chuyenkhoan":
				if(sessionOrder.get("order") != null)
					sessionOrder.remove("order");
				order.setModelPayment(2);
				order.setStateGetMoney(0);
				 enoughSeat =	new OrderTourDAO().executeOrder(order);
				break;
			case "online":
				order.setModelPayment(3);
				order.setStateGetMoney(1);	
				order.setTotalPrice(new OrderTourDAO().getPriceofStep2(idTourDetail, member));
				sessionOrder.put("order", order);				
				return "step3";	
				
//				order.setModelPayment(3);
//				order.setStateGetMoney(1);				
//				 enoughSeat =	new OrderTourDAO().executeOrder(order);
			case "onlineReturn":
				OrderModel or = (OrderModel) sessionOrder.get("order");
			
				or.setModelPayment(3);
				or.setStateGetMoney(1);					
				enoughSeat =	new OrderTourDAO().executeOrder(or);
				or.setIdOrder(OrderTourDAO.idOrderNew);
				or.setTotalPrice(OrderTourDAO.totalPrice);
				sessionOrder.put("order", or);
				break;
			}
			this.idOrder = OrderTourDAO.idOrderNew;
			this.totalPrice = OrderTourDAO.totalPrice;
			if(enoughSeat == true)
				return "success";
			return "error";
	}

	@Override
	public void setSession(Map<String, Object> arg0) {

		this.sessionOrder = arg0;
	}

}
