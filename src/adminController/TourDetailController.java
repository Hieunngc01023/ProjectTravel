package adminController;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import adminDAO.TourDAO;
import adminModel.TourModel;

import com.opensymphony.xwork2.ActionSupport;

public class TourDetailController extends ActionSupport {
	private int stateTour;
	
	private String idTour;
	private int seat;
	private String timeBegin;
	private String timeEnd;
	private int important;
	private int realPrice;
	private int virtualPrice;
	private int sale1;
	private int sale2;
	private String idTourDeTail;
	
	private String keyword;
	
	
	

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getIdTourDeTail() {
		return idTourDeTail;
	}

	public void setIdTourDeTail(String idTourDeTail) {
		this.idTourDeTail = idTourDeTail;
	}

	public String getIdTour() {
		return idTour;
	}

	public void setIdTour(String idTour) {
		this.idTour = idTour;
	}

	public int getSeat() {
		return seat;
	}

	public void setSeat(int seat) {
		this.seat = seat;
	}

	public String getTimeBegin() {
		return timeBegin;
	}

	public void setTimeBegin(String timeBegin) {
		this.timeBegin = timeBegin;
	}

	public String getTimeEnd() {
		return timeEnd;
	}

	public void setTimeEnd(String timeEnd) {
		this.timeEnd = timeEnd;
	}

	public int getImportant() {
		return important;
	}

	public void setImportant(int important) {
		this.important = important;
	}

	public int getRealPrice() {
		return realPrice;
	}

	public void setRealPrice(int realPrice) {
		this.realPrice = realPrice;
	}

	public int getVirtualPrice() {
		return virtualPrice;
	}

	public void setVirtualPrice(int virtualPrice) {
		this.virtualPrice = virtualPrice;
	}

	public int getSale1() {
		return sale1;
	}

	public void setSale1(int sale1) {
		this.sale1 = sale1;
	}

	public int getSale2() {
		return sale2;
	}

	public void setSale2(int sale2) {
		this.sale2 = sale2;
	}

	public int getStateTour() {
		return stateTour;
	}

	public void setStateTour(int stateTour) {
		this.stateTour = stateTour;
	}
	
	public String getListTour(){
		if(stateTour == 0){
			List<TourModel> listTourModel = new TourDAO().getAllTourDetailsHistory(keyword);
			try {
				ServletActionContext.getRequest().setAttribute("listTourDetail", listTourModel);
			} catch (Exception e) {
				return ERROR;
			}
			
		}
		else if(stateTour == 1){
			List<TourModel> listTourModel = new TourDAO().getListsToursDetailsbyStateState(1, keyword);
			try {
				ServletActionContext.getRequest().setAttribute("listTourDetail", listTourModel);
			} catch (Exception e) {
				return ERROR;
			}
		}
		else if(stateTour == 2){
			List<TourModel> listTourModel = new TourDAO().getListsToursDetailsbyStateState(2, keyword);
			try {
				ServletActionContext.getRequest().setAttribute("listTourDetail", listTourModel);
			} catch (Exception e) {
				return ERROR;
			}
		}
		else{
			List<TourModel> listTourModel = new TourDAO().getListsToursDetailsbyStateState(3, keyword);
			try {
				ServletActionContext.getRequest().setAttribute("listTourDetail", listTourModel);
			} catch (Exception e) {
				return ERROR;
			}
		}
		return SUCCESS;
		
	}
	
	public String addNewTourDetails(){
		TourModel tourModel = new TourModel();
		tourModel.setIdTour(idTour);
		tourModel.setIMPORTANT(important);
		tourModel.setQuantitySeat(seat);
		tourModel.setRealPrice(realPrice);
		tourModel.setSale1(sale1);
		tourModel.setSale2(sale2);
		tourModel.setTimeBegin(timeBegin);
		tourModel.setTimeOff(timeEnd);
		tourModel.setVirtualPrice(virtualPrice);
		boolean flag = new TourDAO().addNewTourDetails(tourModel);
		if(flag == true)
			return SUCCESS;
		else
			return ERROR;
		
	}
	public String updateTourDetails(){
		TourModel tourModel = new TourModel();
		tourModel.setIdTour(idTour);
		tourModel.setIMPORTANT(important);
		tourModel.setQuantitySeat(seat);
		tourModel.setRealPrice(realPrice);
		tourModel.setSale1(sale1);
		tourModel.setSale2(sale2);
		tourModel.setTimeBegin(timeBegin);
		tourModel.setTimeOff(timeEnd);
		tourModel.setVirtualPrice(virtualPrice);
		tourModel.setIdTourDeTail(idTourDeTail);
		tourModel.setStateTour(stateTour);
		boolean flag = new TourDAO().UpdateTourDetail(tourModel);
		if(flag == true)
			return SUCCESS;
		else
			return ERROR;
	}

}
