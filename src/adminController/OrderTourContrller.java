package adminController;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import adminDAO.OrderDAO;
import adminModel.OrderModel;

import com.opensymphony.xwork2.ActionSupport;

public class OrderTourContrller extends ActionSupport{
	private String idOrder;
	int stateMoney;
	
	private String keyword;
	
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
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
	public String getListORderTourAdmin(){
		if(stateMoney == 2){
			List<OrderModel> listOrder = new OrderDAO().getAllOrders(keyword);
			try {
				ServletActionContext.getRequest().setAttribute("listTourDetail", listOrder);
			} catch (Exception e) {
				return ERROR;
			}
		}
		else if(stateMoney  == 1){
			List<OrderModel> listOrder = new OrderDAO().getListOrderbyState(stateMoney, keyword);
			try {
				ServletActionContext.getRequest().setAttribute("listTourDetail", listOrder);
			} catch (Exception e) {
				return ERROR;
			}
		}
		else if(stateMoney == 0){
			List<OrderModel> listOrder = new OrderDAO().getListOrderbyState(stateMoney, keyword);
			try {
				ServletActionContext.getRequest().setAttribute("listTourDetail", listOrder);
			} catch (Exception e) {
				return ERROR;
			}
		}
		return SUCCESS;
		
		
	}

}
