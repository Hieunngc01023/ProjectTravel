package adminModel;

import java.util.List;

public class OrderDashbos {
	private long totalPrice;
	private int totalOrder;
	List<OrderModel> listOrderModel;
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
	public List<OrderModel> getListOrderModel() {
		return listOrderModel;
	}
	public void setListOrderModel(List<OrderModel> listOrderModel) {
		this.listOrderModel = listOrderModel;
	}
	
}
