package adminController;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import adminDAO.OrderCarDAO;
import adminModel.OrderCarModel;

import com.opensymphony.xwork2.ActionSupport;



public class OrderCarAdminController extends ActionSupport {
	private String idOrder;
	private int stateGetMoney;
	
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	private String keyword;
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

	public String getListOrderCar(){
		if(stateGetMoney == 3){
			List<OrderCarModel>  listOrder = new OrderCarDAO().getListOrderCar(keyword);
			try {
				ServletActionContext.getRequest().setAttribute("listTourDetail", listOrder);
			} catch (Exception e) {
				return ERROR;
			}
		}
		else if(stateGetMoney == 2){
			List<OrderCarModel>  listOrder = new OrderCarDAO().getListOrderCarbyStateGetMoney(stateGetMoney, keyword);
			try {
				ServletActionContext.getRequest().setAttribute("listTourDetail", listOrder);
			} catch (Exception e) {
				return ERROR;
			}
		}
		else if(stateGetMoney == 1){
			List<OrderCarModel>  listOrder = new OrderCarDAO().getListOrderCarbyStateGetMoney(stateGetMoney, keyword);
			try {
				ServletActionContext.getRequest().setAttribute("listTourDetail", listOrder);
			} catch (Exception e) {
				return ERROR;
			}
		}
		else if(stateGetMoney == 0){
			List<OrderCarModel>  listOrder = new OrderCarDAO().getListOrderCarbyStateGetMoney(stateGetMoney, keyword);
			try {
				ServletActionContext.getRequest().setAttribute("listTourDetail", listOrder);
			} catch (Exception e) {
				return ERROR;
			}
		}
		return SUCCESS;
		
		
	}
}
