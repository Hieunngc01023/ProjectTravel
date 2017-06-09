package controller;

import java.util.Set;

import com.opensymphony.xwork2.ActionSupport;

import dao.SearchCarDAO;
import model.*;
public class SearchCarController extends ActionSupport {
	private String title;
	private String brand;
	Set<CarModel> setCar;
	
	
	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getBrand() {
		return brand;
	}


	public void setBrand(String brand) {
		this.brand = brand;
	}


	public Set<CarModel> getSetCar() {
		return setCar;
	}


	public void setSetCar(Set<CarModel> setCar) {
		this.setCar = setCar;
	}


	@Override
	public String execute() throws Exception {
		
		setCar = new SearchCarDAO().getListSearchCar(title, brand);
				if(setCar != null)
					return SUCCESS;
				else 
					return ERROR;
	}

}
