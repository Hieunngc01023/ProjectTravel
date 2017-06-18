package adminModel;

import java.util.List;

public class OrderDasbodCar {
	private long totalPrice;
	private int totalOrder;
	List<OrderCarModel> listOrderCar;
	public long getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(long totalPrice) {
		this.totalPrice = totalPrice;
	}
	public int getTotalOrder() {
		return totalOrder;
	}
	public void setTotalOrder(int totalOrder) {
		this.totalOrder = totalOrder;
	}
	public List<OrderCarModel> getListOrderCar() {
		return listOrderCar;
	}
	public void setListOrderCar(List<OrderCarModel> listOrderCar) {
		this.listOrderCar = listOrderCar;
	}
	
	

}
