package adminController;

import com.opensymphony.xwork2.ActionSupport;

import adminDAO.DashBodDAO;
import adminModel.OrderDasbodCar;
import adminModel.OrderDashbos;

public class OrderDasBodCarController extends ActionSupport {
	private String dateFormCar;
	private String dateToCar;
	private OrderDasbodCar orderDashbodCar ;
	
	
	
	public String getDateFormCar() {
		return dateFormCar;
	}



	public void setDateFormCar(String dateFormCar) {
		this.dateFormCar = dateFormCar;
	}



	public String getDateToCar() {
		return dateToCar;
	}



	public void setDateToCar(String dateToCar) {
		this.dateToCar = dateToCar;
	}



	public OrderDasbodCar getOrderDashbodCar() {
		return orderDashbodCar;
	}



	public void setOrderDashbodCar(OrderDasbodCar orderDashbodCar) {
		this.orderDashbodCar = orderDashbodCar;
	}



	@Override
	public String execute() throws Exception {
		orderDashbodCar = new DashBodDAO().getTotalOrderdasbodCar(dateFormCar, dateToCar)	;
		return SUCCESS;
	}
}
