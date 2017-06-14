package adminController;

import adminDAO.OrderDAO;

import com.opensymphony.xwork2.ActionSupport;

public class OrderTourContrller extends ActionSupport{
	private String idOrder;
	int stateMoney;
	public String getIdOrder() {
		return idOrder;
	}
	public void setIdOrder(String idOrder) {
		this.idOrder = idOrder;
	}
	public int getStateMoney() {
		return stateMoney;
	}
	public void setStateMoney(int stateMoney) {
		this.stateMoney = stateMoney;
	}
	
	public String updateStateMoney(){
		boolean flag = new OrderDAO().updateStateGetMoneyOrder(idOrder, stateMoney);
		if(flag == true)
			return
					SUCCESS;
			else {
				return ERROR;
			}
	}
	public String deleteOrder(){
		boolean flag = new OrderDAO().deleteOrder(idOrder);
		if(flag == true)
			return
					SUCCESS;
			else {
				return ERROR;
			}
		
		
	}

}
