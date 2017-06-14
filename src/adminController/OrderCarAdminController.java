package adminController;

import adminDAO.OrderCarDAO;

import com.opensymphony.xwork2.ActionSupport;



public class OrderCarAdminController extends ActionSupport {
	private String idOrder;
	private int stateGetMoney;
	public String getIdOrder() {
		return idOrder;
	}
	public void setIdOrder(String idOrder) {
		this.idOrder = idOrder;
	}
	public int getStateGetMoney() {
		return stateGetMoney;
	}
	public void setStateGetMoney(int stateGetMoney) {
		this.stateGetMoney = stateGetMoney;
	}
	
	public String updateState(){
		boolean flag =new OrderCarDAO().updateStateGetMoneyOrder(idOrder, stateGetMoney);
		if (flag) {
			return SUCCESS;
		}
		else {
			return ERROR;
		}
		
	}
	public String deleteOrder(){
		boolean flag =new OrderCarDAO().deleteOrder(idOrder);
		if (flag) {
			return SUCCESS;
		}
		else {
			return ERROR;
		}
		
	}
	public String cancel(){
		boolean flag =new OrderCarDAO().cancelOrderCar(idOrder);
		if (flag) {
			return SUCCESS;
		}
		else {
			return ERROR;
		}	
	}

}
