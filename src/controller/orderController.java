package controller;

import model.OrderModel;
import model.TourModel;

import com.opensymphony.xwork2.ActionSupport;

import dao.OrderTourDAO;

public class orderController extends ActionSupport {
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
	private OrderModel order;
	
	

	public OrderModel getOrder() {
		return order;
	}

	public void setOrder(OrderModel order) {
		this.order = order;
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
		
		if(order == null){
			order = new OrderModel();
			order.setAddress(address);
			order.setEmail(email);
			order.setFullName(fullName);
			order.setIdTourDetail(idTourDetail);
			order.setIdUser(0);
			order.setMember(member);
			order.setNote(note);
			order.setPhone(phone);
			String typePayment = checkCash;			
		}
//		
//		OrderModel order = new OrderModel();
//		order.setAddress(address);
//		order.setEmail(email);
//		order.setFullName(fullName);
//		order.setIdTourDetail(idTourDetail);
//		order.setIdUser(0);
//		order.setMember(member);
//		order.setNote(note);
//		order.setPhone(phone);
		String typePayment = checkCash;
		boolean enoughSeat = false;	
			switch (typePayment) {
			case "tienmat":
					order.setModelPayment(1);
					order.setStateGetMoney(0);
				 enoughSeat =	new OrderTourDAO().executeOrder(order);
				break;
			case "chuyenkhoan":
				order.setModelPayment(2);
				order.setStateGetMoney(0);
				 enoughSeat =	new OrderTourDAO().executeOrder(order);
				break;
			case "online":
				return "step3";
//				order.setModelPayment(3);
//				order.setStateGetMoney(1);				
//				 enoughSeat =	new OrderTourDAO().executeOrder(order);
			case "onlineReturn":
				order.setModelPayment(3);
				order.setStateGetMoney(1);				
				enoughSeat =	new OrderTourDAO().executeOrder(order);
			default:				
				break;
			}
			this.idOrder = OrderTourDAO.idOrderNew;
			this.totalPrice = OrderTourDAO.totalPrice;
			if(enoughSeat == true)
				return "success";
			
			
			return "error";
			
	}

}
