package adminController;

import com.opensymphony.xwork2.ActionSupport;

import adminDAO.DashBodDAO;
import adminModel.*;
public class OrderDasbodController extends ActionSupport{
	
	private String dateForm;
	private String dateTo;
	private OrderDashbos orderDashbod ;
	public String getDateForm() {
		return dateForm;
	}
	public void setDateForm(String dateForm) {
		this.dateForm = dateForm;
	}
	public String getDateTo() {
		return dateTo;
	}
	public void setDateTo(String dateTo) {
		this.dateTo = dateTo;
	}
	public OrderDashbos getOrderDashbod() {
		return orderDashbod;
	}
	public void setOrderDashbod(OrderDashbos orderDashbod) {
		this.orderDashbod = orderDashbod;
	}
	@Override
	public String execute() throws Exception {
		orderDashbod = new DashBodDAO().getTotalOrderbyTime(dateForm, dateTo);		
		return SUCCESS;
	}
	
	
}
