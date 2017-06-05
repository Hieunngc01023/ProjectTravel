package controller;
import java.util.Set;

import model .*;

import com.opensymphony.xwork2.ActionSupport;

import dao.SerachTourDAO;

public class tourSearchController extends ActionSupport{
	private String pickUpPlace;
	private String dropOffPlace;
	private String datepicker8;
	private int quantityDate;
	private Set<TourModel> setTours;
	
	public String getPickUpPlace() {
		return pickUpPlace;
	}


	public void setPickUpPlace(String pickUpPlace) {
		this.pickUpPlace = pickUpPlace;
	}


	public String getDropOffPlace() {
		return dropOffPlace;
	}


	public void setDropOffPlace(String dropOffPlace) {
		this.dropOffPlace = dropOffPlace;
	}


	public String getDatepicker8() {
		return datepicker8;
	}


	public void setDatepicker8(String datepicker8) {
		this.datepicker8 = datepicker8;
	}


	public Set<TourModel> getSetTours() {
		return setTours;
	}


	public void setSetTours(Set<TourModel> setTours) {
		this.setTours = setTours;
	}
	public int getQuantityDate() {
		return quantityDate;
	}
	public void setQuantityDate(int quantityDate) {
		this.quantityDate = quantityDate;
	}
	@Override
	public String execute() throws Exception {
		
		setTours =	new SerachTourDAO().getListSearchTour(pickUpPlace, dropOffPlace, datepicker8, quantityDate);
		if(setTours != null)
		return "success";
		else
			return "error";
	}
}
